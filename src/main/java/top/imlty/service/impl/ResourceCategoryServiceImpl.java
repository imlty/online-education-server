package top.imlty.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import top.imlty.dao.ResourceCategoryMapper;
import top.imlty.domain.ResourceCategory;
import top.imlty.service.ResourceCategoryService;

import java.util.Date;
import java.util.List;

@Service
public class ResourceCategoryServiceImpl implements ResourceCategoryService {

    @Autowired
    private ResourceCategoryMapper resourceCategoryMapper;

    @Override
    public List<ResourceCategory> findAllResourceCategory() {
        return resourceCategoryMapper.findAllResourceCategory();
    }

    /**
     * 修改目录
     * @param resourceCategory
     */
    @Override
    public void updateResourceCategory(ResourceCategory resourceCategory) {
        //1.补全信息
        Date date = new Date();
        resourceCategory.setUpdatedBy("system");
        resourceCategory.setUpdatedTime(date);
        resourceCategoryMapper.updateResourceCategory(resourceCategory);
    }

    /**
     * 新增目录
     * @param resourceCategory
     */
    @Override
    public void saveResourceCategory(ResourceCategory resourceCategory) {
        //1.补全信息
        Date date = new Date();
        resourceCategory.setUpdatedBy("system");
        resourceCategory.setCreatedBy("system");
        resourceCategory.setCreatedTime(date);
        resourceCategory.setUpdatedTime(date);
        resourceCategoryMapper.saveResourceCategory(resourceCategory);
    }

    @Override
    public void deleteResourceCategory(Integer id) {
        resourceCategoryMapper.deleteResourceCategoryById(id);
    }
}
