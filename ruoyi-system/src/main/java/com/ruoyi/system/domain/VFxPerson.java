package com.ruoyi.system.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 分销商信息对象 v_fx_person
 * 
 * @author wahaha
 * @date 2025-03-08
 */
public class VFxPerson extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 分销ID */
    private Long vFxId;

    /** 分销用户ID */
    @Excel(name = "分销用户ID")
    private Long vFxPid;

    /** 分销级别ID */
    @Excel(name = "分销级别ID")
    private Long vFxFid;

    /** 分销级别 */
    @Excel(name = "分销级别")
    private String vFxFname;

    /** 团队成员 */
    @Excel(name = "团队成员")
    private String vFxTeam;

    /** 父级ID */
    @Excel(name = "父级ID")
    private String vFxFartherId;

    /** 父级姓名 */
    @Excel(name = "父级姓名")
    private String vFxFartherName;

    public String getvFxFartherId() {
        return vFxFartherId;
    }

    public void setvFxFartherId(String vFxFartherId) {
        this.vFxFartherId = vFxFartherId;
    }

    public String getvFxFartherName() {
        return vFxFartherName;
    }

    public void setvFxFartherName(String vFxFartherName) {
        this.vFxFartherName = vFxFartherName;
    }

    public void setvFxId(Long vFxId)
    {
        this.vFxId = vFxId;
    }

    public Long getvFxId() 
    {
        return vFxId;
    }

    public void setvFxPid(Long vFxPid) 
    {
        this.vFxPid = vFxPid;
    }

    public Long getvFxPid() 
    {
        return vFxPid;
    }

    public void setvFxFid(Long vFxFid) 
    {
        this.vFxFid = vFxFid;
    }

    public Long getvFxFid() 
    {
        return vFxFid;
    }

    public void setvFxFname(String vFxFname) 
    {
        this.vFxFname = vFxFname;
    }

    public String getvFxFname() 
    {
        return vFxFname;
    }

    public void setvFxTeam(String vFxTeam) 
    {
        this.vFxTeam = vFxTeam;
    }

    public String getvFxTeam() 
    {
        return vFxTeam;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("vFxId", getvFxId())
            .append("vFxPid", getvFxPid())
            .append("vFxFid", getvFxFid())
            .append("vFxFname", getvFxFname())
            .append("vFxTeam", getvFxTeam())
            .append("createTime", getCreateTime())
            .toString();
    }
}
