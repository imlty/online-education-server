package top.imlty.service;

import top.imlty.domain.ResourceCategory;

import java.util.List;

public interface ResourceCategoryService {
    /**
     * 查询所有资源分类
     * @return
     */
    List<ResourceCategory> findAllResourceCategory();

    /**
     *  修改资源目录信息
     * @param resourceCategory
     */
    void updateResourceCategory(ResourceCategory resourceCategory);

    /**
     * 新增资源目录信息
     * @param resourceCategory
     */
    void saveResourceCategory(ResourceCategory resourceCategory);

    /**
     * 根据id删除资源目录
     * @param id
     */
    void deleteResourceCategory(Integer id);
}
