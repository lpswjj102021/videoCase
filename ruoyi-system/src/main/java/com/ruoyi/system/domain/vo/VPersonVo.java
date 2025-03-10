package com.ruoyi.system.domain.vo;

import com.ruoyi.por.domain.VVip;
import com.ruoyi.system.domain.VVipType;
import lombok.Data;

@Data
public class VPersonVo {

    private Long personId;

    private String nickName;

    private String avatar;

    private String token;

    private VVip vVip;

    private VVipType vVipType;
}
