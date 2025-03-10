package com.ruoyi.web.controller.common;

import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.core.page.TableDataInfo;
import com.ruoyi.common.core.redis.RedisCache;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.utils.AESutil;
import com.ruoyi.por.domain.VVip;
import com.ruoyi.por.domain.bo.VVipBo;
import com.ruoyi.por.service.IVVipService;
import com.ruoyi.system.domain.VPerson;
import com.ruoyi.system.domain.VSys;
import com.ruoyi.system.domain.VVideo;
import com.ruoyi.system.domain.VVipType;
import com.ruoyi.system.domain.vo.VPersonVo;
import com.ruoyi.system.service.IVPersonService;
import com.ruoyi.system.service.IVSysService;
import com.ruoyi.system.service.IVVideoService;
import com.ruoyi.system.service.IVVipTypeService;
import lombok.SneakyThrows;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.concurrent.TimeUnit;


/**
 * 前端页面通用接口层
 * @author Mr.Wang
 * @Date 2025/03/07
 */

@RestController
public class webController extends BaseController {

    @Autowired
    private IVPersonService vPersonService;

    @Autowired
    private IVVipService vVipService;

    @Autowired
    private IVVipTypeService vVipTypeService;

    @Autowired
    private RedisCache redisCache;

    @Autowired
    private AESutil aesutil;

    @Autowired
    private IVVideoService vVideoService;

    @Autowired
    private IVSysService vSysService;

    /**
     * 查询系统信息列表
     */
    @GetMapping("/web/sysList")
    public AjaxResult list()
    {
        List<VSys> list = vSysService.selectVSysList(new VSys());
        return success(list);
    }


    /**
     * 充值会员信息
     */
    @PostMapping("/web/resetVVip")
    public AjaxResult resetVVip(VVipBo vVipBo)
    {
        VVip vVip = new VVip();
        BeanUtils.copyProperties(vVipBo, vVip);
        return AjaxResult.success(vVipService.insertVVip(vVip));
    }



    /**
     * 查询会员类别信息
     */
    @GetMapping("/web/vTypeList")
    public TableDataInfo vTypeList(VVipType vVipType)
    {
        startPage();
        List<VVipType> list = vVipTypeService.selectVVipTypeList(vVipType);
        return getDataTable(list);
    }


    /**
     * 用户注册
     */
    @PostMapping("/personRegister")
    @SneakyThrows
    public AjaxResult personRegister(@RequestBody VPerson vPerson) {
        VPerson vPersonBo = new VPerson();
        vPersonBo.setAcc(vPerson.getAcc());
        List<VPerson> vPersonList = vPersonService.selectVPersonList(vPersonBo);
        if (vPersonList.size() > 0) {
            return AjaxResult.success("账号已存在");
        } else {
            return AjaxResult.success(vPersonService.insertVPerson(vPerson));
        }
    }


    /**
     * 用户登陆
     */
    @PostMapping("/personLogin")
    @SneakyThrows
    public AjaxResult personLogin(@RequestBody VPerson vPerson) {
        AjaxResult ajax = AjaxResult.success();
        VPerson vv = vPersonService.personLogin(vPerson);
        VPersonVo vPersonVo = new VPersonVo();
        BeanUtils.copyProperties(vv, vPersonVo); // 修改: 将VPerson的属性值拷贝到VPersonVo中
        vPersonVo.setToken(aesutil.AESEncrypt(vv.getAcc() + vv.getPwd() + vv.getNickName()));
        VVip vVip = vVipService.selectVVipByVipId(vv.getPersonId());
        vPersonVo.setVVip(vVip);
        vPersonVo.setVVipType(vVipTypeService.selectVVipTypeByVipTypeId(vVip.getVipTypeId()));

        redisCache.setCacheObject(vv.getAcc(), vPersonVo.getToken(), 20, TimeUnit.MINUTES);
        ajax.put("data", vPersonVo);
        return ajax;
    }


    /**
     * 查询用户信息
     */
    @GetMapping("/web/personInfo")
    public AjaxResult personInfo(Long personId)
    {
        AjaxResult ajax = AjaxResult.success();
        VPerson vPerson = vPersonService.selectVPersonByPersonId(personId);
        ajax.put("data", vPerson);
        return ajax;
    }


    /**
     * 获取视频列表信息
     */
    @GetMapping("/web/videoList")
    public TableDataInfo videoList(VVideo vVideo)
    {
        startPage();
        List<VVideo> list = vVideoService.selectVVideoList(vVideo);
        return getDataTable(list);
    }
}
