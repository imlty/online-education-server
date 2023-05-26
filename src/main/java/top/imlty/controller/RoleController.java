package top.imlty.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import top.imlty.domain.Menu;
import top.imlty.domain.ResourceCategory;
import top.imlty.domain.ResponseResult;
import top.imlty.domain.Role;
import top.imlty.service.MenuService;
import top.imlty.service.RoleService;
import top.imlty.vo.RoleMenuVO;
import top.imlty.vo.RoleResourceVO;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/role")
public class RoleController {

    @Autowired
    private RoleService roleService;

    @Autowired
    private MenuService menuService;

    /**
     * 查询所有角色(条件)
     */
    @RequestMapping("/findAllRole")
    public ResponseResult findAllRole(@RequestBody Role role) {
        System.out.println(role);
        List<Role> list = roleService.findAllRole(role);

        return new ResponseResult(true, 200, "查询角色信息成功", list);
    }

    @PostMapping("/saveOrUpdateRole")
    public ResponseResult saveOrUpdateRole(@RequestBody Role role) {

        ResponseResult result = new ResponseResult(true, 200, "新增角色成功", null);
        //判断
        if (role.getId() != null) {
            //编辑
            roleService.updateRole(role);
            result.setMessage("修改角色信息成功");
        } else {
            //新增
            roleService.saveRole(role);
        }

        return result;
    }

    /**
     * 查询所有的父子菜单的信息(分配菜单的第一个接口)
     */
    @RequestMapping("/findAllMenu")
    public ResponseResult findSubMenuListByPid() {

        //1.-1 表示顶级菜单,在底层就会查询父级菜单和自己菜单
        List<Menu> menuList = menuService.findSubMenuListByPid(-1);

        Map<String, Object> map = new HashMap<>();

        map.put("parentMenuList", menuList);

        return new ResponseResult(true, 200, "查询所有的父子菜单成功", map);

    }

    /**
     * 根据角色id查询关联的菜单id
     */
    @RequestMapping("/findMenuByRoleId")
    public ResponseResult findMenuByRoleId(Integer roleId) {
        List<Integer> list = roleService.findMenuIdByRoleId(roleId);
        return new ResponseResult(true, 200, "根据角色id查询关联菜单id成功", list);
    }

    /**
     * 分配角色
     *
     * @param roleMenuVO roleMenuVO对象:角色id和对应的资源列表
     * @return reponse
     */
    @PostMapping("/roleContextMenu")
    public ResponseResult roleContextMenu(@RequestBody RoleMenuVO roleMenuVO) {

        roleService.roleContextMenu(roleMenuVO);
        return new ResponseResult(true, 200, "分配成功", null);
    }

    /**
     * 删除角色
     */
    @RequestMapping("/deleteRole")
    public ResponseResult deleteRole(Integer id) {
        roleService.deleteRole(id);
        return new ResponseResult(true, 200, "删除角色成功", null);
    }

    /**
     * 回显 根据角色id查询角色的资源信息
     *
     * @param roleId
     * @return
     */
    @RequestMapping("/findResourceListByRoleId")
    public ResponseResult findResourceListByRoleId(Integer roleId) {
        List<ResourceCategory> list = roleService.findResourceListByRoleId(roleId);
        return new ResponseResult(true, 200, "回显响应成功", list);
    }

    /**
     * 为角色分配菜单
     */
    @RequestMapping("/roleContextResource")
    public ResponseResult roleContextResource(@RequestBody RoleResourceVO roleResourceVO) {
        roleService.roleContextResource(roleResourceVO);
        return new ResponseResult(true, 200, "角色分配资源成功", null);
    }
}
