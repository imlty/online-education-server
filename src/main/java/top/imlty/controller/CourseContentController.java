package top.imlty.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import top.imlty.domain.Course;
import top.imlty.domain.CourseLesson;
import top.imlty.domain.CourseSection;
import top.imlty.domain.ResponseResult;
import top.imlty.service.CourseContentService;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/courseContent")
public class CourseContentController {

    @Autowired
    private CourseContentService courseContentService;

    /**
     * @param courseId 课程id
     * @return courseSections
     */
    @RequestMapping("/findSectionAndLesson")
    public ResponseResult findSectionAndLessonByCourseId(Integer courseId) {
        List<CourseSection> courseSectionList = courseContentService.findSectionAndLessonByCourseId(courseId);


        return new ResponseResult(true, 200, "查询成功", courseSectionList);
    }

    /**
     * 回显章节信息
     */
    @RequestMapping("/findCourseByCourseId")
    public ResponseResult findCourseByCourseId(Integer courseId) {
        Course course = courseContentService.findCourseByCourseId(courseId);
        return new ResponseResult(true, 200, "查询课程信息成功", course);
    }

    /**
     * 新增或者更新章节信息
     */
    @PostMapping("/saveOrUpdateSection")
    public ResponseResult saveOrUpdateSection(@RequestBody CourseSection courseSection) {

        ResponseResult result = new ResponseResult(true, 200, "新增成功", null);
        //判断
        if (courseSection.getId() != null) {
            //更新
            courseContentService.updateSection(courseSection);
            result.setMessage("更新成功");
        } else {
            //新增
            courseContentService.saveSection(courseSection);
        }
        return result;
    }

    /**
     * 修改课时状态
     *
     * @param id 课程章节的课时id
     * @param status 状态，0:隐藏；1：待更新；2：已发布
     * @return
     */
    @RequestMapping("/updateSectionStatus")
    public ResponseResult updateSectionStatus(int id, int status) {
        courseContentService.updateSectionStatus(status, id);
        HashMap<String, Object> map = new HashMap<>();
        map.put("status", status);
        return new ResponseResult(true, 200, "修改状态成功", map);
    }

    /**
     * 保存&修改课时
     */
    @RequestMapping("/saveOrUpdateLesson")
    public ResponseResult saveOrUpdateLesson(@RequestBody CourseLesson lesson) {

        try {
            if (lesson.getId() == null) {
                courseContentService.saveLesson(lesson);
                return new ResponseResult(true, 200, "响应成功", null);

            } else {
                courseContentService.updateLesson(lesson);
                return new ResponseResult(true, 200, "响应成功", null);
            }
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }

    /**
     * 修改课时状态
     * 状态，0:隐藏；1：待更新；2：已发布
     */
    @RequestMapping("/updateLessonStatus")
    public ResponseResult updateLessonStatus(@RequestParam int id, @RequestParam int status) {

        try {
            courseContentService.updateLessonStatus(id, status);

            //封装最新的状态信息
            Map<String, Integer> map = new HashMap<>();
            map.put("status", status);

            ResponseResult result = new ResponseResult(true, 200, "响应成功", map);
            return result;

        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}
