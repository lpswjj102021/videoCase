package com.ruoyi.por.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 会员表对象 v_vip
 * 
 * @author ruoyi
 * @date 2025-03-07
 */
public class VVip extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 自增ID */
    private Long vipId;

    /** 会员类别ID */
    @Excel(name = "会员类别ID")
    private Long vipTypeId;

    /** 用户ID */
    @Excel(name = "用户ID")
    private Long personId;

    /** 到期时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "到期时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date endTime;

    public void setVipId(Long vipId) 
    {
        this.vipId = vipId;
    }

    public Long getVipId() 
    {
        return vipId;
    }

    public void setVipTypeId(Long vipTypeId) 
    {
        this.vipTypeId = vipTypeId;
    }

    public Long getVipTypeId() 
    {
        return vipTypeId;
    }

    public void setPersonId(Long personId) 
    {
        this.personId = personId;
    }

    public Long getPersonId() 
    {
        return personId;
    }

    public void setEndTime(Date endTime) 
    {
        this.endTime = endTime;
    }

    public Date getEndTime() 
    {
        return endTime;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("vipId", getVipId())
            .append("vipTypeId", getVipTypeId())
            .append("personId", getPersonId())
            .append("endTime", getEndTime())
            .toString();
    }
}
