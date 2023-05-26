package top.imlty.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import top.imlty.dao.MenuMapper;
import top.imlty.domain.Menu;
import top.imlty.service.MenuService;
import top.imlty.vo.MenuVO;

import java.util.Date;
import java.util.List;

@Service
public class MenuServiceImpl implements MenuService {

    @Autowired
    private MenuMapper menuMapper;

    @Override
    public List<Menu> findSubMenuListByPid(Integer pid) {
        return menuMapper.findSubMenuListByPid(pid);
    }

    @Override
    public PageInfo<Menu> findAllMenu(MenuVO menuVO) {

        //1.传入分页所需参数
        PageHelper.startPage(menuVO.getCurrentPage(),menuVO.getPageSize());
        //2.查询
        List<Menu> menuList = menuMapper.findAllMenu();
        //3.获取pageInfo对象
        PageInfo<Menu> pageInfo = new PageInfo<>(menuList);
        return pageInfo;
    }

    @Override
    public Menu findMenuById(Integer id) {
        return menuMapper.findMenuById(id);
    }

    @Override
    public void updateMenu(Menu menu) {
        Date date = new Date();
        menu.setUpdatedTime(date);
        menu.setCreatedBy("system");
        menu.setUpdatedBy("system");

        menuMapper.updateMenu(menu);
    }

    @Override
    public void saveMenu(Menu menu) {
        Date date = new Date();
        menu.setCreatedTime(date);
        menu.setUpdatedTime(date);
        menu.setCreatedBy("system");
        menu.setUpdatedBy("system");
        if( menu.getParentId() == -1){
            menu.setLevel(0); //父级菜单为 0
        }else{
            menu.setLevel(1); //子菜单为 1
        }

        menuMapper.saveMenu(menu);
    }

    @Override
    public void deleteMenuById(Integer id) {
        menuMapper.deleteMenuById(id);
    }
}
