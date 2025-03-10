package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.VSys;

/**
 * 系统信息Mapper接口
 * 
 * @author wahaha
 * @date 2025-03-09
 */
public interface VSysMapper 
{
    /**
     * 查询系统信息
     * 
     * @param sysId 系统信息主键
     * @return 系统信息
     */
    public VSys selectVSysBySysId(Long sysId);

    /**
     * 查询系统信息列表
     * 
     * @param vSys 系统信息
     * @return 系统信息集合
     */
    public List<VSys> selectVSysList(VSys vSys);

    /**
     * 新增系统信息
     * 
     * @param vSys 系统信息
     * @return 结果
     */
    public int insertVSys(VSys vSys);

    /**
     * 修改系统信息
     * 
     * @param vSys 系统信息
     * @return 结果
     */
    public int updateVSys(VSys vSys);

    /**
     * 删除系统信息
     * 
     * @param sysId 系统信息主键
     * @return 结果
     */
    public int deleteVSysBySysId(Long sysId);

    /**
     * 批量删除系统信息
     * 
     * @param sysIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteVSysBySysIds(Long[] sysIds);
}
