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
import com.ruoyi.system.domain.VFx;
import com.ruoyi.system.service.IVFxService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 分销类别Controller
 * 
 * @author wahaha
 * @date 2025-03-08
 */
@RestController
@RequestMapping("/system/fx")
public class VFxController extends BaseController
{
    @Autowired
    private IVFxService vFxService;

    /**
     * 查询分销类别列表
     */
    @PreAuthorize("@ss.hasPermi('system:fx:list')")
    @GetMapping("/list")
    public TableDataInfo list(VFx vFx)
    {
        startPage();
        List<VFx> list = vFxService.selectVFxList(vFx);
        return getDataTable(list);
    }

    /**
     * 导出分销类别列表
     */
    @PreAuthorize("@ss.hasPermi('system:fx:export')")
    @Log(title = "分销类别", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, VFx vFx)
    {
        List<VFx> list = vFxService.selectVFxList(vFx);
        ExcelUtil<VFx> util = new ExcelUtil<VFx>(VFx.class);
        util.exportExcel(response, list, "分销类别数据");
    }

    /**
     * 获取分销类别详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:fx:query')")
    @GetMapping(value = "/{fxId}")
    public AjaxResult getInfo(@PathVariable("fxId") Long fxId)
    {
        return success(vFxService.selectVFxByFxId(fxId));
    }

    /**
     * 新增分销类别
     */
    @PreAuthorize("@ss.hasPermi('system:fx:add')")
    @Log(title = "分销类别", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody VFx vFx)
    {
        return toAjax(vFxService.insertVFx(vFx));
    }

    /**
     * 修改分销类别
     */
    @PreAuthorize("@ss.hasPermi('system:fx:edit')")
    @Log(title = "分销类别", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody VFx vFx)
    {
        return toAjax(vFxService.updateVFx(vFx));
    }

    /**
     * 删除分销类别
     */
    @PreAuthorize("@ss.hasPermi('system:fx:remove')")
    @Log(title = "分销类别", businessType = BusinessType.DELETE)
	@DeleteMapping("/{fxIds}")
    public AjaxResult remove(@PathVariable Long[] fxIds)
    {
        return toAjax(vFxService.deleteVFxByFxIds(fxIds));
    }
}
