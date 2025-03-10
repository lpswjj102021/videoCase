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
import com.ruoyi.system.domain.VType;
import com.ruoyi.system.service.IVTypeService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 视频类别Controller
 * 
 * @author ruoyi
 * @date 2025-03-06
 */
@RestController
@RequestMapping("/system/type")
public class VTypeController extends BaseController
{
    @Autowired
    private IVTypeService vTypeService;

    /**
     * 查询视频类别列表
     */
    @PreAuthorize("@ss.hasPermi('system:type:list')")
    @GetMapping("/list")
    public TableDataInfo list(VType vType)
    {
        startPage();
        List<VType> list = vTypeService.selectVTypeList(vType);
        return getDataTable(list);
    }

    /**
     * 导出视频类别列表
     */
    @PreAuthorize("@ss.hasPermi('system:type:export')")
    @Log(title = "视频类别", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, VType vType)
    {
        List<VType> list = vTypeService.selectVTypeList(vType);
        ExcelUtil<VType> util = new ExcelUtil<VType>(VType.class);
        util.exportExcel(response, list, "视频类别数据");
    }

    /**
     * 获取视频类别详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:type:query')")
    @GetMapping(value = "/{typeId}")
    public AjaxResult getInfo(@PathVariable("typeId") Long typeId)
    {
        return success(vTypeService.selectVTypeByTypeId(typeId));
    }

    /**
     * 新增视频类别
     */
    @PreAuthorize("@ss.hasPermi('system:type:add')")
    @Log(title = "视频类别", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody VType vType)
    {
        return toAjax(vTypeService.insertVType(vType));
    }

    /**
     * 修改视频类别
     */
    @PreAuthorize("@ss.hasPermi('system:type:edit')")
    @Log(title = "视频类别", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody VType vType)
    {
        return toAjax(vTypeService.updateVType(vType));
    }

    /**
     * 删除视频类别
     */
    @PreAuthorize("@ss.hasPermi('system:type:remove')")
    @Log(title = "视频类别", businessType = BusinessType.DELETE)
	@DeleteMapping("/{typeIds}")
    public AjaxResult remove(@PathVariable Long[] typeIds)
    {
        return toAjax(vTypeService.deleteVTypeByTypeIds(typeIds));
    }
}
