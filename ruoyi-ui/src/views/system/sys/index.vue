<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch">
      <el-form-item label="系统名称" prop="sysName">
        <el-input
          v-model="queryParams.sysName"
          placeholder="请输入系统名称"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="系统类型" prop="sysType">
        <el-select v-model="queryParams.sysType" placeholder="请选择系统类型" clearable>
          <el-option
            v-for="dict in dict.type.sys_type"
            :key="dict.value"
            :label="dict.label"
            :value="dict.value"
          />
        </el-select>
      </el-form-item>
      <el-form-item label="ICP备案号" prop="sysIcp">
        <el-input
          v-model="queryParams.sysIcp"
          placeholder="请输入ICP备案号"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
      <el-form-item label="网安备案号" prop="sysPolice">
        <el-input
          v-model="queryParams.sysPolice"
          placeholder="请输入网安备案号"
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
          v-hasPermi="['system:sys:add']"
        >新增</el-button>
      </el-col>
<!--      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="el-icon-edit"
          size="mini"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['system:sys:edit']"
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
          v-hasPermi="['system:sys:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['system:sys:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>-->
    </el-row>

    <el-table v-loading="loading" :data="sysList" @selection-change="handleSelectionChange">
      <el-table-column label="LOGO" align="center" prop="sysLogo">
        <template slot-scope="scope">
          <img v-if="scope.row.sysLogo" :src="scope.row.sysLogo" class="avatar" alt="">
        </template>
      </el-table-column>
      <el-table-column label="系统名称" align="center" prop="sysName" />
      <el-table-column label="系统类型" align="center" prop="sysType">
        <template slot-scope="scope">
          <dict-tag :options="dict.type.sys_type" :value="scope.row.sysType"/>
        </template>
      </el-table-column>
      <el-table-column label="ICP备案号" align="center" prop="sysIcp" />
      <el-table-column label="网安备案号" align="center" prop="sysPolice" />
      <el-table-column label="备注" align="center" prop="remarks" />
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['system:sys:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['system:sys:remove']"
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

    <!-- 添加或修改系统信息对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="LOGO" prop="sysLogo">
          <el-upload
            class="avatar-uploader"
            name="avatarfile"
            :action="uploadSet.url"
            :headers="uploadSet.headers"
            :show-file-list="false"
            :on-success="handleAvatarSuccess"
            :before-upload="beforeAvatarUpload">
            <img v-if="imageUrl" :src="imageUrl" class="avatar" alt="">
            <img v-else-if="form.sysLogo" :src="form.sysLogo" class="avatar" alt="">
            <i v-else class="el-icon-plus avatar-uploader-icon"></i>
          </el-upload>
        </el-form-item>
        <el-form-item label="系统名称" prop="sysName">
          <el-input v-model="form.sysName" placeholder="请输入系统名称" />
        </el-form-item>
        <el-form-item label="系统类型" prop="sysType">
          <el-select v-model="form.sysType" placeholder="请选择系统类型">
            <el-option
              v-for="dict in dict.type.sys_type"
              :key="dict.value"
              :label="dict.label"
              :value="dict.value"
            ></el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="ICP备案号" prop="sysIcp">
          <el-input v-model="form.sysIcp" placeholder="请输入ICP备案号" />
        </el-form-item>
        <el-form-item label="网安备案号" prop="sysPolice">
          <el-input v-model="form.sysPolice" placeholder="请输入网安备案号" />
        </el-form-item>
        <el-form-item label="备注" prop="remarks">
          <el-input v-model="form.remarks" placeholder="请输入备注" />
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import { listSys, getSys, delSys, addSys, updateSys } from "@/api/system/sys";
import {getToken, RealPath} from "../../../utils/auth";

export default {
  name: "Sys",
  dicts: ['sys_type'],
  data() {
    return {
      uploadSet: {
        url: RealPath(),
        headers: { Authorization: "Bearer " + getToken() }
      },
      imageUrl: "",
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
      // 系统信息表格数据
      sysList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        sysName: null,
        sysType: null,
        sysIcp: null,
        sysPolice: null,
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {
      }
    };
  },
  created() {
    this.getList();
  },
  methods: {
    /** 查询系统信息列表 */
    getList() {
      this.loading = true;
      listSys(this.queryParams).then(response => {
        this.sysList = response.rows;
        this.sysList.forEach(item => {
          item.sysLogo = item.sysLogo ? process.env.VUE_APP_BASE_API + item.sysLogo : null;
        })
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
      this.form = {
        sysId: null,
        sysName: null,
        sysType: null,
        sysIcp: null,
        sysPolice: null,
        sysLogo: null,
        remarks: null
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
      this.ids = selection.map(item => item.sysId)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加系统信息";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const sysId = row.sysId || this.ids
      getSys(sysId).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改系统信息";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.sysId != null) {
            updateSys(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addSys(this.form).then(response => {
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
      const sysIds = row.sysId || this.ids;
      this.$modal.confirm('是否确认删除系统信息编号为"' + sysIds + '"的数据项？').then(function() {
        return delSys(sysIds);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('system/sys/export', {
        ...this.queryParams
      }, `sys_${new Date().getTime()}.xlsx`)
    },
    handleAvatarSuccess(res, file) {
      this.imageUrl = URL.createObjectURL(file.raw);
      this.form.sysLogo = res.imgUrl
    },
    beforeAvatarUpload(file) {
      const isJPG = file.type === 'image/*';
      const isLt2M = file.size / 1024 / 1024 < 2;
      if (!isLt2M) {
        this.$message.error('上传头像图片大小不能超过 2MB!');
        return isJPG && isLt2M;
      }
    }
  }
};
</script>
<style scoped>
.avatar-uploader{
  width: 90px; height: 90px;border: 1px #ddd dashed;border-radius: 5px;display: flex;
  align-items: center;justify-content: center;overflow: hidden;
}
.avatar{
  width: 90px; height: 90px;  margin-top: 10px;
}
</style>
