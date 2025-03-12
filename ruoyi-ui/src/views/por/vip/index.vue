<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch">
      <el-form-item label="到期时间" prop="endTime">
        <el-date-picker clearable
          v-model="queryParams.endTime"
          type="date"
          value-format="yyyy-MM-dd"
          placeholder="请选择到期时间">
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
          v-hasPermi="['por:vip:add']"
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
          v-hasPermi="['por:vip:edit']"
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
          v-hasPermi="['por:vip:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['por:vip:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>-->
    </el-row>

    <el-table v-loading="loading" :data="vipList" @selection-change="handleSelectionChange">
      <el-table-column label="头像" align="center" width="120">
        <template slot-scope="scope">
          <div v-if="scope.row.person.avatar" style="position: relative">
            <img :src="scope.row.person.avatar"
                 style="width: 45px;height: 45px;border-radius: 5px;background: #f8f8f8;">
            <b class="avatar_icon">vip</b>
          </div>
          <div v-else style="position: relative">
            <span class="avatar_other">无图</span>
            <b class="avatar_icon">vip</b>
          </div>
        </template>
      </el-table-column>
      <el-table-column label="用户" prop="person.nickName" width="150" show-overflow-tooltip />
      <el-table-column label="会员类别" prop="vipType.vipType" width="180">
        <template slot-scope="scope">
          <el-tag type="success">{{ scope.row.vipType.vipType }}</el-tag>
        </template>
      </el-table-column>
      <el-table-column label="价格" prop="vipType.price" width="200" />
      <el-table-column label="备注" prop="vipType.remarks" />
      <el-table-column label="到期时间" align="center" width="180">
        <template slot-scope="scope">
          <span>{{ parseTime(scope.row.vip.endTime, '{y}-{m}-{d}') }}</span>
        </template>
      </el-table-column>
      <el-table-column label="剩余天数" align="center" width="180">
        <template slot-scope="scope">
          <span>
            {{ getDateDiff(parseTime(scope.row.vip.endTime, '{y}-{m}-{d}')) }}
            <a v-if="getDateDiff(parseTime(scope.row.vip.endTime, '{y}-{m}-{d}')) >= 0" style="font-size: 12px; color: #999;">天</a>
          </span>
        </template>
      </el-table-column>
      <el-table-column label="操作" align="center" width="200" class-name="small-padding fixed-width">
        <template slot-scope="scope">
          <el-button
            size="mini"
            type="text"
            icon="el-icon-edit"
            @click="handleUpdate(scope.row.vip)"
            v-hasPermi="['por:vip:edit']"
          >修改</el-button>
          <el-button
            size="mini"
            type="text"
            icon="el-icon-delete"
            @click="handleDelete(scope.row.vip)"
            v-hasPermi="['por:vip:remove']"
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

    <!-- 添加或修改会员表对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="500px" append-to-body>
      <el-form ref="form" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="用户" prop="vipTypeId">
          <el-select v-model="form.personId" :disabled="title === '修改会员表'">
            <el-option v-for="item in personList" :key="item.personId" :label="item.nickName" :value="item.personId">
            </el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="会员类别" prop="vipTypeId">
          <el-select v-model="form.vipTypeId" @change="checkVip" :disabled="title === '修改会员表'">
            <el-option v-for="item in typeList" :key="item.vipTypeId" :label="item.vipType" :value="item.vipTypeId">
            </el-option>
          </el-select>
        </el-form-item>
        <el-form-item label="到期时间" prop="endTime">
          <el-date-picker clearable
            v-model="form.endTime"
            disabled
            type="date"
            value-format="yyyy-MM-dd"
            placeholder="请选择到期时间">
          </el-date-picker>
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="success" v-if="title === '修改会员表'" @click="renewalVip">续约会员</el-button>
        <el-button type="primary" v-else @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import { listVip, getVip, delVip, addVip, updateVip } from "@/api/por/vip";
import {listPerson} from "../../../api/system/person";
import {listType} from "../../../api/system/vType";
import {getDateDiff, getExpireDate} from "../../../utils/tools";

export default {
  name: "Vip",
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
      // 会员表表格数据
      vipList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,
      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        vipTypeId: null,
        personId: null,
        endTime: null
      },
      // 表单参数
      form: {},
      num: 1,
      // 表单校验
      rules: {},
      personList: [],
      typeList: []
    };
  },
  created() {
    this.getList();
    this.getOList();
  },
  methods: {
    getDateDiff,
    // 获取用户和类别信息
    /** 查询用户表列表 */
    async getOList() {
      const result = await listPerson({pageNum: 1,pageSize: 999999})
      this.personList = result.rows;

      const result1 = await listType({pageNum: 1,pageSize: 999999})
      this.typeList = result1.rows;
    },
    /** 查询会员表列表 */
    getList() {
      this.loading = true;
      listVip(this.queryParams).then(response => {
        this.vipList = response.rows;
        this.vipList.forEach(item => {
          item.person.avatar = item.person.avatar ? process.env.VUE_APP_BASE_API + item.person.avatar : null;
        })
        this.total = response.total;
        this.loading = false;
      });
    },
    // 会员信息选择
    checkVip(e){
      this.form.endTime = getExpireDate(this.form.endTime, e)
    },
    // 续约会员
    renewalVip(){
      this.form.endTime = getExpireDate(this.form.endTime, this.form.vipTypeId)
      this.submitForm()
    },
    // 取消按钮
    cancel() {
      this.open = false;
      this.reset();
    },
    // 表单重置
    reset() {
      this.form = {
        vipId: null,
        vipTypeId: null,
        personId: null,
        endTime: null
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
      this.ids = selection.map(item => item.vipId)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
      this.reset();
      this.open = true;
      this.title = "添加会员表";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const vipId = row.vipId || this.ids
      getVip(vipId).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改会员表";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["form"].validate(valid => {
        if (valid) {
          if (this.form.vipId != null) {
            updateVip(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addVip(this.form).then(response => {
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
      const vipIds = row.vipId || this.ids;
      this.$modal.confirm('是否确认删除会员表编号为"' + vipIds + '"的数据项？').then(function() {
        return delVip(vipIds);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('por/vip/export', {
        ...this.queryParams
      }, `vip_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
<style scoped>
.avatar_other{
  font-size: 12px;background: #f0f0f0;width: 42px;height: 42px;display: flex;margin: 0 auto;
  align-items: center;justify-content: center;border-radius: 5px;position: relative;
}
.avatar_icon{
  position: absolute;background: orange;color:#333;font-size: 12px;height: 18px;display: flex;
  align-items: center;top: -1px;right: 5px;padding: 2px 4px;border-radius: 5px;border: 2px #fff solid;
}
</style>
