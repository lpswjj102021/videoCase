<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch">
      <el-form-item label="名称" prop="vodName">
        <el-input
          v-model="queryParams.vodName"
          placeholder="请输入名称"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="类别" prop="typeId">
        <el-select v-model="queryParams.typeId" placeholder="请选择类别" clearable>
          <el-option
            v-for="dict in typeList" :key="dict.typeId" :label="dict.typeName" :value="dict.typeId"/>
        </el-select>
      </el-form-item>
      <el-form-item label="视频上传日期" prop="vodCreateTime">
        <el-date-picker clearable
          v-model="queryParams.vodCreateTime"
          type="date"
          value-format="yyyy-MM-dd"
          placeholder="请选择视频上传日期">
        </el-date-picker>
      </el-form-item>
      <el-form-item label="地区信息" prop="vodArea">
        <el-input
          v-model="queryParams.vodArea"
          placeholder="请输入地区信息"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="视频主演" prop="vodActor">
        <el-input
          v-model="queryParams.vodActor"
          placeholder="请输入视频主演"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="el-icon-plus"
          size="mini"
          @click="handleAdd"
          v-hasPermi="['system:video:add']"
        >新增</el-button>
      </el-col>
      <!--
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="el-icon-edit"
          size="mini"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['system:video:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="el-icon-delete"
          size="mini"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['system:video:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['system:video:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>-->
    </el-row>

    <el-table v-loading="loading" :data="videoList" @selection-change="handleSelectionChange">
      <el-table-column label="预览图" width="120">
        <template slot-scope="scope">
          <el-image v-if="scope.row.vodImg" :src="scope.row.vodImg" fit="cover" style="width: 100px; height: 60px;border-radius: 8px;" />
          <span v-else style="font-size: 12px;">暂无预览图</span>
        </template>
      </el-table-column>
      <el-table-column label="名称"  prop="vodName" width="180" show-overflow-tooltip />
      <el-table-column label="类别名称"  prop="typeName" width="110">
        <template slot-scope="scope">
          <el-tag type="success">{{scope.row.typeName}}</el-tag>
        </template>
      </el-table-column>
      <el-table-column label="视频上传日期"  prop="vodCreateTime" width="130">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.vodCreateTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="备注信息"  prop="vodRemarks" width="130" show-overflow-tooltip />
      <el-table-column label="播放格式"  prop="vodPlayForm" width="100" />
      <el-table-column label="播放时长"  prop="vodTimes" width="110">
        <template slot-scope="scope">
          <span>{{scope.row.vodTimes}} <a style="font-size: 12px; color: #999;"> 分钟</a></span>
        </template>
      </el-table-column>
      <el-table-column label="地区信息"  prop="vodArea" width="150" show-overflow-tooltip />
      <el-table-column label="视频主演"  prop="vodActor" width="120" show-overflow-tooltip />
      <el-table-column label="视频播放地址"  prop="vodUrl" width="250" show-overflow-tooltip>
        <template slot-scope="scope">
          <a :href="scope.row.vodUrl" target="_blank">{{scope.row.vodUrl}}</a>
        </template>
      </el-table-column>
      <el-table-column label="状态"  prop="status" width="70">
        <template slot-scope="scope">
          <el-tag :type="scope.row.status === 1 ? 'success':'danger' ">{{scope.row.status === 1 ? '正常':'停用'}}</el-tag>
        </template>
      </el-table-column>
      <el-table-column label="操作" width="160" align="center" fixed="right">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['system:video:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['system:video:remove']"
          >删除</el-button>
        </template>
      </el-table-column>
    </el-table>

    <pagination
      v-show="total>0"
      :total="total"
      :page.sync="queryParams.pageNum"
      :limit.sync="queryParams.pageSize"
      @pagination="getList"
    />

    <!-- 添加或修改视频信息对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="800px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="110px">
        <el-row>
          <el-col :span="12">
            <el-form-item label="名称" prop="vodName">
              <el-input v-model="form.vodName" placeholder="请输入名称" />
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="拼音名称" prop="vodEn">
              <el-input v-model="form.vodEn" placeholder="请输入拼音名称" />
            </el-form-item>
          </el-col>
        </el-row>
        <el-row>
          <el-col :span="12">
            <el-form-item label="类别" prop="typeId">
              <el-select v-model="form.typeId" placeholder="请选择类别" @change="typeChange">
                <el-option v-for="dict in typeList" :key="dict.typeId" :label="dict.typeName" :value="dict.typeId" />
              </el-select>
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="上传日期" prop="vodCreateTime">
              <el-date-picker clearable
                              v-model="form.vodCreateTime"
                              type="date"
                              value-format="yyyy-MM-dd"
                              placeholder="请选择视频上传日期">
              </el-date-picker>
            </el-form-item>
          </el-col>
        </el-row>

        <el-row>
          <el-col :span="24">
            <el-form-item label="背景图片" prop="vodImg">
              <el-upload
                class="avatar-uploader"
                name="avatarfile"
                :action="uploadSet.url"
                :headers="uploadSet.headers"
                :show-file-list="false"
                :on-success="handleAvatarSuccess"
                :before-upload="beforeAvatarUpload">
                <img v-if="imageUrl" :src="imageUrl" class="avatar">
                <img v-else-if="form.vodImg" :src="form.vodImg" class="avatar">
                <i v-else class="el-icon-plus avatar-uploader-icon"></i>
              </el-upload>
            </el-form-item>
          </el-col>
        </el-row>

        <el-row>
          <el-col :span="12">
            <el-form-item label="播放格式" prop="vodPlayForm">
              <el-select clearable v-model="form.vodPlayForm" placeholder="请选择视频播放格式">
                <el-option label="m3u8" value="m3u8" />
                <el-option label="mp4" value="mp4" />
                <el-option label="avi" value="avi" />
              </el-select>
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="播放时长" prop="vodTimes">
              <el-input v-model="form.vodTimes" placeholder="请输入视频播放时长" />
            </el-form-item>
          </el-col>
        </el-row>

        <el-row>
          <el-col :span="12">
            <el-form-item label="主演" prop="vodActor">
              <el-input v-model="form.vodActor" placeholder="请输入视频主演" />
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="播放地址" prop="vodUrl">
              <el-input v-model="form.vodUrl" placeholder="请输入视频播放地址" />
            </el-form-item>
          </el-col>
        </el-row>

        <el-row>
          <el-col :span="24">
            <el-form-item label="地区信息" prop="vodArea">
              <el-input v-model="form.vodArea" placeholder="请输入地区信息" />
            </el-form-item>
          </el-col>
        </el-row>

        <el-row>
          <el-col :span="24">
            <el-form-item label="备注信息" prop="vodRemarks">
              <el-input v-model="form.vodRemarks" type="textarea" placeholder="请输入备注信息" />
            </el-form-item>
          </el-col>
        </el-row>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import { listVideo, getVideo, delVideo, addVideo, updateVideo } from "@/api/system/video";
import {listType} from "../../../api/system/type";
import {uploadPic} from "../../../api/monitor/server";
import {getToken} from "../../../utils/auth";

export default {
  name: "Video",
  dicts: ['video_type'],
  data() {
    return {
      uploadSet: {
        url: 'http://localhost:8080/system/user/profile/imgUpload',
        headers: { Authorization: "Bearer " + getToken() }
      },
      // 遮罩层
      loading: true,
      // 选中数组
      ids: [],
      // 非单个禁用
      single: true,
      imageUrl: "",
      // 非多个禁用
      multiple: true,
      // 显示搜索条件
      showSearch: true,
      // 总条数
      total: 0,
      // 视频信息表格数据
      videoList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        vodName: null,
        typeId: null,
        vodCreateTime: null,
        vodArea: null,
        vodActor: null,
      },
      // 视频类别表格数据
      typeList: [],
      // 表单参数
      form: {},
      // 表单校验
      rules: {
      }
    };
  },
  created() {
    this.getListType();
    this.getList();
  },
  methods: {    /** 查询视频类别列表 */
    getListType() {
      this.loading = true;
      listType({pageNum: 1,pageSize: 99999}).then(response => {
        this.typeList = response.rows;
      });
    },
    /** 查询视频信息列表 */
    getList() {
      this.loading = true;
      listVideo(this.queryParams).then(response => {
        this.videoList = response.rows;
        this.videoList.forEach(item => {
          item.vodImg = item.vodImg ? process.env.VUE_APP_BASE_API + item.vodImg : null;
        });
        this.total = response.total;
        this.loading = false;
      });
    },
    // 取消按钮
    cancel() {
      this.open = false;
      this.reset();
    },
    // 表单重置
    reset() {
      this.imageUrl = '';
      this.form = {
        vodId: null,
        vodName: null,
        typeId: null,
        typeName: null,
        vodEn: null,
        vodCreateTime: null,
        vodRemarks: null,
        vodPlayForm: 'm3u8',
        vodImg: null,
        vodTimes: null,
        vodArea: null,
        vodActor: null,
        vodUrl: null,
        status: 1
      };
      this.resetForm("form");
    },
    typeChange(e){
      this.form.typeName = this.typeList.filter(item => item.typeId === e)[0].typeName;
    },
    /** 搜索按钮操作 */
    handleQuery() {
      this.queryParams.pageNum = 1;
      this.getList();
    },
    /** 重置按钮操作 */
    resetQuery() {
      this.resetForm("queryForm");
      this.handleQuery();
    },
    // 多选框选中数据
    handleSelectionChange(selection) {
      this.ids = selection.map(item => item.vodId)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    handleAvatarSuccess(res, file) {
      console.log(res)
      this.imageUrl = URL.createObjectURL(file.raw);
      this.form.vodImg = res.imgUrl
    },
    beforeAvatarUpload(file) {
      const isJPG = file.type === 'image/*';
      const isLt2M = file.size / 1024 / 1024 < 2;
      if (!isLt2M) {
        this.$message.error('上传头像图片大小不能超过 2MB!');
        return isJPG && isLt2M;
      }
      // this.uploadImg(file)
    },
    // 上传图片
    async uploadImg(file) {
      let formData = new FormData();
      formData.append("avatarfile", file);
      await uploadPic(formData)
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加视频信息";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const vodId = row.vodId || this.ids
      getVideo(vodId).then(response => {
        this.form = response.data;
        this.form.vodImg = this.form.vodImg ? process.env.VUE_APP_BASE_API + this.form.vodImg : null;
        this.open = true;
        this.title = "修改视频信息";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.vodId != null) {
            updateVideo(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addVideo(this.form).then(response => {
              this.$modal.msgSuccess("新增成功");
              this.open = false;
              this.getList();
            });
          }
        }
      });
    },
    /** 删除按钮操作 */
    handleDelete(row) {
      const vodIds = row.vodId || this.ids;
      this.$modal.confirm('是否确认删除视频信息编号为"' + vodIds + '"的数据项？').then(function() {
        return delVideo(vodIds);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('system/video/export', {
        ...this.queryParams
      }, `video_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
<style scoped>
.avatar-uploader{
  width: 220px; height: 120px;border-radius: 5px;border: 1px #ddd dashed;
  display: flex;align-items: center;justify-content: center;overflow: hidden;
}
.avatar {
  width: 220px; height: 120px;object-fit: cover;margin-top: 15px;
}
</style>
