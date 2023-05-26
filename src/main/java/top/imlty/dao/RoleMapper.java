package top.imlty.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import top.imlty.domain.*;

import java.util.List;

@Mapper
public interface RoleMapper {
    /**
     * 查询所有角色
     */
    List<Role> findAllRole(Role role);

    /**
     * 根据角色id查询菜单的id
     *
     * @param roleId
     * @return
     */
    List<Integer> findMenuIdByRoleId(Integer roleId);

    /**
     * 清空中间表的关联关系
     */
    void deleteRoleContextMenuByRoleId(Integer id);

    /**
     * 为角色分配菜单信息
     */
    void RoleContextMenu(Role_menu_relation roleMenuRelation);

    /**
     * 删除角色
     */
    void deleteRole(Integer id);

    List<ResourceCategory> findResourceCategoryListByRoleId(Integer roleId);

    /**
     * 根据角色id 和 资源目录id 查询信息
     *
     * @param roleId
     * @param c_id
     * @return
     */
    List<Resource> findResourceListByRoleId(@Param("roleId") Integer roleId, @Param("c_id") Integer c_id);

    /**
     * 根据角色ID 删除角色与资源的关联关系
     */
    void deleteRoleContextResourcesByRoleId(Integer id);

    /**
     * 为角色分配资源
     */
    void RoleContextResources(RoleResourceRelation roleResourceRelation);

    /**
     * 编辑修改角色
     *
     * @param role
     */
    void updateRole(Role role);

    /**
     * 新增角色
     *
     * @param role
     */
    void saveRole(Role role);
}
