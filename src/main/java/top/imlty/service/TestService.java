package top.imlty.service;

import top.imlty.domain.Test;

import java.util.List;

public interface TestService {

    /**
     * 测试整合
     */
    List<Test> findAllTest();
}
