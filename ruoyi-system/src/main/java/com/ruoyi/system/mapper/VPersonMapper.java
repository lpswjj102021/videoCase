package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.VPerson;

/**
 * 用户表Mapper接口
 * 
 * @author wahaha
 * @date 2025-03-07
 */
public interface VPersonMapper 
{
    /**
     * 查询用户表
     * 
     * @param personId 用户表主键
     * @return 用户表
     */
    public VPerson selectVPersonByPersonId(Long personId);

    /**
     * 查询用户表列表
     * 
     * @param vPerson 用户表
     * @return 用户表集合
     */
    public List<VPerson> selectVPersonList(VPerson vPerson);

    /**
     * 新增用户表
     * 
     * @param vPerson 用户表
     * @return 结果
     */
    public int insertVPerson(VPerson vPerson);

    /**
     * 修改用户表
     * 
     * @param vPerson 用户表
     * @return 结果
     */
    public int updateVPerson(VPerson vPerson);

    /**
     * 删除用户表
     * 
     * @param personId 用户表主键
     * @return 结果
     */
    public int deleteVPersonByPersonId(Long personId);

    /**
     * 批量删除用户表
     * 
     * @param personIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteVPersonByPersonIds(Long[] personIds);

    /**
     * 用户登陆
     *
     * @param acc 账户
     * @param pwd 密码
     */
    public VPerson personLogin(VPerson vPerson);
}
