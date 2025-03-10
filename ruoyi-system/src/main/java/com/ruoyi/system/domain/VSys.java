package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 系统信息对象 v_sys
 * 
 * @author wahaha
 * @date 2025-03-09
 */
public class VSys extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** ID */
    private Long sysId;

    /** 系统名称 */
    @Excel(name = "系统名称")
    private String sysName;

    /** 系统类型 */
    @Excel(name = "系统类型")
    private String sysType;

    /** ICP备案号 */
    @Excel(name = "ICP备案号")
    private String sysIcp;

    /** 网安备案号 */
    @Excel(name = "网安备案号")
    private String sysPolice;

    /** LOGO */
    @Excel(name = "LOGO")
    private String sysLogo;

    /** 备注 */
    @Excel(name = "备注")
    private String remarks;

    public void setSysId(Long sysId) 
    {
        this.sysId = sysId;
    }

    public Long getSysId() 
    {
        return sysId;
    }

    public void setSysName(String sysName) 
    {
        this.sysName = sysName;
    }

    public String getSysName() 
    {
        return sysName;
    }

    public void setSysType(String sysType) 
    {
        this.sysType = sysType;
    }

    public String getSysType() 
    {
        return sysType;
    }

    public void setSysIcp(String sysIcp) 
    {
        this.sysIcp = sysIcp;
    }

    public String getSysIcp() 
    {
        return sysIcp;
    }

    public void setSysPolice(String sysPolice) 
    {
        this.sysPolice = sysPolice;
    }

    public String getSysPolice() 
    {
        return sysPolice;
    }

    public void setSysLogo(String sysLogo) 
    {
        this.sysLogo = sysLogo;
    }

    public String getSysLogo() 
    {
        return sysLogo;
    }

    public void setRemarks(String remarks) 
    {
        this.remarks = remarks;
    }

    public String getRemarks() 
    {
        return remarks;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("sysId", getSysId())
            .append("sysName", getSysName())
            .append("sysType", getSysType())
            .append("sysIcp", getSysIcp())
            .append("sysPolice", getSysPolice())
            .append("sysLogo", getSysLogo())
            .append("remarks", getRemarks())
            .toString();
    }
}
