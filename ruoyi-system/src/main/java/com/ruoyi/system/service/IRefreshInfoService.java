package com.ruoyi.system.service;

import java.util.List;
import com.ruoyi.system.domain.RefreshInfo;

/**
 * 更新表Service接口
 * 
 * @author wahaha
 * @date 2025-03-06
 */
public interface IRefreshInfoService 
{
    /**
     * 查询更新表
     * 
     * @param id 更新表主键
     * @return 更新表
     */
    public RefreshInfo selectRefreshInfoById(Long id);

    /**
     * 查询更新表列表
     * 
     * @param refreshInfo 更新表
     * @return 更新表集合
     */
    public List<RefreshInfo> selectRefreshInfoList(RefreshInfo refreshInfo);

    /**
     * 新增更新表
     * 
     * @param refreshInfo 更新表
     * @return 结果
     */
    public int insertRefreshInfo(RefreshInfo refreshInfo);

    /**
     * 修改更新表
     * 
     * @param refreshInfo 更新表
     * @return 结果
     */
    public int updateRefreshInfo(RefreshInfo refreshInfo);

    /**
     * 批量删除更新表
     * 
     * @param ids 需要删除的更新表主键集合
     * @return 结果
     */
    public int deleteRefreshInfoByIds(Long[] ids);

    /**
     * 删除更新表信息
     * 
     * @param id 更新表主键
     * @return 结果
     */
    public int deleteRefreshInfoById(Long id);
}
