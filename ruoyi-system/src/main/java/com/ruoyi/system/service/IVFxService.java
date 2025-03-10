package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.VFx;

/**
 * 分销类别Service接口
 * 
 * @author wahaha
 * @date 2025-03-08
 */
public interface IVFxService 
{
    /**
     * 查询分销类别
     * 
     * @param fxId 分销类别主键
     * @return 分销类别
     */
    public VFx selectVFxByFxId(Long fxId);

    /**
     * 查询分销类别列表
     * 
     * @param vFx 分销类别
     * @return 分销类别集合
     */
    public List<VFx> selectVFxList(VFx vFx);

    /**
     * 新增分销类别
     * 
     * @param vFx 分销类别
     * @return 结果
     */
    public int insertVFx(VFx vFx);

    /**
     * 修改分销类别
     * 
     * @param vFx 分销类别
     * @return 结果
     */
    public int updateVFx(VFx vFx);

    /**
     * 批量删除分销类别
     * 
     * @param fxIds 需要删除的分销类别主键集合
     * @return 结果
     */
    public int deleteVFxByFxIds(Long[] fxIds);

    /**
     * 删除分销类别信息
     * 
     * @param fxId 分销类别主键
     * @return 结果
     */
    public int deleteVFxByFxId(Long fxId);
}
