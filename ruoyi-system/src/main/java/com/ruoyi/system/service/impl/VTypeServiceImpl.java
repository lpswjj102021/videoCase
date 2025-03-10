package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.VTypeMapper;
import com.ruoyi.system.domain.VType;
import com.ruoyi.system.service.IVTypeService;

/**
 * 视频类别Service业务层处理
 * 
 * @author ruoyi
 * @date 2025-03-06
 */
@Service
public class VTypeServiceImpl implements IVTypeService 
{
    @Autowired
    private VTypeMapper vTypeMapper;

    /**
     * 查询视频类别
     * 
     * @param typeId 视频类别主键
     * @return 视频类别
     */
    @Override
    public VType selectVTypeByTypeId(Long typeId)
    {
        return vTypeMapper.selectVTypeByTypeId(typeId);
    }

    /**
     * 查询视频类别列表
     * 
     * @param vType 视频类别
     * @return 视频类别
     */
    @Override
    public List<VType> selectVTypeList(VType vType)
    {
        return vTypeMapper.selectVTypeList(vType);
    }

    /**
     * 新增视频类别
     * 
     * @param vType 视频类别
     * @return 结果
     */
    @Override
    public int insertVType(VType vType)
    {
        return vTypeMapper.insertVType(vType);
    }

    /**
     * 修改视频类别
     * 
     * @param vType 视频类别
     * @return 结果
     */
    @Override
    public int updateVType(VType vType)
    {
        return vTypeMapper.updateVType(vType);
    }

    /**
     * 批量删除视频类别
     * 
     * @param typeIds 需要删除的视频类别主键
     * @return 结果
     */
    @Override
    public int deleteVTypeByTypeIds(Long[] typeIds)
    {
        return vTypeMapper.deleteVTypeByTypeIds(typeIds);
    }

    /**
     * 删除视频类别信息
     * 
     * @param typeId 视频类别主键
     * @return 结果
     */
    @Override
    public int deleteVTypeByTypeId(Long typeId)
    {
        return vTypeMapper.deleteVTypeByTypeId(typeId);
    }
}
