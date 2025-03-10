package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.VType;

/**
 * 视频类别Mapper接口
 * 
 * @author ruoyi
 * @date 2025-03-06
 */
public interface VTypeMapper 
{
    /**
     * 查询视频类别
     * 
     * @param typeId 视频类别主键
     * @return 视频类别
     */
    public VType selectVTypeByTypeId(Long typeId);

    /**
     * 查询视频类别列表
     * 
     * @param vType 视频类别
     * @return 视频类别集合
     */
    public List<VType> selectVTypeList(VType vType);

    /**
     * 新增视频类别
     * 
     * @param vType 视频类别
     * @return 结果
     */
    public int insertVType(VType vType);

    /**
     * 修改视频类别
     * 
     * @param vType 视频类别
     * @return 结果
     */
    public int updateVType(VType vType);

    /**
     * 删除视频类别
     * 
     * @param typeId 视频类别主键
     * @return 结果
     */
    public int deleteVTypeByTypeId(Long typeId);

    /**
     * 批量删除视频类别
     * 
     * @param typeIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteVTypeByTypeIds(Long[] typeIds);
}
