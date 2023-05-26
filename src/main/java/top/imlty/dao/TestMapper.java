package top.imlty.dao;

import org.apache.ibatis.annotations.Mapper;
import top.imlty.domain.Test;

import java.util.List;

@Mapper
public interface TestMapper {

    /**
     * 查询所有
     */
    List<Test> findAllTest();
}
