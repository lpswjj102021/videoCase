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
import com.ruoyi.system.domain.VVideo;
import com.ruoyi.system.service.IVVideoService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 视频信息Controller
 * 
 * @author wahaha
 * @date 2025-03-06
 */
@RestController
@RequestMapping("/system/video")
public class VVideoController extends BaseController
{
    @Autowired
    private IVVideoService vVideoService;

    /**
     * 查询视频信息列表
     */
    @PreAuthorize("@ss.hasPermi('system:video:list')")
    @GetMapping("/list")
    public TableDataInfo list(VVideo vVideo)
    {
        startPage();
        List<VVideo> list = vVideoService.selectVVideoList(vVideo);
        return getDataTable(list);
    }

    /**
     * 导出视频信息列表
     */
    @PreAuthorize("@ss.hasPermi('system:video:export')")
    @Log(title = "视频信息", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, VVideo vVideo)
    {
        List<VVideo> list = vVideoService.selectVVideoList(vVideo);
        ExcelUtil<VVideo> util = new ExcelUtil<VVideo>(VVideo.class);
        util.exportExcel(response, list, "视频信息数据");
    }

    /**
     * 获取视频信息详细信息
     */
    @PreAuthorize("@ss.hasPermi('system:video:query')")
    @GetMapping(value = "/{vodId}")
    public AjaxResult getInfo(@PathVariable("vodId") Long vodId)
    {
        return success(vVideoService.selectVVideoByVodId(vodId));
    }

    /**
     * 新增视频信息
     */
    @PreAuthorize("@ss.hasPermi('system:video:add')")
    @Log(title = "视频信息", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody VVideo vVideo)
    {
        return toAjax(vVideoService.insertVVideo(vVideo));
    }

    /**
     * 修改视频信息
     */
    @PreAuthorize("@ss.hasPermi('system:video:edit')")
    @Log(title = "视频信息", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody VVideo vVideo)
    {
        return toAjax(vVideoService.updateVVideo(vVideo));
    }

    /**
     * 删除视频信息
     */
    @PreAuthorize("@ss.hasPermi('system:video:remove')")
    @Log(title = "视频信息", businessType = BusinessType.DELETE)
	@DeleteMapping("/{vodIds}")
    public AjaxResult remove(@PathVariable Long[] vodIds)
    {
        return toAjax(vVideoService.deleteVVideoByVodIds(vodIds));
    }
}
