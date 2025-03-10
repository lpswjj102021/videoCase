package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.VFxPerson;

/**
 * 分销商信息Service接口
 * 
 * @author wahaha
 * @date 2025-03-08
 */
public interface IVFxPersonService 
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
    public List selectVFxPersonList(VFxPerson vFxPerson);

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
     * 批量删除分销商信息
     * 
     * @param vFxIds 需要删除的分销商信息主键集合
     * @return 结果
     */
    public int deleteVFxPersonByVFxIds(Long[] vFxIds);

    /**
     * 删除分销商信息信息
     * 
     * @param vFxId 分销商信息主键
     * @return 结果
     */
    public int deleteVFxPersonByVFxId(Long vFxId);

    /**
     * 自定义查询规则_查询
     *
     * @param sql
     * @return 结果
     */
    public List selectVFxPersonBySql(String sql);
}
