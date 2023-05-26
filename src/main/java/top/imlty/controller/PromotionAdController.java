package top.imlty.controller;

import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import top.imlty.domain.PromotionAd;
import top.imlty.domain.ResponseResult;
import top.imlty.service.PromotionAdService;
import top.imlty.vo.PromotionAdVO;

import java.util.HashMap;

/**
 * 广告信息controller层
 */
@RestController
@RequestMapping("/PromotionAd")
public class PromotionAdController {

    @Autowired
    private PromotionAdService promotionAdService;

    /**
     * 分页查询
     *
     * @param promotionAdVO
     * @return
     */
    @RequestMapping("/findAllPromotionAdByPage")
    public ResponseResult findAllAdByPage(PromotionAdVO promotionAdVO) {//没有请求体无需添加@Resquestbody
        //获取页面信息
        PageInfo<PromotionAd> pageInfo = promotionAdService.findAllPromotionAdByPage(promotionAdVO);

        return new ResponseResult(true, 200, "查询当前页成功", pageInfo);
    }

    /**
     * 广告状态的动态更改
     *
     * @param promotionAd
     * @return
     */
    @RequestMapping("/updatePromotionAdStatus")
    public ResponseResult updatePromotionAdStatus(PromotionAd promotionAd) {
        HashMap<String, Integer> map = new HashMap<>();

        map.put("status", promotionAd.getStatus());

        promotionAdService.updatePromotionStatus(promotionAd);

        return new ResponseResult(true, 200, "更新状态成功", map);
    }

    /**
     * 保存或者新增广告信息
     */
    @RequestMapping("/saveOrUpdatePromotionAd")
    public ResponseResult saveOrUpdatePromotionAd(@RequestBody PromotionAd promotionAd) {
        //判断
        System.out.println(promotionAd);
        if (promotionAd.getId() != null) {
            //修改
            promotionAdService.updatePromotionAd(promotionAd);
        } else {
            //新增
            promotionAdService.savePromotionAd(promotionAd);
        }
        return new ResponseResult(true, 200, "广告保存成功", null);
    }

    /**
     * 根据id 回显广告信息
     *
     * @param id
     * @return
     */
    @RequestMapping("/findPromotionAdById")
    public ResponseResult findPromotionAdById(@RequestParam Integer id) {

        PromotionAd promotionAd = promotionAdService.findPromotionAdById(id);

        return new ResponseResult(true, 200, "回显广告位信息成功", promotionAd);
    }
}
