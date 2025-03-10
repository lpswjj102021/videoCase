package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 视频类别对象 v_type
 * 
 * @author ruoyi
 * @date 2025-03-06
 */
public class VType extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 自增ID */
    private Long typeId;

    /** 视频类别 */
    @Excel(name = "视频类别")
    private String typeName;

    /** 状态 */
    @Excel(name = "状态")
    private Long status;

    /** 父级ID */
    @Excel(name = "父级ID")
    private Long typePid;

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

    public void setStatus(Long status) 
    {
        this.status = status;
    }

    public Long getStatus() 
    {
        return status;
    }

    public void setTypePid(Long typePid) 
    {
        this.typePid = typePid;
    }

    public Long getTypePid() 
    {
        return typePid;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("typeId", getTypeId())
            .append("typeName", getTypeName())
            .append("status", getStatus())
            .append("typePid", getTypePid())
            .toString();
    }
}
