package com.ruoyi.system.domain;

import java.math.BigDecimal;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 会员类别表对象 v_vip_type
 * 
 * @author wahaha
 * @date 2025-03-07
 */
public class VVipType extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 自增ID */
    private Long vipTypeId;

    /** 类别名称 */
    @Excel(name = "类别名称")
    private String vipType;

    /** 描述 */
    @Excel(name = "描述")
    private String remarks;

    /** 简介 */
    @Excel(name = "简介")
    private String vipDes;

    /** 单价 */
    @Excel(name = "单价")
    private BigDecimal price;

    /** 单位类型 */
    @Excel(name = "单位类型")
    private String dw;

    /** 状态 */
    @Excel(name = "状态")
    private Boolean status;

    public void setVipTypeId(Long vipTypeId) 
    {
        this.vipTypeId = vipTypeId;
    }

    public Long getVipTypeId() 
    {
        return vipTypeId;
    }

    public void setVipType(String vipType) 
    {
        this.vipType = vipType;
    }

    public String getVipType() 
    {
        return vipType;
    }

    public void setRemarks(String remarks) 
    {
        this.remarks = remarks;
    }

    public String getRemarks() 
    {
        return remarks;
    }

    public void setVipDes(String vipDes) 
    {
        this.vipDes = vipDes;
    }

    public String getVipDes() 
    {
        return vipDes;
    }

    public void setPrice(BigDecimal price) 
    {
        this.price = price;
    }

    public BigDecimal getPrice() 
    {
        return price;
    }

    public void setDw(String dw) 
    {
        this.dw = dw;
    }

    public String getDw() 
    {
        return dw;
    }

    public void setStatus(Boolean status) 
    {
        this.status = status;
    }

    public Boolean getStatus() 
    {
        return status;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("vipTypeId", getVipTypeId())
            .append("vipType", getVipType())
            .append("remarks", getRemarks())
            .append("vipDes", getVipDes())
            .append("price", getPrice())
            .append("dw", getDw())
            .append("status", getStatus())
            .append("createTime", getCreateTime())
            .toString();
    }
}
