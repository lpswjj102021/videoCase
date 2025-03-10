<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch">
      <el-form-item label="更新类型">
        <el-select v-model="queryParams.refreshType" placeholder="请选择更新类型" clearable>
          <el-option v-for="dict in tArs" :key="dict.label" :label="dict.label" :value="dict.label"/>
        </el-select>
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
          v-hasPermi="['system:info:add']"
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
          v-hasPermi="['system:info:edit']"
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
          v-hasPermi="['system:info:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['system:info:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>-->
    </el-row>

    <el-table v-loading="loading" :data="infoList" @selection-change="handleSelectionChange">
      <el-table-column label="更新类别" prop="refreshType" width="250" show-overflow-tooltip />
      <el-table-column label="更新标识符" width="140" prop="refreshTik">
        <template slot-scope="scope">
          <el-tag type="success">{{ scope.row.refreshTik }}</el-tag>
        </template>
      </el-table-column>
      <el-table-column label="脚本路径" align="center" prop="refreshPython" />
      <el-table-column label="更新状态" width="150" align="center" prop="refreshStatus">
        <template slot-scope="scope">
          <el-tag v-if="scope.row.refreshStatus === 'Y'">可更新</el-tag>
          <el-tag v-else type="danger">更新中...</el-tag>
        </template>
      </el-table-column>
      <el-table-column label="操作" width="200" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="primary"
            style="padding: 7px 10px"
            icon="el-icon-refresh"
            :disabled="scope.row.refreshStatus !== 'Y'"
            @click="refreshClick(scope.row)"
          >更新数据</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['system:info:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['system:info:remove']"
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

    <!-- 添加或修改更新表对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="700px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="100px">
        <el-row>
          <el-col :span="15">
            <el-form-item label="更新类别" prop="refreshTik">
              <el-select v-model="form.refreshType" placeholder="请选择更新状态" @change="changeType">
                <el-option v-for="sa in BackLxArs()" :label="sa.label" :value="sa.label"/>
              </el-select>
            </el-form-item>
          </el-col>
          <el-col :span="9">
            <el-form-item label="更新标识符" prop="refreshTik">
              <el-input v-model="form.refreshTik" disabled placeholder="请输入更新标识符" />
            </el-form-item>
          </el-col>
          <el-col :span="24">
            <el-form-item label="脚本路径" prop="refreshPython">
              <el-input v-model="form.refreshPython" placeholder="请输入脚本全路径（硬盘路径）" />
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
import { listInfo, getInfo, delInfo, addInfo, updateInfo } from "@/api/system/info";
import {BackLxArs} from "../../../assets/utils/datas";
import {refresh_python, refreshPython} from "../../../api/system/info";

export default {
  name: "Info",
  data() {
    return {
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
      // 更新表表格数据
      infoList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        refreshType: null,
      },
      // 表单参数
      form: {},
      tArs: BackLxArs(),
      // 表单校验
      rules: {
      }
    };
  },
  created() {
    this.getList();
  },
  methods: {
    BackLxArs,
    /** 查询更新表列表 */
    getList() {
      this.loading = true;
      listInfo(this.queryParams).then(response => {
        this.infoList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
    },
    // 取消按钮
    cancel() {
      this.open = false;
      this.reset();
    },
    changeType(e){
      this.form.refreshTik = this.tArs.filter(item => item.label === e)[0].code;
    },
    // 表单重置
    reset() {
      this.form = {
        id: null,
        refreshType: null,
        refreshStatus: 'Y',
        refreshTik: null
      };
      this.resetForm("form");
    },
    refreshClick(e){
      e.refreshStatus = 'N';
      updateInfo(e).then(res => {
        if (res.code === 200)
          this.$modal.msgSuccess(`数据信息 ‘${e.refreshType}’ 更新中，请稍后进入列表查看...`)
          setTimeout(async () => {
            const res = await refresh_python(e)
            if (res.code === 200)
              this.$modal.msgSuccess(`数据信息更新完毕`)
              this.getList()
          }, 1000)
      })
    },
    /** 搜索按钮操作 */
    handleQuery() {
      this.queryParams.pageNum = 1;
      this.getList();
    },
    /** 重置按钮操作 */
    resetQuery() {
      this.queryParams = {
        pageNum: 1,
        pageSize: 10,
        refreshType: null,
      }
      this.handleQuery();
    },
    // 多选框选中数据
    handleSelectionChange(selection) {
      this.ids = selection.map(item => item.id)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加更新表";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const id = row.id || this.ids
      getInfo(id).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改更新表";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.id != null) {
            updateInfo(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addInfo(this.form).then(response => {
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
      const ids = row.id || this.ids;
      this.$modal.confirm('是否确认删除更新表编号为"' + ids + '"的数据项？').then(function() {
        return delInfo(ids);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('system/info/export', {
        ...this.queryParams
      }, `info_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
