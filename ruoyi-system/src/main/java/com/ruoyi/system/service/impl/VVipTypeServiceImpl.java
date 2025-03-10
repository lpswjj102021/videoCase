package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.VVipTypeMapper;
import com.ruoyi.system.domain.VVipType;
import com.ruoyi.system.service.IVVipTypeService;

/**
 * 会员类别表Service业务层处理
 * 
 * @author wahaha
 * @date 2025-03-07
 */
@Service
public class VVipTypeServiceImpl implements IVVipTypeService 
{
    @Autowired
    private VVipTypeMapper vVipTypeMapper;

    /**
     * 查询会员类别表
     * 
     * @param vipTypeId 会员类别表主键
     * @return 会员类别表
     */
    @Override
    public VVipType selectVVipTypeByVipTypeId(Long vipTypeId)
    {
        return vVipTypeMapper.selectVVipTypeByVipTypeId(vipTypeId);
    }

    /**
     * 查询会员类别表列表
     * 
     * @param vVipType 会员类别表
     * @return 会员类别表
     */
    @Override
    public List<VVipType> selectVVipTypeList(VVipType vVipType)
    {
        return vVipTypeMapper.selectVVipTypeList(vVipType);
    }

    /**
     * 新增会员类别表
     * 
     * @param vVipType 会员类别表
     * @return 结果
     */
    @Override
    public int insertVVipType(VVipType vVipType)
    {
        vVipType.setCreateTime(DateUtils.getNowDate());
        return vVipTypeMapper.insertVVipType(vVipType);
    }

    /**
     * 修改会员类别表
     * 
     * @param vVipType 会员类别表
     * @return 结果
     */
    @Override
    public int updateVVipType(VVipType vVipType)
    {
        return vVipTypeMapper.updateVVipType(vVipType);
    }

    /**
     * 批量删除会员类别表
     * 
     * @param vipTypeIds 需要删除的会员类别表主键
     * @return 结果
     */
    @Override
    public int deleteVVipTypeByVipTypeIds(Long[] vipTypeIds)
    {
        return vVipTypeMapper.deleteVVipTypeByVipTypeIds(vipTypeIds);
    }

    /**
     * 删除会员类别表信息
     * 
     * @param vipTypeId 会员类别表主键
     * @return 结果
     */
    @Override
    public int deleteVVipTypeByVipTypeId(Long vipTypeId)
    {
        return vVipTypeMapper.deleteVVipTypeByVipTypeId(vipTypeId);
    }
}
