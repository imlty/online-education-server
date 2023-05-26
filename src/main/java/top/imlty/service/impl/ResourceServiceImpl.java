package top.imlty.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import top.imlty.dao.ResourceMapper;
import top.imlty.domain.Resource;
import top.imlty.service.ResourceService;
import top.imlty.vo.ResourceVO;

import java.util.Date;
import java.util.List;

@Service
public class ResourceServiceImpl implements ResourceService {

    @Autowired
    private ResourceMapper resourceMapper;

    @Override
    public PageInfo<Resource> findAllResourceByPage(ResourceVO resourceVO) {

        //1.分页查询
        PageHelper.startPage(resourceVO.getCurrentPage(),resourceVO.getPageSize());

        //2.查询
        List<Resource> resourceList = resourceMapper.findAllResourceByPage(resourceVO);

        //3.创建并构建进pageInfo对象
        PageInfo<Resource> pageInfo = new PageInfo<>(resourceList);

        return pageInfo;
    }

    @Override
    public void saveResource(Resource resource) {
        resource.setCreatedTime(new Date());
        resource.setUpdatedTime(new Date());
        resource.setCreatedBy("system");
        resource.setUpdatedBy("system");


        resourceMapper.saveResource(resource);
    }

    @Override
    public void updateResource(Resource resource) {
        resource.setCreatedTime(new Date());
        resource.setUpdatedTime(new Date());
        resource.setCreatedBy("system");
        resource.setUpdatedBy("system");

        resourceMapper.updateResource(resource);
    }

    @Override
    public void deleteResource(Integer id) {
        resourceMapper.deleteResource(id);
    }
}
