package top.imlty.dao;

import org.apache.ibatis.annotations.Mapper;
import top.imlty.domain.Course;
import top.imlty.domain.Teacher;
import top.imlty.vo.CourseTeacherVO;
import top.imlty.vo.CourseVO;

import java.util.List;
@Mapper
public interface CourseMapper {

    /**
     * 多条件列表模糊查询
     */
    List<Course> findCourseByCondition(CourseVO courseVo);

    /**
     * 新增课程信息
     */
    void saveCourse(Course course);
    /**
     * 新增讲师信息
     */
    void saveTeacher(Teacher teacher);

    /**
     * 回显课程信息和讲师信息
     */
    CourseTeacherVO findCourseById(Integer id);
    /**
     * 更新课程信息
     */
    void updateCourse(Course course);
    /**
     * 更新讲师信息
     */
    void updateTeacher(Teacher teacher);
    /**
     * 课程状态管理
     */
    void updateCourseStatus(Course course);

}
