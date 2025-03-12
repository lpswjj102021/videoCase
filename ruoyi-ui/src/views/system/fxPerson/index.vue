<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch">
      <el-form-item label="分销商">
        <el-select v-model="queryParams.vFxPid" placeholder="请选择分销商" clearable filterable>
          <el-option v-for="dict in personList" :key="dict.personId" :label="dict.nickName" :value="dict.personId" />
        </el-select>
      </el-form-item>
      <el-form-item label="分销级别">
        <el-select v-model="queryParams.vFxFid" placeholder="请选择分销级别" clearable>
          <el-option
            v-for="dict in dict.type.fx_leave"
            :key="dict.value"
            :label="dict.label"
            :value="dict.value"
          ></el-option>
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
          v-hasPermi="['system:fxPerson:add']"
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
          v-hasPermi="['system:fxPerson:edit']"
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
          v-hasPermi="['system:fxPerson:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['system:fxPerson:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>-->
    </el-row>

    <el-table v-loading="loading" :data="fxPersonList" @selection-change="handleSelectionChange">
      <el-table-column label="分销商" width="200" show-overflow-tooltip prop="vFxPid">
        <template slot-scope="scope">
          <div style="display: flex;align-items: center;">
            <el-image :src="scope.row.vPerson.avatar" style="width: 40px; height: 40px;border-radius: 5px;" />
            <span style="padding: 0 10px;">{{scope.row.vPerson.nickName}}</span>
            <el-tag size="mini">{{ scope.row.vPerson.sex}}</el-tag>
          </div>
        </template>
      </el-table-column>
      <el-table-column label="父级分销商" width="200" align="center">
        <template slot-scope="scope">
          <span v-if="scope.row.vFx.vFxFartherName">{{scope.row.vFx.vFxFartherName}}</span>
          <span v-else>-/-</span>
        </template>
      </el-table-column>
      <el-table-column label="分销级别" width="200" align="center" prop="vFx.vFxFname" />
      <el-table-column label="团队成员ID集" align="center" prop="vFx.vFxTeam" />
      <el-table-column label="操作" width="200" align="center" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row.vFx)"
            v-hasPermi="['system:fxPerson:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row.vFx)"
            v-hasPermi="['system:fxPerson:remove']"
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

    <!-- 添加或修改分销商信息对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="700px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="100px">
        <el-row>
          <el-col :span="14">
            <el-form-item label="分销商" prop="vFxPid">
              <el-select v-model="form.vFxPid" placeholder="请选择分销商" clearable filterable>
                <el-option v-for="dict in personList" :key="dict.personId" :label="dict.nickName" :value="dict.personId" />
              </el-select>
            </el-form-item>
          </el-col>
          <el-col :span="10">
            <el-form-item label="分销级别" prop="vFxFname">
              <el-select v-model="form.vFxFid" placeholder="请选择分销级别" clearable @change="selLeave">
                <el-option v-for="dict in dict.type.fx_leave" :key="dict.value" :label="dict.label" :value="Number(dict.value)"/>
              </el-select>
            </el-form-item>
          </el-col>
          <el-col :span="14" v-if="form.vFxFid > 0">
            <el-form-item label="父级分销商" prop="vFxFname">
              <el-select v-model="form.vFxFartherId" placeholder="请选择父级分销商" clearable @change="farChange">
                <el-option v-for="dict in fxSelArs" :key="dict.vFx.vFxId" :label="dict.vPerson.nickName" :value="dict.vFx.vFxId"/>
              </el-select>
            </el-form-item>
          </el-col>
          <el-col :span="24">
            <el-form-item label="团队成员ID集" prop="vFxTeam">
              <span>[ {{ form.vFxTeam }} ]</span>
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
import { listFxPerson, getFxPerson, delFxPerson, addFxPerson, updateFxPerson } from "@/api/system/fxPerson";
import {listPerson} from "../../../api/system/person";
import {listFx} from "../../../api/system/fx";
import {QueryFxPerson} from "../../../api/system/fxPerson";

export default {
  name: "FxPerson",
  dicts: ['fx_leave'],
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
      // 分销商信息表格数据
      fxPersonList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        vFxPid: null,
        vFxFid: null,
        vFxTeam: null,
      },
      personList: [],
      fxList: [],
      fxSelArs:[],
      // 表单参数
      form: {},
      // 表单校验
      rules: {
      }
    };
  },
  created() {
    this.getList();
    this.getPersonList();
  },
  methods: {
    /** 查询用户表列表 */
    async getPersonList() {
      const result = await listPerson({pageSize: 10, pageNum: 1})
      this.personList = result.rows;
      this.personList.forEach(item => { item.avatar = item.avatar ? process.env.VUE_APP_BASE_API + item.avatar : null; });

      const result1 = await listFx({pageSize: 10, pageNum: 1})
      this.fxList = result1.rows;
    },
    async selLeave(e){
      this.form.vFxFname = this.dict.type.fx_leave.filter(item => item.value === e)[0].label
      if (e > 0) {
        const result = await QueryFxPerson({qid: (e-1)})
        this.fxSelArs = result.data
      }
    },
    farChange(e){
      this.form.vFxFartherName = this.fxSelArs.filter(item => item.vFx.vFxId === e)[0].vPerson.nickName
    },
    /** 查询分销商信息列表 */
    getList() {
      this.loading = true;
      listFxPerson(this.queryParams).then(response => {
        this.fxPersonList = response.rows;
        this.fxPersonList.forEach(item => {
          item.vPerson.avatar = item.vPerson.avatar ? process.env.VUE_APP_BASE_API + item.vPerson.avatar : null;
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
        vFxId: null,
        vFxPid: null,
        vFxFid: null,
        vFxFname: null,
        vFxTeam: null,
        createTime: null
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
      this.ids = selection.map(item => item.vFxId)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加分销商信息";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const vFxId = row.vFxId || this.ids
      getFxPerson(vFxId).then(async response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改分销商信息";
        if (this.form.vFxFid > 0) {
          const result = await QueryFxPerson({qid: (this.form.vFxFid-1)})
          console.log(result)
          this.fxSelArs = result.data
        }
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.vFxId != null) {
            updateFxPerson(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addFxPerson(this.form).then(response => {
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
      const vFxIds = row.vFxId || this.ids;
      this.$modal.confirm('是否确认删除分销商信息编号为"' + vFxIds + '"的数据项？').then(function() {
        return delFxPerson(vFxIds);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('system/fxPerson/export', {
        ...this.queryParams
      }, `fxPerson_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
