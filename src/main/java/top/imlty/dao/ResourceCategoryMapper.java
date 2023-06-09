package top.imlty.dao;

import org.apache.ibatis.annotations.Mapper;
import top.imlty.domain.ResourceCategory;

import java.util.List;

@Mapper
public interface ResourceCategoryMapper {

    /**
     * 查询所有资源分类
     * @return
     */
    List<ResourceCategory> findAllResourceCategory();

    /**
     * 修改目录信息
     * @param resourceCategory
     */
    void updateResourceCategory(ResourceCategory resourceCategory);

    /**
     * 新增目录
     * @param resourceCategory
     */
    void saveResourceCategory(ResourceCategory resourceCategory);

    /**
     * 根据id删除资源目录
     * @param id
     */
    void deleteResourceCategoryById(Integer id);

}
