<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch">
      <el-form-item label="账号" prop="acc">
        <el-input
          v-model="queryParams.acc"
          placeholder="请输入账号"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="昵称" prop="nickName">
        <el-input
          v-model="queryParams.nickName"
          placeholder="请输入昵称"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="电话号码" prop="phone">
        <el-input
          v-model="queryParams.phone"
          placeholder="请输入电话号码"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="出生日期" prop="borthDay">
        <el-date-picker clearable
          v-model="queryParams.borthDay"
          type="date"
          value-format="yyyy-MM-dd"
          placeholder="请选择出生日期">
        </el-date-picker>
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
          v-hasPermi="['system:person:add']"
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
          v-hasPermi="['system:person:edit']"
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
          v-hasPermi="['system:person:remove']"
        >删除</el-button>
      </el-col>-->
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['system:person:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="personList" @selection-change="handleSelectionChange">
      <el-table-column label="头像" align="center" prop="avatar" width="120">
        <template slot-scope="scope">
          <img v-if="scope.row.avatar" :src="scope.row.avatar" style="width: 45px;height: 45px;border-radius: 50%">
          <span v-else style="font-size: 12px;color: #ccc;background: #f0f0f0;">暂无头像</span>
        </template>
      </el-table-column>
      <el-table-column label="账号" prop="acc" width="200" show-overflow-tooltip  />
      <el-table-column label="昵称" align="center" prop="nickName" width="180" show-overflow-tooltip />
      <el-table-column label="性别" align="center" prop="sex" width="120">
        <template slot-scope="scope">
          <el-tag :type="scope.row.sex === '男' ? 'success' : scope.row.sex === '女' ? 'danger' : ''">{{ scope.row.sex }}</el-tag>
        </template>
      </el-table-column>
      <el-table-column label="电话号码" align="center" prop="phone" />
      <el-table-column label="出生日期" align="center" prop="borthDay" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.borthDay, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="操作" width="180" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['system:person:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['system:person:remove']"
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

    <!-- 添加或修改用户表对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="700px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-row>
          <el-col :span="24">
            <el-form-item label="头像" prop="avatar">
              <el-upload
                class="avatar-uploader"
                name="avatarfile"
                :action="uploadSet.url"
                :headers="uploadSet.headers"
                :show-file-list="false"
                :on-success="handleAvatarSuccess"
                :before-upload="beforeAvatarUpload">
                <img v-if="imageUrl" :src="imageUrl" class="avatar">
                <i v-else class="el-icon-plus avatar-uploader-icon"></i>
              </el-upload>
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="账号" prop="acc">
              <el-input v-model="form.acc" placeholder="请输入账号" />
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="密码" prop="pwd">
              <el-input v-model="form.pwd" placeholder="请输入密码" />
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="昵称" prop="nickName">
              <el-input v-model="form.nickName" placeholder="请输入昵称" />
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="电话号码" prop="phone">
              <el-input v-model="form.phone" placeholder="请输入电话号码" />
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="性别" prop="sex">
              <el-select v-model="form.sex">
                <el-option label="男" value="男" />
                <el-option label="女" value="女" />
                <el-option label="隐私" value="隐私" />
              </el-select>
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="出生日期" prop="borthDay">
              <el-date-picker clearable
                              v-model="form.borthDay"
                              type="date"
                              value-format="yyyy-MM-dd"
                              placeholder="请选择出生日期">
              </el-date-picker>
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
import { listPerson, getPerson, delPerson, addPerson, updatePerson } from "@/api/system/person";
import {getToken} from "../../../utils/auth";
import {uploadPic} from "../../../api/monitor/server";

export default {
  name: "Person",
  data() {
    return {
      uploadSet: {
        url: 'http://localhost:8080/system/user/profile/imgUpload',
        headers: { Authorization: "Bearer " + getToken() }
      },
      imageUrl: '',
      // 遮罩层
      loading: true,
      // 选中数组
      ids: [],
      // 非单个禁用
      single: true,
      // 非多个禁用
      multiple: true,
      // 显示搜索条件
      showSearch: true,
      // 总条数
      total: 0,
      // 用户表表格数据
      personList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        acc: null,
        nickName: null,
        phone: null,
        sex: null,
        borthDay: null
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {}
    };
  },
  created() {
    this.getList();
  },
  methods: {
    /** 查询用户表列表 */
    getList() {
      this.loading = true;
      listPerson(this.queryParams).then(response => {
        this.personList = response.rows;
        this.personList.forEach(item => {
          item.avatar = item.avatar ? process.env.VUE_APP_BASE_API + item.avatar : null;
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
        personId: null,
        acc: null,
        pwd: null,
        nickName: null,
        createTime: null,
        phone: null,
        avatar: null,
        sex: null,
        borthDay: null
      };
      this.resetForm("form");
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
      this.ids = selection.map(item => item.personId)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加用户表";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const personId = row.personId || this.ids
      getPerson(personId).then(response => {
        this.form = response.data;
        this.imageUrl = this.form.avatar ? process.env.VUE_APP_BASE_API + this.form.avatar : null;
        this.open = true;
        this.title = "修改用户表";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.personId != null) {
            updatePerson(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addPerson(this.form).then(response => {
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
      const personIds = row.personId || this.ids;
      this.$modal.confirm('是否确认删除用户表编号为"' + personIds + '"的数据项？').then(function() {
        return delPerson(personIds);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('system/person/export', {
        ...this.queryParams
      }, `person_${new Date().getTime()}.xlsx`)
    },
    handleAvatarSuccess(res, file) {
      this.imageUrl = URL.createObjectURL(file.raw);
      this.form.avatar = res.imgUrl
    },
    beforeAvatarUpload(file) {
      const isJPG = file.type === 'image/*';
      const isLt2M = file.size / 1024 / 1024 < 2;
      if (!isLt2M) {
        this.$message.error('上传头像图片大小不能超过 2MB!');
        return isJPG && isLt2M;
      }
      this.uploadImg(file)
    },
    // 上传图片
    async uploadImg(file) {
      let formData = new FormData();
      formData.append("avatarfile", file);
      await uploadPic(formData)
    }
  }
};
</script>
<style scoped>
.avatar-uploader{
  width: 100px; height: 100px;border-radius: 5px;border: 1px #ddd dashed;
  display: flex;align-items: center;justify-content: center; overflow: hidden;
}
.avatar{
  width: 100px; height: 100px; object-fit: cover;margin-top: 10px;
}
</style>
