package com.ruoyi.web.controller.system;

import java.util.List;
import javax.servlet.http.HttpServletResponse;

import com.ruoyi.utils.PythonUtils;
import com.ruoyi.common.utils.StringUtils;
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
import com.ruoyi.system.domain.RefreshInfo;
import com.ruoyi.system.service.IRefreshInfoService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 更新表Controller
 * 
 * @author wahaha
 * @date 2025-03-06
 */
@RestController
@RequestMapping("/system/info")
public class RefreshInfoController extends BaseController
{
    @Autowired
    private IRefreshInfoService refreshInfoService;

    @Autowired
    private PythonUtils pythonUtils;

    /**
     * 查询更新表列表
     */
    @PreAuthorize("@ss.hasPermi('system:info:list')")
    @GetMapping("/list")
    public TableDataInfo list(RefreshInfo refreshInfo)
    {
        startPage();
        List<RefreshInfo> list = refreshInfoService.selectRefreshInfoList(refreshInfo);
        return getDataTable(list);
    }

    /**
     * 导出更新表列表
     */
    @PreAuthorize("@ss.hasPermi('system:info:export')")
    @Log(title = "更新表", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, RefreshInfo refreshInfo)
    {
        List<RefreshInfo> list = refreshInfoService.selectRefreshInfoList(refreshInfo);
        ExcelUtil<RefreshInfo> util = new ExcelUtil<RefreshInfo>(RefreshInfo.class);
        util.exportExcel(response, list, "更新表数据");
    }

    /**
     * 获取更新表详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:info:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Long id)
    {
        return success(refreshInfoService.selectRefreshInfoById(id));
    }

    /**
     * 新增更新表
     */
    @PreAuthorize("@ss.hasPermi('system:info:add')")
    @Log(title = "更新表", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody RefreshInfo refreshInfo)
    {
        return toAjax(refreshInfoService.insertRefreshInfo(refreshInfo));
    }

    /**
     * 修改更新表
     */
    @PreAuthorize("@ss.hasPermi('system:info:edit')")
    @Log(title = "更新表", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody RefreshInfo refreshInfo)
    {
        return toAjax(refreshInfoService.updateRefreshInfo(refreshInfo));
    }

    /**
     * 更新数据信息
     */
    @PreAuthorize("@ss.hasPermi('system:info:edit')")
    @Log(title = "更新表", businessType = BusinessType.UPDATE)
    @PutMapping("/refresh_python")
    public AjaxResult refresh_python(@RequestBody RefreshInfo refreshInfo)
    {
        if (StringUtils.isNotNull(refreshInfo.getRefreshPython())) {
            pythonUtils.pythonCall(refreshInfo.getRefreshPython(), refreshInfo);
            return AjaxResult.success();
        } else {
            return AjaxResult.warn("python脚本为空");
        }
    }

    /**
     * 删除更新表
     */
    @PreAuthorize("@ss.hasPermi('system:info:remove')")
    @Log(title = "更新表", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Long[] ids)
    {
        return toAjax(refreshInfoService.deleteRefreshInfoByIds(ids));
    }
}
