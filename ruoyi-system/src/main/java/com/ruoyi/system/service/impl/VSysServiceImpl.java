package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.VSysMapper;
import com.ruoyi.system.domain.VSys;
import com.ruoyi.system.service.IVSysService;

/**
 * 系统信息Service业务层处理
 * 
 * @author wahaha
 * @date 2025-03-09
 */
@Service
public class VSysServiceImpl implements IVSysService 
{
    @Autowired
    private VSysMapper vSysMapper;

    /**
     * 查询系统信息
     * 
     * @param sysId 系统信息主键
     * @return 系统信息
     */
    @Override
    public VSys selectVSysBySysId(Long sysId)
    {
        return vSysMapper.selectVSysBySysId(sysId);
    }

    /**
     * 查询系统信息列表
     * 
     * @param vSys 系统信息
     * @return 系统信息
     */
    @Override
    public List<VSys> selectVSysList(VSys vSys)
    {
        return vSysMapper.selectVSysList(vSys);
    }

    /**
     * 新增系统信息
     * 
     * @param vSys 系统信息
     * @return 结果
     */
    @Override
    public int insertVSys(VSys vSys)
    {
        return vSysMapper.insertVSys(vSys);
    }

    /**
     * 修改系统信息
     * 
     * @param vSys 系统信息
     * @return 结果
     */
    @Override
    public int updateVSys(VSys vSys)
    {
        return vSysMapper.updateVSys(vSys);
    }

    /**
     * 批量删除系统信息
     * 
     * @param sysIds 需要删除的系统信息主键
     * @return 结果
     */
    @Override
    public int deleteVSysBySysIds(Long[] sysIds)
    {
        return vSysMapper.deleteVSysBySysIds(sysIds);
    }

    /**
     * 删除系统信息信息
     * 
     * @param sysId 系统信息主键
     * @return 结果
     */
    @Override
    public int deleteVSysBySysId(Long sysId)
    {
        return vSysMapper.deleteVSysBySysId(sysId);
    }
}
