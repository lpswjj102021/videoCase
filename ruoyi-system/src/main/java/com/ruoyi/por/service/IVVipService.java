package com.ruoyi.por.service;

import java.util.List;
import com.ruoyi.por.domain.VVip;

/**
 * 会员表Service接口
 * 
 * @author ruoyi
 * @date 2025-03-07
 */
public interface IVVipService 
{
    /**
     * 查询会员表
     * 
     * @param vipId 会员表主键
     * @return 会员表
     */
    public VVip selectVVipByVipId(Long vipId);

    /**
     * 查询会员表列表
     * 
     * @param vVip 会员表
     * @return 会员表集合
     */
    public List selectVVipList(VVip vVip);

    /**
     * 新增会员表
     * 
     * @param vVip 会员表
     * @return 结果
     */
    public int insertVVip(VVip vVip);

    /**
     * 修改会员表
     * 
     * @param vVip 会员表
     * @return 结果
     */
    public int updateVVip(VVip vVip);

    /**
     * 批量删除会员表
     * 
     * @param vipIds 需要删除的会员表主键集合
     * @return 结果
     */
    public int deleteVVipByVipIds(Long[] vipIds);

    /**
     * 删除会员表信息
     * 
     * @param vipId 会员表主键
     * @return 结果
     */
    public int deleteVVipByVipId(Long vipId);
}
