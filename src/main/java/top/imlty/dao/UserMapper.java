package top.imlty.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import top.imlty.domain.*;
import top.imlty.vo.UserVO;

import java.util.List;

@Mapper
public interface UserMapper {

    /**
     * 用户信息分页显示
     *
     * @param userVO
     * @return
     */
    List<User> findAllUserByPage(UserVO userVO);

    /**
     * 用户登录(根据用户名查询用户具体的用户信息)
     *
     * @param user
     * @return
     */
    User login(User user);

    /**
     * 根据用户ID清空中间表
     *
     * @param userId
     */
    void deleteUserContextRole(Integer userId);

    /**
     * 分配角色
     *
     * @param user_role_relation
     */
    void userContextRole(User_Role_relation user_role_relation);

    /**
     * 根据用户id 查询用户关联的角色信息
     *
     * @param id
     * @return
     */
    List<Role> findUserRelationRoleById(Integer id);

    /**
     * 根据角色的id值 多次遍历查询顶级菜单
     *
     * @param ids
     * @return
     */
    List<Menu> findParentMenuByRoleId(List<Integer> ids);

    /**
     * 根据父级菜单的id,查询子菜单信息
     *
     * @param pid
     * @return
     */
    List<Menu> findSubMenuByPid(Integer pid);

    /**
     * 根据角色的id值 多次遍历查询的资源信息
     *
     * @param ids
     * @return 资源列表
     */
    List<Resource> findResourceByRoleId(List<Integer> ids);

    /**
     * 修改用户状态信息
     *
     * @param id
     * @param status
     */
    void updateUserStatus(@Param("id") int id, @Param("status") String status);


    /**
     * 根据ID查询用户信息
     */
    User findUserById(String phone);
}
