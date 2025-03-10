package com.ruoyi.system.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.system.mapper.VVideoMapper;
import com.ruoyi.system.domain.VVideo;
import com.ruoyi.system.service.IVVideoService;

/**
 * 视频信息Service业务层处理
 * 
 * @author wahaha
 * @date 2025-03-06
 */
@Service
public class VVideoServiceImpl implements IVVideoService 
{
    @Autowired
    private VVideoMapper vVideoMapper;

    /**
     * 查询视频信息
     * 
     * @param vodId 视频信息主键
     * @return 视频信息
     */
    @Override
    public VVideo selectVVideoByVodId(Long vodId)
    {
        return vVideoMapper.selectVVideoByVodId(vodId);
    }

    /**
     * 查询视频信息列表
     * 
     * @param vVideo 视频信息
     * @return 视频信息
     */
    @Override
    public List<VVideo> selectVVideoList(VVideo vVideo)
    {
        return vVideoMapper.selectVVideoList(vVideo);
    }

    /**
     * 新增视频信息
     * 
     * @param vVideo 视频信息
     * @return 结果
     */
    @Override
    public int insertVVideo(VVideo vVideo)
    {
        return vVideoMapper.insertVVideo(vVideo);
    }

    /**
     * 修改视频信息
     * 
     * @param vVideo 视频信息
     * @return 结果
     */
    @Override
    public int updateVVideo(VVideo vVideo)
    {
        return vVideoMapper.updateVVideo(vVideo);
    }

    /**
     * 批量删除视频信息
     * 
     * @param vodIds 需要删除的视频信息主键
     * @return 结果
     */
    @Override
    public int deleteVVideoByVodIds(Long[] vodIds)
    {
        return vVideoMapper.deleteVVideoByVodIds(vodIds);
    }

    /**
     * 删除视频信息信息
     * 
     * @param vodId 视频信息主键
     * @return 结果
     */
    @Override
    public int deleteVVideoByVodId(Long vodId)
    {
        return vVideoMapper.deleteVVideoByVodId(vodId);
    }
}
