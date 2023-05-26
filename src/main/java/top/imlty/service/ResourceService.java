package top.imlty.service;

import com.github.pagehelper.PageInfo;
import top.imlty.domain.Resource;
import top.imlty.vo.ResourceVO;

public interface ResourceService {

    /**
     * 资源分页以及多条件查询
     */
    PageInfo<Resource> findAllResourceByPage(ResourceVO resourceVO);

    /**
     * 保存资源信息
     * @param resource
     */
    void saveResource(Resource resource);

    /**
     * 更新资源信息
     * @param resource
     */
    void updateResource(Resource resource);

    /**
     * 删除资源信息
     * @param id
     */
    void deleteResource(Integer id);

}
