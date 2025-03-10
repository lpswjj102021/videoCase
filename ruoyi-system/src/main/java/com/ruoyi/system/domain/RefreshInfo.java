package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 更新表对象 refresh_info
 * 
 * @author wahaha
 * @date 2025-03-06
 */
public class RefreshInfo extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 自增ID */
    private Long id;

    /** 更新类别 */
    @Excel(name = "更新类别")
    private String refreshType;

    /** 更新状态 */
    @Excel(name = "更新状态")
    private String refreshStatus;

    /** 更新标识符 */
    @Excel(name = "更新标识符")
    private String refreshTik;

    /** 更新标识符 */
    @Excel(name = "脚本路径")
    private String refreshPython;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }

    public void setRefreshType(String refreshType) 
    {
        this.refreshType = refreshType;
    }

    public String getRefreshType() 
    {
        return refreshType;
    }

    public void setRefreshStatus(String refreshStatus) 
    {
        this.refreshStatus = refreshStatus;
    }

    public String getRefreshStatus() 
    {
        return refreshStatus;
    }

    public void setRefreshTik(String refreshTik) 
    {
        this.refreshTik = refreshTik;
    }

    public String getRefreshTik() 
    {
        return refreshTik;
    }

    public void setRefreshPython(String refreshPython)
    {
        this.refreshPython = refreshPython;
    }

    public String getRefreshPython()
    {
        return refreshPython;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("refreshType", getRefreshType())
            .append("refreshStatus", getRefreshStatus())
            .append("refreshTik", getRefreshTik())
            .append("refreshPython", getRefreshPython())
            .toString();
    }
}
