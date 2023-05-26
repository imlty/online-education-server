package top.imlty.service;

import top.imlty.domain.Course;
import top.imlty.domain.CourseLesson;
import top.imlty.domain.CourseSection;

import java.util.List;

public interface CourseContentService {

    //根据课程id查询章节信息和课时信息
    List<CourseSection> findSectionAndLessonByCourseId(Integer courseId);

    /**
     * 回显章节信息
     */
    Course findCourseByCourseId(Integer courseId);
    /**
     * 新增章节信息
     */
    void saveSection(CourseSection courseSection);

    void updateSection(CourseSection courseSection);

    /**
     * 修改章节状态
     * @param
     */
    void updateSectionStatus(int status,int id);

    /**
     * 保存课时信息
     * @param lesson
     */
    void saveLesson(CourseLesson lesson);

    /**
     * 新增课时
     * @param lesson
     */
    void updateLesson(CourseLesson lesson);

    /**
     * 修改课时状态
     * @param id 课时id
     * @param status 课时状态
     */
    void updateLessonStatus(int id, int status);
}
