package top.imlty.controller;

import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import top.imlty.domain.ResponseResult;
import top.imlty.domain.Role;
import top.imlty.domain.User;
import top.imlty.service.UserService;
import top.imlty.vo.UserVO;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

@RestController
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    /**
     * 回显用户&&匹配查询用户
     *
     * @param userVO user视图层对象
     * @return response
     */
    @PostMapping("/findAllUserByPage")
    public ResponseResult findAllUserByPage(@RequestBody UserVO userVO) {

        PageInfo<User> pageInfo = userService.findAllUserByPage(userVO);

        return new ResponseResult(true, 200, "分页多条件成功", pageInfo);
    }

    /**
     * 修改用户状态  ENABLE能登录，DISABLE不能登录
     *
     * @param id     用户id
     * @param status 状态信息
     * @return reponse
     */
    @RequestMapping("/updateUserStatus")
    public ResponseResult updateUserStatus(@RequestParam Integer id, @RequestParam String status) {
        //更换状态
        if ("ENABLE".equalsIgnoreCase(status)) {
            status = "DISABLE";
        } else {
            status = "ENABLE";
        }
        //调用
        userService.updateUserStatus(id, status);

        return new ResponseResult(true, 200, "响应成功", status);

    }

    /**
     * 用户登录校验
     *
     * @param user 用户信息
     * @return reponse
     */
    @RequestMapping("/login")
    public ResponseResult login(User user, HttpServletRequest request) throws Exception {
        //System.out.println(user);
        User login = userService.login(user);

        ResponseResult result = null;
        if (login != null) {
            //保存access_token
            Map<String, Object> map = new HashMap<>();
            String access_token = UUID.randomUUID().toString();
            map.put("access_token", access_token);
            map.put("user_id", login.getId());

            HttpSession session = request.getSession();
            session.setAttribute("user_id", login.getId());
            session.setAttribute("access_token", access_token);

            //获取当前用户数据
            User userInfo = userService.findUserById(user.getPhone());
            map.put("user", userInfo);

            result = new ResponseResult(true, 1, "响应成功", map);
        } else {
            result = new ResponseResult(true, 206, "用户名密码错误", null);
        }


        return result;
    }

    /**
     * 根据用户id回显角色信息
     *
     * @param id 用户id
     * @return response
     */
    @RequestMapping("/findUserRoleById")
    public ResponseResult findUserRoleById(Integer id) {
        List<Role> roleList = userService.findUserRelationRoleById(id);
        return new ResponseResult(true, 200, "回显成功", roleList);
    }

    /**
     * 用户分配角色信息
     *
     * @param userVO user Form表单
     * @return response
     */
    @RequestMapping("/userContextRole")
    public ResponseResult userContextRole(@RequestBody UserVO userVO) {
        userService.userContextRole(userVO);
        return new ResponseResult(true, 200, "分配角色成功", null);
    }

    /**
     * 获取用户权限信息
     *
     * @param request 请求
     * @return response
     */
    @RequestMapping("/getUserPermissions")
    public ResponseResult getUserPermissions(HttpServletRequest request) {
        //1.获取请求头中的token
        String token = request.getHeader("Authorization");

        //2.获取session中的access_token
        HttpSession session = request.getSession();
        String access_token = (String) session.getAttribute("access_token");

        //判断
        if (token.equals(access_token)) {
            int user_id = (Integer) session.getAttribute("user_id");
            return userService.getUserPermissions(user_id);
        } else {
            return new ResponseResult(false, 400, "获取失败", "");
        }
    }
}
