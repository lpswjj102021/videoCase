package com.ruoyi.system.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.ruoyi.common.utils.DateUtils;
import com.ruoyi.common.utils.StringUtils;
import com.ruoyi.system.domain.VPerson;
import com.ruoyi.system.service.IVPersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.VFxPersonMapper;
import com.ruoyi.system.domain.VFxPerson;
import com.ruoyi.system.service.IVFxPersonService;
import org.springframework.transaction.annotation.Transactional;

/**
 * 分销商信息Service业务层处理
 * 
 * @author wahaha
 * @date 2025-03-08
 */
@Service
public class VFxPersonServiceImpl implements IVFxPersonService 
{
    @Autowired
    private VFxPersonMapper vFxPersonMapper;

    @Autowired
    private IVPersonService vPersonService;

    /**
     * 查询分销商信息
     * 
     * @param vFxId 分销商信息主键
     * @return 分销商信息
     */
    @Override
    public VFxPerson selectVFxPersonByVFxId(Long vFxId)
    {
        return vFxPersonMapper.selectVFxPersonByVFxId(vFxId);
    }

    /**
     * 查询分销商信息列表
     * 
     * @param vFxPerson 分销商信息
     * @return 分销商信息
     */
    @Override
    public List selectVFxPersonList(VFxPerson vFxPerson)
    {
        List back = new ArrayList();
        List<VFxPerson> slist = vFxPersonMapper.selectVFxPersonList(vFxPerson);
        for (VFxPerson vFx : slist) {
            VPerson vPerson = vPersonService.selectVPersonByPersonId(vFx.getvFxPid());

            Map map = new HashMap();
            map.put("vFx", vFx);
            map.put("vPerson", vPerson);
            back.add(map);
        }
        return back;
    }

    /**
     * 新增分销商信息
     * 
     * @param vFxPerson 分销商信息
     * @return 结果
     */
    @Transactional
    @Override
    public int insertVFxPerson(VFxPerson vFxPerson)
    {
        if (vFxPerson.getvFxFid() > 0) {
            vFxPerson.setCreateTime(DateUtils.getNowDate());
            if (vFxPersonMapper.insertVFxPerson(vFxPerson) > 0) {
                VFxPerson vFx = vFxPersonMapper.selectVFxPersonByVFxId(Long.parseLong(vFxPerson.getvFxFartherId()));
                String str = vFxPerson.getvFxPid() + "";
                if (StringUtils.isNotNull(vFx.getvFxTeam())) {
                    str = vFx.getvFxTeam() + "," + vFxPerson.getvFxPid();
                }
                vFx.setvFxTeam(str);
                return vFxPersonMapper.updateVFxPerson(vFx);
            } else {
                return 0;
            }
        } else {
            vFxPerson.setCreateTime(DateUtils.getNowDate());
            return vFxPersonMapper.insertVFxPerson(vFxPerson);
        }
    }

    /**
     * 修改分销商信息
     * 
     * @param vFxPerson 分销商信息
     * @return 结果
     */
    @Override
    public int updateVFxPerson(VFxPerson vFxPerson)
    {
        return vFxPersonMapper.updateVFxPerson(vFxPerson);
    }

    /**
     * 批量删除分销商信息
     * 
     * @param vFxIds 需要删除的分销商信息主键
     * @return 结果
     */
    @Override
    public int deleteVFxPersonByVFxIds(Long[] vFxIds)
    {
        return vFxPersonMapper.deleteVFxPersonByVFxIds(vFxIds);
    }

    /**
     * 删除分销商信息信息
     * 
     * @param vFxId 分销商信息主键
     * @return 结果
     */
    @Override
    public int deleteVFxPersonByVFxId(Long vFxId)
    {
        return vFxPersonMapper.deleteVFxPersonByVFxId(vFxId);
    }

    /**
     * 自定义查询规则_查询
     *
     * @param sql
     * @return 结果
     */
    public List selectVFxPersonBySql(String sql){
        List back = new ArrayList();
        List<VFxPerson> slist = vFxPersonMapper.selectVFxPersonBySql(sql);
        for (VFxPerson vFx : slist) {
            VPerson vPerson = vPersonService.selectVPersonByPersonId(vFx.getvFxPid());

            Map map = new HashMap();
            map.put("vFx", vFx);
            map.put("vPerson", vPerson);
            back.add(map);
        }
        return back;
    };
}
