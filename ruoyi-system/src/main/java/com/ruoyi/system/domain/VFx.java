package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 分销类别对象 v_fx
 * 
 * @author wahaha
 * @date 2025-03-08
 */
public class VFx extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 分销ID */
    private Long fxId;

    /** 分销级别 */
    @Excel(name = "分销级别")
    private String fxLeave;

    /** 分销类别 */
    @Excel(name = "分销类别")
    private String fxType;

    /** 分销比率 */
    @Excel(name = "分销比率")
    private String fxBl;

    /** 开启状态 */
    @Excel(name = "开启状态")
    private String status;

    /** 提升机制数量 */
    @Excel(name = "提升机制数量")
    private Long fxUp;

    public void setFxId(Long fxId) 
    {
        this.fxId = fxId;
    }

    public Long getFxId() 
    {
        return fxId;
    }

    public void setFxLeave(String fxLeave) 
    {
        this.fxLeave = fxLeave;
    }

    public String getFxLeave() 
    {
        return fxLeave;
    }

    public void setFxType(String fxType) 
    {
        this.fxType = fxType;
    }

    public String getFxType() 
    {
        return fxType;
    }

    public void setFxBl(String fxBl) 
    {
        this.fxBl = fxBl;
    }

    public String getFxBl() 
    {
        return fxBl;
    }

    public void setStatus(String status) 
    {
        this.status = status;
    }

    public String getStatus() 
    {
        return status;
    }

    public void setFxUp(Long fxUp) 
    {
        this.fxUp = fxUp;
    }

    public Long getFxUp() 
    {
        return fxUp;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("fxId", getFxId())
            .append("fxLeave", getFxLeave())
            .append("fxType", getFxType())
            .append("fxBl", getFxBl())
            .append("status", getStatus())
            .append("createTime", getCreateTime())
            .append("fxUp", getFxUp())
            .toString();
    }
}
