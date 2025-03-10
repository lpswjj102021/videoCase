package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.RefreshInfoMapper;
import com.ruoyi.system.domain.RefreshInfo;
import com.ruoyi.system.service.IRefreshInfoService;

/**
 * 更新表Service业务层处理
 * 
 * @author wahaha
 * @date 2025-03-06
 */
@Service
public class RefreshInfoServiceImpl implements IRefreshInfoService 
{
    @Autowired
    private RefreshInfoMapper refreshInfoMapper;

    /**
     * 查询更新表
     * 
     * @param id 更新表主键
     * @return 更新表
     */
    @Override
    public RefreshInfo selectRefreshInfoById(Long id)
    {
        return refreshInfoMapper.selectRefreshInfoById(id);
    }

    /**
     * 查询更新表列表
     * 
     * @param refreshInfo 更新表
     * @return 更新表
     */
    @Override
    public List<RefreshInfo> selectRefreshInfoList(RefreshInfo refreshInfo)
    {
        return refreshInfoMapper.selectRefreshInfoList(refreshInfo);
    }

    /**
     * 新增更新表
     * 
     * @param refreshInfo 更新表
     * @return 结果
     */
    @Override
    public int insertRefreshInfo(RefreshInfo refreshInfo)
    {
        return refreshInfoMapper.insertRefreshInfo(refreshInfo);
    }

    /**
     * 修改更新表
     * 
     * @param refreshInfo 更新表
     * @return 结果
     */
    @Override
    public int updateRefreshInfo(RefreshInfo refreshInfo)
    {
        return refreshInfoMapper.updateRefreshInfo(refreshInfo);
    }

    /**
     * 批量删除更新表
     * 
     * @param ids 需要删除的更新表主键
     * @return 结果
     */
    @Override
    public int deleteRefreshInfoByIds(Long[] ids)
    {
        return refreshInfoMapper.deleteRefreshInfoByIds(ids);
    }

    /**
     * 删除更新表信息
     * 
     * @param id 更新表主键
     * @return 结果
     */
    @Override
    public int deleteRefreshInfoById(Long id)
    {
        return refreshInfoMapper.deleteRefreshInfoById(id);
    }
}
