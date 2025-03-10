package com.ruoyi.por.controller;

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
import com.ruoyi.por.domain.VVip;
import com.ruoyi.por.service.IVVipService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 会员表Controller
 * 
 * @author ruoyi
 * @date 2025-03-07
 */
@RestController
@RequestMapping("/por/vip")
public class VVipController extends BaseController
{
    @Autowired
    private IVVipService vVipService;

    /**
     * 查询会员表列表
     */
    @PreAuthorize("@ss.hasPermi('por:vip:list')")
    @GetMapping("/list")
    public TableDataInfo list(VVip vVip)
    {
        startPage();
        List<VVip> list = vVipService.selectVVipList(vVip);
        return getDataTable(list);
    }

    /**
     * 导出会员表列表
     */
    @PreAuthorize("@ss.hasPermi('por:vip:export')")
    @Log(title = "会员表", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, VVip vVip)
    {
        List<VVip> list = vVipService.selectVVipList(vVip);
        ExcelUtil<VVip> util = new ExcelUtil<VVip>(VVip.class);
        util.exportExcel(response, list, "会员表数据");
    }

    /**
     * 获取会员表详细信息
     */
    @PreAuthorize("@ss.hasPermi('por:vip:query')")
    @GetMapping(value = "/{vipId}")
    public AjaxResult getInfo(@PathVariable("vipId") Long vipId)
    {
        return success(vVipService.selectVVipByVipId(vipId));
    }

    /**
     * 新增会员表
     */
    @PreAuthorize("@ss.hasPermi('por:vip:add')")
    @Log(title = "会员表", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody VVip vVip)
    {
        return toAjax(vVipService.insertVVip(vVip));
    }

    /**
     * 修改会员表
     */
    @PreAuthorize("@ss.hasPermi('por:vip:edit')")
    @Log(title = "会员表", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody VVip vVip)
    {
        return toAjax(vVipService.updateVVip(vVip));
    }

    /**
     * 删除会员表
     */
    @PreAuthorize("@ss.hasPermi('por:vip:remove')")
    @Log(title = "会员表", businessType = BusinessType.DELETE)
	@DeleteMapping("/{vipIds}")
    public AjaxResult remove(@PathVariable Long[] vipIds)
    {
        return toAjax(vVipService.deleteVVipByVipIds(vipIds));
    }
}
