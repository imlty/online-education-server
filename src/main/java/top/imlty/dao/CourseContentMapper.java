package top.imlty.dao;

import org.apache.ibatis.annotations.Mapper;
import top.imlty.domain.Course;
import top.imlty.domain.CourseLesson;
import top.imlty.domain.CourseSection;

import java.util.List;

@Mapper
public interface CourseContentMapper {

    /**
     * 根据课程id查询关联的章节信息,以及章节关联的 课时信息
     */
    List<CourseSection> findSectionAndLessonByCourseId(Integer courseId);
    /**
     * 回显课程id对应的章节信息
     */
    Course findCourseById(Integer courseId);
    /**
     * 新增章节信息
     */
    void saveSection(CourseSection courseSection);

    void updateSection(CourseSection courseSection);

    /**
     * 修改章节状态
     */
    void updateSectionStatus(CourseSection courseSection);

    /**
     * 保存课时
     * @param lesson
     */
    void saveLesson(CourseLesson lesson);

    /**
     * 修改课时
     * @param lesson
     */
    void updateLesson(CourseLesson lesson);

    /**
     * 修改课时状态
     * @param courseLesson
     */
    void updateLessonStatus(CourseLesson courseLesson);

}
