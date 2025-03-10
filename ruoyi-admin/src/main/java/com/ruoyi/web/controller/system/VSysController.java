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
import com.ruoyi.system.domain.VSys;
import com.ruoyi.system.service.IVSysService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 系统信息Controller
 * 
 * @author wahaha
 * @date 2025-03-09
 */
@RestController
@RequestMapping("/system/sys")
public class VSysController extends BaseController
{
    @Autowired
    private IVSysService vSysService;

    /**
     * 查询系统信息列表
     */
    @PreAuthorize("@ss.hasPermi('system:sys:list')")
    @GetMapping("/list")
    public TableDataInfo list(VSys vSys)
    {
        startPage();
        List<VSys> list = vSysService.selectVSysList(vSys);
        return getDataTable(list);
    }

    /**
     * 导出系统信息列表
     */
    @PreAuthorize("@ss.hasPermi('system:sys:export')")
    @Log(title = "系统信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, VSys vSys)
    {
        List<VSys> list = vSysService.selectVSysList(vSys);
        ExcelUtil<VSys> util = new ExcelUtil<VSys>(VSys.class);
        util.exportExcel(response, list, "系统信息数据");
    }

    /**
     * 获取系统信息详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:sys:query')")
    @GetMapping(value = "/{sysId}")
    public AjaxResult getInfo(@PathVariable("sysId") Long sysId)
    {
        return success(vSysService.selectVSysBySysId(sysId));
    }

    /**
     * 新增系统信息
     */
    @PreAuthorize("@ss.hasPermi('system:sys:add')")
    @Log(title = "系统信息", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody VSys vSys)
    {
        return toAjax(vSysService.insertVSys(vSys));
    }

    /**
     * 修改系统信息
     */
    @PreAuthorize("@ss.hasPermi('system:sys:edit')")
    @Log(title = "系统信息", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody VSys vSys)
    {
        return toAjax(vSysService.updateVSys(vSys));
    }

    /**
     * 删除系统信息
     */
    @PreAuthorize("@ss.hasPermi('system:sys:remove')")
    @Log(title = "系统信息", businessType = BusinessType.DELETE)
	@DeleteMapping("/{sysIds}")
    public AjaxResult remove(@PathVariable Long[] sysIds)
    {
        return toAjax(vSysService.deleteVSysBySysIds(sysIds));
    }
}
