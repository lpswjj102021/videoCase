package com.ruoyi.system.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 用户表对象 v_person
 * 
 * @author wahaha
 * @date 2025-03-07
 */
public class VPerson extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 自增ID */
    private Long personId;

    /** 账号 */
    @Excel(name = "账号")
    private String acc;

    /** 密码 */
    @Excel(name = "密码")
    private String pwd;

    /** 昵称 */
    @Excel(name = "昵称")
    private String nickName;

    /** 电话号码 */
    @Excel(name = "电话号码")
    private String phone;

    /** 头像 */
    @Excel(name = "头像")
    private String avatar;

    /** 性别 */
    @Excel(name = "性别")
    private String sex;

    /** 出生日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "出生日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date borthDay;

    /** 验证码 */
    private String code;

    /** uuid */
    private String uuid;

    public String getUuid() {
        return uuid;
    }

    public void setUuid(String uuid) {
        this.uuid = uuid;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public void setPersonId(Long personId)
    {
        this.personId = personId;
    }

    public Long getPersonId() 
    {
        return personId;
    }

    public void setAcc(String acc) 
    {
        this.acc = acc;
    }

    public String getAcc() 
    {
        return acc;
    }

    public void setPwd(String pwd) 
    {
        this.pwd = pwd;
    }

    public String getPwd() 
    {
        return pwd;
    }

    public void setNickName(String nickName) 
    {
        this.nickName = nickName;
    }

    public String getNickName() 
    {
        return nickName;
    }

    public void setPhone(String phone) 
    {
        this.phone = phone;
    }

    public String getPhone() 
    {
        return phone;
    }

    public void setAvatar(String avatar) 
    {
        this.avatar = avatar;
    }

    public String getAvatar() 
    {
        return avatar;
    }

    public void setSex(String sex) 
    {
        this.sex = sex;
    }

    public String getSex() 
    {
        return sex;
    }

    public void setBorthDay(Date borthDay) 
    {
        this.borthDay = borthDay;
    }

    public Date getBorthDay() 
    {
        return borthDay;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("personId", getPersonId())
            .append("acc", getAcc())
            .append("pwd", getPwd())
            .append("nickName", getNickName())
            .append("createTime", getCreateTime())
            .append("phone", getPhone())
            .append("avatar", getAvatar())
            .append("sex", getSex())
            .append("borthDay", getBorthDay())
            .toString();
    }
}
