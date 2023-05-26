package top.imlty.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import top.imlty.dao.CourseContentMapper;
import top.imlty.domain.Course;
import top.imlty.domain.CourseLesson;
import top.imlty.domain.CourseSection;
import top.imlty.service.CourseContentService;

import java.util.Date;
import java.util.List;

@Service
public class CourseContentServiceImpl implements CourseContentService {

    @Autowired
    private CourseContentMapper courseContentMapper;

    @Override
    public List<CourseSection> findSectionAndLessonByCourseId(Integer courseId) {
        return courseContentMapper.findSectionAndLessonByCourseId(courseId);
    }

    @Override
    public Course findCourseByCourseId(Integer courseId) {
        return courseContentMapper.findCourseById(courseId);
    }

    @Override
    public void saveSection(CourseSection courseSection) {
        //补全信息
        Date date = new Date();
        courseSection.setUpdateTime(date);
        courseSection.setCreateTime(date);

        //插入
        courseContentMapper.saveSection(courseSection);
    }

    @Override
    public void updateSection(CourseSection courseSection) {
        //补全信息
        courseSection.setUpdateTime(new Date());

        //更新
        courseContentMapper.updateSection(courseSection);
    }

    @Override
    public void updateSectionStatus(int status,int id) {
        CourseSection courseSection = new CourseSection();
        courseSection.setUpdateTime(new Date());
        courseSection.setId(id);
        courseSection.setStatus(status);
        courseContentMapper.updateSectionStatus(courseSection);
    }

    @Override
    public void saveLesson(CourseLesson lesson) {
        //补全信息
        Date date = new Date();
        lesson.setCreateTime(date);
        lesson.setUpdateTime(date);

        courseContentMapper.saveLesson(lesson);
    }

    @Override
    public void updateLesson(CourseLesson lesson) {
        //补全信息
        Date date = new Date();
        lesson.setUpdateTime(date);

        courseContentMapper.updateLesson(lesson);
    }

    @Override
    public void updateLessonStatus(int id, int status) {

        CourseLesson courseLesson = new CourseLesson();
        courseLesson.setUpdateTime(new Date());
        courseLesson.setId(id);
        courseLesson.setStatus(status);
        //System.out.println(courseLesson);
        courseContentMapper.updateLessonStatus(courseLesson);
    }
}
