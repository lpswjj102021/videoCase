package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.VFxMapper;
import com.ruoyi.system.domain.VFx;
import com.ruoyi.system.service.IVFxService;

/**
 * 分销类别Service业务层处理
 * 
 * @author wahaha
 * @date 2025-03-08
 */
@Service
public class VFxServiceImpl implements IVFxService 
{
    @Autowired
    private VFxMapper vFxMapper;

    /**
     * 查询分销类别
     * 
     * @param fxId 分销类别主键
     * @return 分销类别
     */
    @Override
    public VFx selectVFxByFxId(Long fxId)
    {
        return vFxMapper.selectVFxByFxId(fxId);
    }

    /**
     * 查询分销类别列表
     * 
     * @param vFx 分销类别
     * @return 分销类别
     */
    @Override
    public List<VFx> selectVFxList(VFx vFx)
    {
        return vFxMapper.selectVFxList(vFx);
    }

    /**
     * 新增分销类别
     * 
     * @param vFx 分销类别
     * @return 结果
     */
    @Override
    public int insertVFx(VFx vFx)
    {
        vFx.setCreateTime(DateUtils.getNowDate());
        return vFxMapper.insertVFx(vFx);
    }

    /**
     * 修改分销类别
     * 
     * @param vFx 分销类别
     * @return 结果
     */
    @Override
    public int updateVFx(VFx vFx)
    {
        return vFxMapper.updateVFx(vFx);
    }

    /**
     * 批量删除分销类别
     * 
     * @param fxIds 需要删除的分销类别主键
     * @return 结果
     */
    @Override
    public int deleteVFxByFxIds(Long[] fxIds)
    {
        return vFxMapper.deleteVFxByFxIds(fxIds);
    }

    /**
     * 删除分销类别信息
     * 
     * @param fxId 分销类别主键
     * @return 结果
     */
    @Override
    public int deleteVFxByFxId(Long fxId)
    {
        return vFxMapper.deleteVFxByFxId(fxId);
    }
}
