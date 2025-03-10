package com.ruoyi.system.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 视频信息对象 v_video
 * 
 * @author wahaha
 * @date 2025-03-06
 */
public class VVideo extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 自增ID */
    private Long vodId;

    /** 名称 */
    @Excel(name = "名称")
    private String vodName;

    /** 类别ID */
    private Long typeId;

    /** 类别名称 */
    @Excel(name = "类别名称")
    private String typeName;

    /** 拼音名称 */
    private String vodEn;

    /** 视频上传日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "视频上传日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date vodCreateTime;

    /** 备注信息 */
    @Excel(name = "备注信息")
    private String vodRemarks;

    /** 视频播放格式 */
    @Excel(name = "视频播放格式")
    private String vodPlayForm;

    /** 视频背景图片 */
    @Excel(name = "视频背景图片")
    private String vodImg;

    /** 视频播放时长 */
    @Excel(name = "视频播放时长")
    private Long vodTimes;

    /** 地区信息 */
    @Excel(name = "地区信息")
    private String vodArea;

    /** 视频主演 */
    @Excel(name = "视频主演")
    private String vodActor;

    /** 视频播放地址 */
    @Excel(name = "视频播放地址")
    private String vodUrl;

    /** 状态 */
    @Excel(name = "状态")
    private Long status;

    public void setVodId(Long vodId) 
    {
        this.vodId = vodId;
    }

    public Long getVodId() 
    {
        return vodId;
    }

    public void setVodName(String vodName) 
    {
        this.vodName = vodName;
    }

    public String getVodName() 
    {
        return vodName;
    }

    public void setTypeId(Long typeId) 
    {
        this.typeId = typeId;
    }

    public Long getTypeId() 
    {
        return typeId;
    }

    public void setTypeName(String typeName) 
    {
        this.typeName = typeName;
    }

    public String getTypeName() 
    {
        return typeName;
    }

    public void setVodEn(String vodEn) 
    {
        this.vodEn = vodEn;
    }

    public String getVodEn() 
    {
        return vodEn;
    }

    public void setVodCreateTime(Date vodCreateTime) 
    {
        this.vodCreateTime = vodCreateTime;
    }

    public Date getVodCreateTime() 
    {
        return vodCreateTime;
    }

    public void setVodRemarks(String vodRemarks) 
    {
        this.vodRemarks = vodRemarks;
    }

    public String getVodRemarks() 
    {
        return vodRemarks;
    }

    public void setVodPlayForm(String vodPlayForm) 
    {
        this.vodPlayForm = vodPlayForm;
    }

    public String getVodPlayForm() 
    {
        return vodPlayForm;
    }

    public void setVodImg(String vodImg) 
    {
        this.vodImg = vodImg;
    }

    public String getVodImg() 
    {
        return vodImg;
    }

    public void setVodTimes(Long vodTimes) 
    {
        this.vodTimes = vodTimes;
    }

    public Long getVodTimes() 
    {
        return vodTimes;
    }

    public void setVodArea(String vodArea) 
    {
        this.vodArea = vodArea;
    }

    public String getVodArea() 
    {
        return vodArea;
    }

    public void setVodActor(String vodActor) 
    {
        this.vodActor = vodActor;
    }

    public String getVodActor() 
    {
        return vodActor;
    }

    public void setVodUrl(String vodUrl) 
    {
        this.vodUrl = vodUrl;
    }

    public String getVodUrl() 
    {
        return vodUrl;
    }

    public void setStatus(Long status) 
    {
        this.status = status;
    }

    public Long getStatus() 
    {
        return status;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("vodId", getVodId())
            .append("vodName", getVodName())
            .append("typeId", getTypeId())
            .append("typeName", getTypeName())
            .append("vodEn", getVodEn())
            .append("vodCreateTime", getVodCreateTime())
            .append("vodRemarks", getVodRemarks())
            .append("vodPlayForm", getVodPlayForm())
            .append("vodImg", getVodImg())
            .append("vodTimes", getVodTimes())
            .append("vodArea", getVodArea())
            .append("vodActor", getVodActor())
            .append("vodUrl", getVodUrl())
            .append("status", getStatus())
            .toString();
    }
}
