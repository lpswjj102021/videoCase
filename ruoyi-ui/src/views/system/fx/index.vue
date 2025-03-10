<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch">
      <el-form-item label="分销级别" prop="fxLeave">
        <el-select v-model="queryParams.fxLeave" placeholder="请选择分销级别" clearable>
          <el-option
            v-for="dict in dict.type.fx_leave"
            :key="dict.value"
            :label="dict.label"
            :value="dict.value"
          />
        </el-select>
      </el-form-item>
      <el-form-item label="分销类别" prop="fxType">
        <el-select v-model="queryParams.fxType" placeholder="请选择分销类别" clearable>
          <el-option
            v-for="dict in dict.type.fx_type"
            :key="dict.value"
            :label="dict.label"
            :value="dict.value"
          />
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
          v-hasPermi="['system:fx:add']"
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
          v-hasPermi="['system:fx:edit']"
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
          v-hasPermi="['system:fx:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['system:fx:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>-->
    </el-row>

    <el-table v-loading="loading" :data="fxList" @selection-change="handleSelectionChange">
      <el-table-column label="分销级别" width="200" show-overflow-tooltip prop="fxLeave">
        <template slot-scope="scope">
          <dict-tag :options="dict.type.fx_leave" :value="scope.row.fxLeave"/>
        </template>
      </el-table-column>
      <el-table-column label="分销类别" width="200" align="center" prop="fxType">
        <template slot-scope="scope">
          <dict-tag :options="dict.type.fx_type" :value="scope.row.fxType"/>
        </template>
      </el-table-column>
      <el-table-column label="分销比率" align="center" prop="fxBl" />
      <el-table-column label="提升机制数量" align="center" prop="fxUp" show-overflow-tooltip>
        <template slot-scope="scope">
          <span>邀请超 {{scope.row.fxUp}} 个用户，可晋升上一级分销商</span>
        </template>
      </el-table-column>
      <el-table-column label="开启状态" width="120" align="center" prop="status">
        <template slot-scope="scope">
          <el-switch v-model="scope.row.status" active-value="1" inactive-value="0" />
        </template>
      </el-table-column>
      <el-table-column label="操作" width="200" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row)"
            v-hasPermi="['system:fx:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row)"
            v-hasPermi="['system:fx:remove']"
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

    <!-- 添加或修改分销类别对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="700px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="85px">
        <el-row>
          <el-col :span="12">
            <el-form-item label="分销级别" prop="fxLeave">
              <el-select v-model="form.fxLeave" placeholder="请选择分销级别">
                <el-option
                  v-for="dict in dict.type.fx_leave"
                  :key="dict.value"
                  :label="dict.label"
                  :value="dict.value"
                ></el-option>
              </el-select>
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="分销类别" prop="fxType">
              <el-select v-model="form.fxType" placeholder="请选择分销类别">
                <el-option
                  v-for="dict in dict.type.fx_type"
                  :key="dict.value"
                  :label="dict.label"
                  :value="dict.value"
                ></el-option>
              </el-select>
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="分销比率" prop="fxBl">
              <el-input v-model="form.fxBl" placeholder="请输入分销比率" />
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="提升机制" prop="fxUp">
              <el-input v-model="form.fxUp" placeholder="请输入提升机制数量" />
            </el-form-item>
          </el-col>
          <el-col :span="12">
            <el-form-item label="开启状态" prop="status">
              <el-switch v-model="form.status" active-value="1" inactive-value="0" />
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
import { listFx, getFx, delFx, addFx, updateFx } from "@/api/system/fx";

export default {
  name: "Fx",
  dicts: ['fx_leave', 'fx_type'],
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
      // 分销类别表格数据
      fxList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        fxLeave: null,
        fxType: null,
        status: null,
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
    /** 查询分销类别列表 */
    getList() {
      this.loading = true;
      listFx(this.queryParams).then(response => {
        this.fxList = response.rows;
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
        fxId: null,
        fxLeave: null,
        fxType: null,
        fxBl: null,
        status: null,
        createTime: null,
        fxUp: null
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
      this.ids = selection.map(item => item.fxId)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.form.status = "1"
      this.open = true;
      this.title = "添加分销类别";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const fxId = row.fxId || this.ids
      getFx(fxId).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改分销类别";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.fxId != null) {
            updateFx(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addFx(this.form).then(response => {
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
      const fxIds = row.fxId || this.ids;
      this.$modal.confirm('是否确认删除分销类别编号为"' + fxIds + '"的数据项？').then(function() {
        return delFx(fxIds);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('system/fx/export', {
        ...this.queryParams
      }, `fx_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
