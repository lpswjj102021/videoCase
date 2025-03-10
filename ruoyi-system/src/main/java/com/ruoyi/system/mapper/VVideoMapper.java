package com.ruoyi.system.mapper;

import java.util.List;
import com.ruoyi.system.domain.VVideo;

/**
 * 视频信息Mapper接口
 * 
 * @author wahaha
 * @date 2025-03-06
 */
public interface VVideoMapper 
{
    /**
     * 查询视频信息
     * 
     * @param vodId 视频信息主键
     * @return 视频信息
     */
    public VVideo selectVVideoByVodId(Long vodId);

    /**
     * 查询视频信息列表
     * 
     * @param vVideo 视频信息
     * @return 视频信息集合
     */
    public List<VVideo> selectVVideoList(VVideo vVideo);

    /**
     * 新增视频信息
     * 
     * @param vVideo 视频信息
     * @return 结果
     */
    public int insertVVideo(VVideo vVideo);

    /**
     * 修改视频信息
     * 
     * @param vVideo 视频信息
     * @return 结果
     */
    public int updateVVideo(VVideo vVideo);

    /**
     * 删除视频信息
     * 
     * @param vodId 视频信息主键
     * @return 结果
     */
    public int deleteVVideoByVodId(Long vodId);

    /**
     * 批量删除视频信息
     * 
     * @param vodIds 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteVVideoByVodIds(Long[] vodIds);
}
