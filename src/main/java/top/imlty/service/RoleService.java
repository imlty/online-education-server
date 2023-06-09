package top.imlty.service;

import top.imlty.domain.ResourceCategory;
import top.imlty.domain.Role;
import top.imlty.vo.RoleMenuVO;
import top.imlty.vo.RoleResourceVO;

import java.util.List;

public interface RoleService {
    /**
     * 查询所有角色
     */
    List<Role> findAllRole(Role role);

    /**
     * 根据角色id查询菜单的id
     * @param roleId
     * @return
     */
    List<Integer> findMenuIdByRoleId(Integer roleId);

    /**
     * 为角色分配菜单
     */
    void roleContextMenu(RoleMenuVO roleMenuVO);

    /**
     * 删除角色
     */
    void deleteRole(Integer id);

    /**
     * 根据角色id查询目录信息以及相关的资源信息
     * @param roleId
     * @return
     */
    List<ResourceCategory>findResourceListByRoleId(Integer roleId);

    /**
     * 为角色分配资源
     * @param roleResourceVO
     */
    void roleContextResource(RoleResourceVO roleResourceVO);

    /**
     * 编辑角色
     * @param role
     */
    void updateRole(Role role);

    /**
     * 新增角色信息
     * @param role
     */
    void saveRole(Role role);

}
