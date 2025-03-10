package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.VFxPerson;

/**
 * 分销商信息Mapper接口
 * 
 * @author wahaha
 * @date 2025-03-08
 */
public interface VFxPersonMapper 
{
    /**
     * 查询分销商信息
     * 
     * @param vFxId 分销商信息主键
     * @return 分销商信息
     */
    public VFxPerson selectVFxPersonByVFxId(Long vFxId);

    /**
     * 查询分销商信息列表
     * 
     * @param vFxPerson 分销商信息
     * @return 分销商信息集合
     */
    public List<VFxPerson> selectVFxPersonList(VFxPerson vFxPerson);

    /**
     * 新增分销商信息
     * 
     * @param vFxPerson 分销商信息
     * @return 结果
     */
    public int insertVFxPerson(VFxPerson vFxPerson);

    /**
     * 修改分销商信息
     * 
     * @param vFxPerson 分销商信息
     * @return 结果
     */
    public int updateVFxPerson(VFxPerson vFxPerson);

    /**
     * 删除分销商信息
     * 
     * @param vFxId 分销商信息主键
     * @return 结果
     */
    public int deleteVFxPersonByVFxId(Long vFxId);

    /**
     * 批量删除分销商信息
     * 
     * @param vFxIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteVFxPersonByVFxIds(Long[] vFxIds);

    /**
     * 自定义查询规则
     *
     */
    public List<VFxPerson> selectVFxPersonBySql(String sql);
}
