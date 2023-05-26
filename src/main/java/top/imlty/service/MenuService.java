package top.imlty.service;

import com.github.pagehelper.PageInfo;
import top.imlty.domain.Menu;
import top.imlty.vo.*;

import java.util.List;

public interface MenuService {
    /**
     * 查询所有的父子菜单信息
     */
    List<Menu> findSubMenuListByPid(Integer pid);
    /**
     * 查询所有菜单信息
     * @return
     */
    PageInfo<Menu> findAllMenu(MenuVO menuVo);

    /**
     * 根据id 查询菜单信息
     * @param id
     * @return
     */
    Menu findMenuById(Integer id);

    /**
     * 更新菜单
     * @param menu
     */
    void updateMenu(Menu menu);

    /**
     * 新增菜单
     * @param menu
     */
    void saveMenu(Menu menu);

    /**
     * 根据id删除菜单
     * @param id
     */
    void deleteMenuById(Integer id);
}
