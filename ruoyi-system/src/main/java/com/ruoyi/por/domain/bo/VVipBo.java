package com.ruoyi.por.domain.bo;

import lombok.Data;

import java.util.Date;

@Data
public class VVipBo {
    /** 自增ID */
    private Long vipId;
    /** 会员类别ID */
    private Long vipTypeId;
    /** 用户ID */
    private Long personId;
    /** 到期时间 */
    private Date endTime;
}
