package com.ruoyi.web.controller.system;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.system.service.IVPersonService;
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
import com.ruoyi.system.domain.VFxPerson;
import com.ruoyi.system.service.IVFxPersonService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 分销商信息Controller
 * 
 * @author wahaha
 * @date 2025-03-08
 */
@RestController
@RequestMapping("/system/fxPerson")
public class VFxPersonController extends BaseController
{
    @Autowired
    private IVFxPersonService vFxPersonService;

    /**
     * 查询分销商信息列表
     */
    @PreAuthorize("@ss.hasPermi('system:fxPerson:list')")
    @GetMapping("/list")
    public TableDataInfo list(VFxPerson vFxPerson)
    {
        startPage();
        List list = vFxPersonService.selectVFxPersonList(vFxPerson);
        return getDataTable(list);
    }

    /**
     * 查询分销商信息列表_特殊方式
     */
    @PreAuthorize("@ss.hasPermi('system:fxPerson:list')")
    @GetMapping("/listPorm")
    public AjaxResult listPorm(Integer qid)
    {
        List list =  vFxPersonService.selectVFxPersonBySql(" v_fx_fid = " + qid);
        return success(list);
    }

    /**
     * 导出分销商信息列表
     */
    @PreAuthorize("@ss.hasPermi('system:fxPerson:export')")
    @Log(title = "分销商信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, VFxPerson vFxPerson)
    {
        List<VFxPerson> list = vFxPersonService.selectVFxPersonList(vFxPerson);
        ExcelUtil<VFxPerson> util = new ExcelUtil<VFxPerson>(VFxPerson.class);
        util.exportExcel(response, list, "分销商信息数据");
    }

    /**
     * 获取分销商信息详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:fxPerson:query')")
    @GetMapping(value = "/{vFxId}")
    public AjaxResult getInfo(@PathVariable("vFxId") Long vFxId)
    {
        return success(vFxPersonService.selectVFxPersonByVFxId(vFxId));
    }

    /**
     * 新增分销商信息
     */
    @PreAuthorize("@ss.hasPermi('system:fxPerson:add')")
    @Log(title = "分销商信息", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody VFxPerson vFxPerson)
    {
        return toAjax(vFxPersonService.insertVFxPerson(vFxPerson));
    }

    /**
     * 修改分销商信息
     */
    @PreAuthorize("@ss.hasPermi('system:fxPerson:edit')")
    @Log(title = "分销商信息", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody VFxPerson vFxPerson)
    {
        return toAjax(vFxPersonService.updateVFxPerson(vFxPerson));
    }

    /**
     * 删除分销商信息
     */
    @PreAuthorize("@ss.hasPermi('system:fxPerson:remove')")
    @Log(title = "分销商信息", businessType = BusinessType.DELETE)
	@DeleteMapping("/{vFxIds}")
    public AjaxResult remove(@PathVariable Long[] vFxIds)
    {
        return toAjax(vFxPersonService.deleteVFxPersonByVFxIds(vFxIds));
    }
}
