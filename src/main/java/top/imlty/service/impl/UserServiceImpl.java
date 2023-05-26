package top.imlty.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import top.imlty.dao.UserMapper;
import top.imlty.domain.*;
import top.imlty.service.UserService;
import top.imlty.utils.MD5Utils;
import top.imlty.vo.UserVO;

import java.util.*;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public PageInfo<User> findAllUserByPage(UserVO userVO) {
        //在调用查询之前调用分页
        PageHelper.startPage(userVO.getCurrentPage(), userVO.getPageSize());
        //查询
        List<User> userList = userMapper.findAllUserByPage(userVO);
        //通过PageInfo的有参注入 获得一个PageInfo对象
        PageInfo<User> pageInfo = new PageInfo<>(userList);
        return pageInfo;
    }

    /**
     * 用户登录信息
     *
     * @param user 登陆了用户
     * @return 校验用户
     */
    @Override
    public User login(User user) throws Exception {
        //1.调用mapper方法获取数据库中信息,如果有此用户 查询出来了 包含了密文密码
        User login = userMapper.login(user);
        if (login != null && MD5Utils.verify(user.getPassword(), MD5Utils.md5key, login.getPassword())) {
            //数据库中有数据,并且校验成功
            return login;
        }
        return null;
    }

    @Override
    public List<Role> findUserRelationRoleById(Integer id) {
        return userMapper.findUserRelationRoleById(id);
    }

    @Override
    public void userContextRole(UserVO userVo) {
        //1.清空用户角色关系
        userMapper.deleteUserContextRole(userVo.getUserId());

        //2.添加用户角色关系
        //补全信息
        User_Role_relation userRoleRelation = new User_Role_relation();
        userRoleRelation.setUserId(userVo.getUserId());
        Date date = new Date();
        userRoleRelation.setCreatedTime(date);
        userRoleRelation.setUpdatedTime(date);
        userRoleRelation.setCreatedBy("system");
        userRoleRelation.setUpdatedBy("system");
        //建立中间关系
        for (Integer roleId : userVo.getRoleIdList()) {
            userRoleRelation.setRoleId(roleId);
            userMapper.userContextRole(userRoleRelation);
        }
    }

    /**
     * 根据用户id 获取权限信息
     *
     * @param userId 用户id
     * @return
     */
    @Override
    public ResponseResult getUserPermissions(Integer userId) {
        //1.获取当前用户拥有的角色
        List<Role> roleList = userMapper.findUserRelationRoleById(userId);

        //2.获取角色ID,保存到 list
        List<Integer> list = new ArrayList<>();

        for (Role role : roleList) {
            list.add(role.getId());
        }

        //3.根据角色id查询 父菜单
        List<Menu> parentMenu = userMapper.findParentMenuByRoleId(list);


        //4.封装父菜单下的子菜单
        for (Menu menu : parentMenu) {
            List<Menu> subMenu = userMapper.findSubMenuByPid(menu.getId());
            if (subMenu.size() > 0) {
                menu.setSubMenuList(subMenu);
            } else {
                menu.setSubMenuList(null);
            }
        }

        //5.获取资源权限
        List<Resource> resourceList = userMapper.findResourceByRoleId(list);

        //6.封装数据
        Map<String, Object> map = new HashMap<>();
        map.put("menuList", parentMenu);  //menuList: 菜单权限数据
        map.put("resourceList", resourceList);//resourceList: 资源权限数据

        ResponseResult result = new ResponseResult(true, 200, "响应成功", map);
        return result;
    }

    @Override
    public void updateUserStatus(int id, String status) {
        userMapper.updateUserStatus(id, status);
    }

    @Override
    public User findUserById(String phone) {
        //6.获取当前用户数据
        User user = userMapper.findUserById(phone);
        return user;
    }
}
