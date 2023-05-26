package top.imlty.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import top.imlty.dao.PromotionAdMapper;
import top.imlty.domain.PromotionAd;
import top.imlty.service.PromotionAdService;
import top.imlty.vo.PromotionAdVO;

import java.util.Date;
import java.util.List;

@Service
public class PromotionAdServiceImpl implements PromotionAdService {

    @Autowired
    private PromotionAdMapper promotionAdMapper;

    /**
     * 分压查询的实现
     * @param promotionAdVO
     * @return
     */
    @Override
    public PageInfo<PromotionAd> findAllPromotionAdByPage(PromotionAdVO promotionAdVO) {


        //1 在查询所有信息之前调用PageHelper方法
        PageHelper.startPage(promotionAdVO.getCurrentPage(),promotionAdVO.getPageSize());

        //2 执行查询所有信息的方法
        List<PromotionAd> promotionAdList = promotionAdMapper.findAllPromotionAdByPage();

        //3 将结果分装到PageInfo对象中
        PageInfo<PromotionAd> pageInfo = new PageInfo<>(promotionAdList);
        return pageInfo;
    }

    @Override
    public void updatePromotionStatus(PromotionAd promotionAd) {
        promotionAd.setUpdateTime(new Date());
        promotionAdMapper.updatePromotionStatus(promotionAd);
    }

    /**
     * 新增广告信息
     * @param promotionAd
     */
    @Override
    public void savePromotionAd(PromotionAd promotionAd) {
        //补全信息
        Date date = new Date();
        promotionAd.setUpdateTime(date);
        promotionAd.setCreateTime(date);

        promotionAdMapper.savePromotionAd(promotionAd);
    }

    @Override
    public void updatePromotionAd(PromotionAd promotionAd) {
        //补全信息
        promotionAd.setUpdateTime(new Date());

        promotionAdMapper.updatePromotionAd(promotionAd);

    }

    @Override
    public PromotionAd findPromotionAdById(Integer id) {
        return promotionAdMapper.findPromotionAdById(id);
    }
}
