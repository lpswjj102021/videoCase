package com.ruoyi.web.controller.system;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.system.domain.VVipType;
import com.ruoyi.system.service.IVVipTypeService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 会员类别表Controller
 * 
 * @author wahaha
 * @date 2025-03-07
 */
@RestController
@RequestMapping("/system/vType")
public class VVipTypeController extends BaseController
{
    @Autowired
    private IVVipTypeService vVipTypeService;

    /**
     * 查询会员类别表列表
     */
    @PreAuthorize("@ss.hasPermi('system:vType:list')")
    @GetMapping("/list")
    public TableDataInfo list(VVipType vVipType)
    {
        startPage();
        List<VVipType> list = vVipTypeService.selectVVipTypeList(vVipType);
        return getDataTable(list);
    }

    /**
     * 导出会员类别表列表
     */
    @PreAuthorize("@ss.hasPermi('system:vType:export')")
    @Log(title = "会员类别表", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, VVipType vVipType)
    {
        List<VVipType> list = vVipTypeService.selectVVipTypeList(vVipType);
        ExcelUtil<VVipType> util = new ExcelUtil<VVipType>(VVipType.class);
        util.exportExcel(response, list, "会员类别表数据");
    }

    /**
     * 获取会员类别表详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:vType:query')")
    @GetMapping(value = "/{vipTypeId}")
    public AjaxResult getInfo(@PathVariable("vipTypeId") Long vipTypeId)
    {
        return success(vVipTypeService.selectVVipTypeByVipTypeId(vipTypeId));
    }

    /**
     * 新增会员类别表
     */
    @PreAuthorize("@ss.hasPermi('system:vType:add')")
    @Log(title = "会员类别表", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody VVipType vVipType)
    {
        return toAjax(vVipTypeService.insertVVipType(vVipType));
    }

    /**
     * 修改会员类别表
     */
    @PreAuthorize("@ss.hasPermi('system:vType:edit')")
    @Log(title = "会员类别表", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody VVipType vVipType)
    {
        return toAjax(vVipTypeService.updateVVipType(vVipType));
    }

    /**
     * 删除会员类别表
     */
    @PreAuthorize("@ss.hasPermi('system:vType:remove')")
    @Log(title = "会员类别表", businessType = BusinessType.DELETE)
	@DeleteMapping("/{vipTypeIds}")
    public AjaxResult remove(@PathVariable Long[] vipTypeIds)
    {
        return toAjax(vVipTypeService.deleteVVipTypeByVipTypeIds(vipTypeIds));
    }
}
