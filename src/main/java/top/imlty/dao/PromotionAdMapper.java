package top.imlty.dao;

import org.apache.ibatis.annotations.Mapper;
import top.imlty.domain.PromotionAd;

import java.util.List;

/**
 * 广告信息处理
 */
@Mapper
public interface PromotionAdMapper {

    /**
     * 分页查询信息
     */
    List<PromotionAd> findAllPromotionAdByPage();

    /**
     * 广告的动态上下线
     * @param promotionAd
     */
    void updatePromotionStatus(PromotionAd promotionAd);

    /**
     * 增加广告
     * @param promotionAd
     */
    void savePromotionAd(PromotionAd promotionAd);

    /**
     * 编辑广告信息
     * @param promotionAd
     */
    void updatePromotionAd(PromotionAd promotionAd);

    /**
     * 回显广告信息
     * @param id
     * @return
     */
    PromotionAd findPromotionAdById(Integer id);

}
