package top.imlty.dao;

import org.apache.ibatis.annotations.Mapper;
import top.imlty.domain.Menu;

import java.util.List;

@Mapper
public interface MenuMapper {

    /**
     * 查询所有的父子菜单信息
     */
    List<Menu> findSubMenuListByPid(Integer pid);

    /**
     * 查询所有菜单信息
     * @return
     */
    List<Menu> findAllMenu();

    /**
     * 根据id查询菜单
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
     * 保存菜单
     * @param menu
     */
    void saveMenu(Menu menu);

    /**
     * 根据id删除菜单
     * @param id
     */
    void deleteMenuById(Integer id);
}
