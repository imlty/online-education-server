package top.imlty.service;

import com.github.pagehelper.PageInfo;
import top.imlty.domain.PromotionAd;
import top.imlty.vo.PromotionAdVO;

public interface PromotionAdService {

    /**
     * 广告信息的分页查询
     * @param promotionAdVO
     * @return
     */
    PageInfo<PromotionAd> findAllPromotionAdByPage(PromotionAdVO promotionAdVO);
    /**
     * 广告的动态上下线
     * @param promotionAd
     */
    void updatePromotionStatus(PromotionAd promotionAd);

    /**
     * 新增广告信息
     * @param promotionAd
     */
    void savePromotionAd(PromotionAd promotionAd);

    /**
     * 更新
     * @param promotionAd
     */
    void updatePromotionAd(PromotionAd promotionAd);

    /**
     * 根据id查找广告信息
     * @param id
     * @return
     */
    PromotionAd findPromotionAdById(Integer id);
}
