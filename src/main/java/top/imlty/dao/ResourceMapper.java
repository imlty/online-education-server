package top.imlty.dao;

import org.apache.ibatis.annotations.Mapper;
import top.imlty.domain.Resource;
import top.imlty.vo.ResourceVO;

import java.util.List;

@Mapper
public interface ResourceMapper {

    /**
     * 资源分页以及多条件查询
     */
    List<Resource> findAllResourceByPage(ResourceVO resourceVO);

    /**
     * 保存资源信息
     *
     * @param resource
     */
    void saveResource(Resource resource);

    /**
     * 更新
     *
     * @param resource
     */
    void updateResource(Resource resource);

    /**
     * 删除资源
     *
     * @param id
     */
    void deleteResource(Integer id);
}
