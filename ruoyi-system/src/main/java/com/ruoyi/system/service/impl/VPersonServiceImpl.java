package com.ruoyi.system.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.VPersonMapper;
import com.ruoyi.system.domain.VPerson;
import com.ruoyi.system.service.IVPersonService;

/**
 * 用户表Service业务层处理
 * 
 * @author wahaha
 * @date 2025-03-07
 */
@Service
public class VPersonServiceImpl implements IVPersonService 
{
    @Autowired
    private VPersonMapper vPersonMapper;

    /**
     * 查询用户表
     * 
     * @param personId 用户表主键
     * @return 用户表
     */
    @Override
    public VPerson selectVPersonByPersonId(Long personId)
    {
        return vPersonMapper.selectVPersonByPersonId(personId);
    }

    /**
     * 查询用户表列表
     * 
     * @param vPerson 用户表
     * @return 用户表
     */
    @Override
    public List<VPerson> selectVPersonList(VPerson vPerson)
    {
        return vPersonMapper.selectVPersonList(vPerson);
    }

    /**
     * 新增用户表
     * 
     * @param vPerson 用户表
     * @return 结果
     */
    @Override
    public int insertVPerson(VPerson vPerson)
    {
        vPerson.setCreateTime(DateUtils.getNowDate());
        return vPersonMapper.insertVPerson(vPerson);
    }

    /**
     * 修改用户表
     * 
     * @param vPerson 用户表
     * @return 结果
     */
    @Override
    public int updateVPerson(VPerson vPerson)
    {
        return vPersonMapper.updateVPerson(vPerson);
    }

    /**
     * 批量删除用户表
     * 
     * @param personIds 需要删除的用户表主键
     * @return 结果
     */
    @Override
    public int deleteVPersonByPersonIds(Long[] personIds)
    {
        return vPersonMapper.deleteVPersonByPersonIds(personIds);
    }

    /**
     * 删除用户表信息
     * 
     * @param personId 用户表主键
     * @return 结果
     */
    @Override
    public int deleteVPersonByPersonId(Long personId)
    {
        return vPersonMapper.deleteVPersonByPersonId(personId);
    }

    /**
     * 用户登陆
     *
     * @param vPerson 用户信息对象
     */
    public VPerson personLogin(VPerson vPerson){
        return vPersonMapper.personLogin(vPerson);
    };
}
