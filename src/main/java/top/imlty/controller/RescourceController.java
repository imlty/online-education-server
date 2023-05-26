package top.imlty.controller;

import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import top.imlty.domain.Resource;
import top.imlty.domain.ResponseResult;
import top.imlty.service.ResourceService;
import top.imlty.vo.ResourceVO;

@RestController
@RequestMapping("/resource")
public class RescourceController {

    @Autowired
    private ResourceService resourceService;

    /**
     * 查询所有资源信息
     *
     * @param resourceVO 资源传输对象
     * @return reponse
     */
    @PostMapping("/findAllResource")
    public ResponseResult findAllResource(@RequestBody ResourceVO resourceVO) {
        PageInfo<Resource> pageInfo = resourceService.findAllResourceByPage(resourceVO);
        return new ResponseResult(true, 200, "查询信息分页多条件查询成功", pageInfo);
    }

    /*
        添加&编辑
     */
    @RequestMapping("/saveOrUpdateResource")
    public ResponseResult saveOrUpdateResource(@RequestBody Resource resource) {
        System.out.println(resource);
        if (resource.getId() == null) {
            resourceService.saveResource(resource);
        } else {
            resourceService.updateResource(resource);
        }

        ResponseResult responseResult = new ResponseResult(true, 200, "响应成功", "");
        return responseResult;
    }


    @RequestMapping("/deleteResource")
    public ResponseResult deleteResource(Integer id) {

        resourceService.deleteResource(id);
        ResponseResult responseResult = new ResponseResult(true, 200, "响应成功", "");
        return responseResult;
    }
}
