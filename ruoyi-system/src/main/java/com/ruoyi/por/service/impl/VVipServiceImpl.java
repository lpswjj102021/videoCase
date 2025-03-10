package com.ruoyi.por.service.impl;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import com.ruoyi.por.mapper.VVipMapper;
import com.ruoyi.system.domain.VPerson;
import com.ruoyi.system.domain.VVipType;
import com.ruoyi.system.service.IVPersonService;
import com.ruoyi.system.service.IVVipTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.por.domain.VVip;
import com.ruoyi.por.service.IVVipService;
import org.springframework.transaction.annotation.Transactional;

/**
 * 会员表Service业务层处理
 * 
 * @author ruoyi
 * @date 2025-03-07
 */
@Service
public class VVipServiceImpl implements IVVipService 
{
    @Autowired
    private VVipMapper vVipMapper;

    @Autowired
    private IVVipTypeService vVipTypeService;

    @Autowired
    private IVPersonService vPersonService;

    /**
     * 查询会员表
     * 
     * @param vipId 会员表主键
     * @return 会员表
     */
    @Override
    public VVip selectVVipByVipId(Long vipId)
    {
        return vVipMapper.selectVVipByVipId(vipId);
    }

    /**
     * 查询会员表列表
     * 
     * @param vVip 会员表
     * @return 会员表
     */
    @Override
    public List selectVVipList(VVip vVip)
    {
        List backList = new ArrayList<>();
        List<VVip> vVips = vVipMapper.selectVVipList(vVip);
        for (VVip vip : vVips) {
            VVipType vipType = vVipTypeService.selectVVipTypeByVipTypeId(vip.getVipTypeId());
            VPerson person = vPersonService.selectVPersonByPersonId(vip.getPersonId());

            Map map = new HashMap();
            map.put("vip", vip);
            map.put("vipType", vipType);
            map.put("person", person);
            backList.add(map);
        }

        return backList;
    }

    /**
     * 新增会员表
     * 
     * @param vVip 会员表
     * @return 结果
     */
    @Transactional(rollbackFor = Exception.class)
    @Override
    public int insertVVip(VVip vVip)
    {
        return vVipMapper.insertVVip(vVip);
    }

    /**
     * 修改会员表
     * 
     * @param vVip 会员表
     * @return 结果
     */
    @Override
    public int updateVVip(VVip vVip)
    {
        return vVipMapper.updateVVip(vVip);
    }

    /**
     * 批量删除会员表
     * 
     * @param vipIds 需要删除的会员表主键
     * @return 结果
     */
    @Override
    public int deleteVVipByVipIds(Long[] vipIds)
    {
        return vVipMapper.deleteVVipByVipIds(vipIds);
    }

    /**
     * 删除会员表信息
     * 
     * @param vipId 会员表主键
     * @return 结果
     */
    @Override
    public int deleteVVipByVipId(Long vipId)
    {
        return vVipMapper.deleteVVipByVipId(vipId);
    }
}
