package top.imlty.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import top.imlty.dao.TestMapper;
import top.imlty.domain.Test;
import top.imlty.service.TestService;

import java.util.List;

@Service//生成本类的实现类存进ioc容器中
public class TestServiceImpl implements TestService {


    @Autowired
    private TestMapper testMapper;

    @Override
    public List<Test> findAllTest() {
        return testMapper.findAllTest();
    }
}
