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
import com.ruoyi.system.domain.VPerson;
import com.ruoyi.system.service.IVPersonService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 用户表Controller
 * 
 * @author wahaha
 * @date 2025-03-07
 */
@RestController
@RequestMapping("/system/person")
public class VPersonController extends BaseController
{
    @Autowired
    private IVPersonService vPersonService;

    /**
     * 查询用户表列表
     */
    @PreAuthorize("@ss.hasPermi('system:person:list')")
    @GetMapping("/list")
    public TableDataInfo list(VPerson vPerson)
    {
        startPage();
        List<VPerson> list = vPersonService.selectVPersonList(vPerson);
        return getDataTable(list);
    }

    /**
     * 导出用户表列表
     */
    @PreAuthorize("@ss.hasPermi('system:person:export')")
    @Log(title = "用户表", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, VPerson vPerson)
    {
        List<VPerson> list = vPersonService.selectVPersonList(vPerson);
        ExcelUtil<VPerson> util = new ExcelUtil<VPerson>(VPerson.class);
        util.exportExcel(response, list, "用户表数据");
    }

    /**
     * 获取用户表详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:person:query')")
    @GetMapping(value = "/{personId}")
    public AjaxResult getInfo(@PathVariable("personId") Long personId)
    {
        return success(vPersonService.selectVPersonByPersonId(personId));
    }

    /**
     * 新增用户表
     */
    @PreAuthorize("@ss.hasPermi('system:person:add')")
    @Log(title = "用户表", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody VPerson vPerson)
    {
        return toAjax(vPersonService.insertVPerson(vPerson));
    }

    /**
     * 修改用户表
     */
    @PreAuthorize("@ss.hasPermi('system:person:edit')")
    @Log(title = "用户表", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody VPerson vPerson)
    {
        return toAjax(vPersonService.updateVPerson(vPerson));
    }

    /**
     * 删除用户表
     */
    @PreAuthorize("@ss.hasPermi('system:person:remove')")
    @Log(title = "用户表", businessType = BusinessType.DELETE)
	@DeleteMapping("/{personIds}")
    public AjaxResult remove(@PathVariable Long[] personIds)
    {
        return toAjax(vPersonService.deleteVPersonByPersonIds(personIds));
    }
}
