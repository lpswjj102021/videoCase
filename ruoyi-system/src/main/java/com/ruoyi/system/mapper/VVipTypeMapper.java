package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.VVipType;

/**
 * 会员类别表Mapper接口
 * 
 * @author wahaha
 * @date 2025-03-07
 */
public interface VVipTypeMapper 
{
    /**
     * 查询会员类别表
     * 
     * @param vipTypeId 会员类别表主键
     * @return 会员类别表
     */
    public VVipType selectVVipTypeByVipTypeId(Long vipTypeId);

    /**
     * 查询会员类别表列表
     * 
     * @param vVipType 会员类别表
     * @return 会员类别表集合
     */
    public List<VVipType> selectVVipTypeList(VVipType vVipType);

    /**
     * 新增会员类别表
     * 
     * @param vVipType 会员类别表
     * @return 结果
     */
    public int insertVVipType(VVipType vVipType);

    /**
     * 修改会员类别表
     * 
     * @param vVipType 会员类别表
     * @return 结果
     */
    public int updateVVipType(VVipType vVipType);

    /**
     * 删除会员类别表
     * 
     * @param vipTypeId 会员类别表主键
     * @return 结果
     */
    public int deleteVVipTypeByVipTypeId(Long vipTypeId);

    /**
     * 批量删除会员类别表
     * 
     * @param vipTypeIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteVVipTypeByVipTypeIds(Long[] vipTypeIds);
}
