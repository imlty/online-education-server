package top.imlty.controller;

import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import top.imlty.domain.Menu;
import top.imlty.domain.ResponseResult;
import top.imlty.service.MenuService;
import top.imlty.vo.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/menu")
public class MenuController {

    @Autowired
    private MenuService menuService;

    /**
     * 查询所有菜单信息
     */
    @RequestMapping("/findAllMenu")
    public ResponseResult findAllMenu(MenuVO menuVO) {
        PageInfo<Menu> list = menuService.findAllMenu(menuVO);

        return new ResponseResult(true, 200, "查询所有菜单信息成功", list);
    }

    /**
     * 回显菜单信息
     */
    @RequestMapping("/findMenuInfoById")
    public ResponseResult findMenuInfoById(Integer id) {
        //判断当前是更新还是新增操作  -1:新增
        ResponseResult result = new ResponseResult(true, 200, null, null);
        Map<String, Object> map = new HashMap<>();
        List<Menu> menuList = menuService.findSubMenuListByPid(-1);//查询所有主菜单信息
        if (id == -1) {
            //添加回显操作
            map.put("menuInfo", null);
            map.put("parentMenuList", menuList);
            result.setMessage("添加回显成功");
        } else {
            //修改的回显
            Menu menu = menuService.findMenuById(id);//这是显示的菜单信息
            map.put("menuInfo", menu);
            map.put("parentMenuList", menuList);
            result.setMessage("修改回显成功");
        }
        System.out.println(map);
        result.setContent(map);
        return result;
    }

    /**
     * 新建&修改菜单
     */
    @RequestMapping("/saveOrUpdateMenu")
    public ResponseResult saveOrUpdateMenu(@RequestBody Menu menu) {

        try {
            if (menu.getId() != null) {
                //修改操作
                menuService.updateMenu(menu);
                ResponseResult result = new ResponseResult(true, 200, "响应成功", null);
                return result;
            } else {
                //新增操作
                menuService.saveMenu(menu);
                ResponseResult result = new ResponseResult(true, 200, "响应成功", null);
                return result;
            }
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /**
     * 删除菜单
     */
    @RequestMapping("deleteMenu")
    public ResponseResult deleteMenu(Integer id) {
        //
        menuService.deleteMenuById(id);
        return new ResponseResult(true, 200, "删除菜单成功", null);
    }
}
