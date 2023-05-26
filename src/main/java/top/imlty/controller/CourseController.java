package top.imlty.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import top.imlty.domain.Course;
import top.imlty.domain.ResponseResult;
import top.imlty.service.CourseService;
import top.imlty.utils.UploadPicUtils;
import top.imlty.vo.CourseTeacherVO;
import top.imlty.vo.CourseVO;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.InvocationTargetException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/course")
public class CourseController {

    @Autowired
    private CourseService courseService;

    /**
     * 根据输入信息查询课程信息
     *
     * @param courseVo course数据传输对象
     * @return responseResult
     */
    @PostMapping("/findCourseByCondition")
    public ResponseResult findCourseByCondition(@RequestBody CourseVO courseVo) {
        //调用service层
        List<Course> list = courseService.findCourseByCondition(courseVo);

        return new ResponseResult(true, 200, "响应成功", list);
    }

    /**
     * 图片上传
     *
     * @param multipartFile
     * @param request
     * @return
     */
    @RequestMapping("/upload")
    public ResponseResult fileUpload(@RequestParam("file") MultipartFile multipartFile, HttpServletRequest request) {

        //将图片上传抽出,写在一个工具类中
        Map<String, String> map = UploadPicUtils.upload(multipartFile, request);

        return new ResponseResult(true, 200, "长传成功", map);
    }

    /**
     * 新增或者更新课程(以及讲师)信息
     */
    @PostMapping("/saveOrUpdateCourse")
    public ResponseResult saveOrUpdateCourse(@RequestBody CourseTeacherVO courseTeacherVo) throws InvocationTargetException, IllegalAccessException {
        //
        System.out.println(courseTeacherVo);

        if (courseTeacherVo.getId() == null) {
            //调用service
            courseService.saveCourseOrTeacher(courseTeacherVo);
            return new ResponseResult(true, 200, "保存成功", null);
        } else {
            courseService.updateCourseOrTeacher(courseTeacherVo);
            return new ResponseResult(true, 200, "更新成功", null);
        }
    }

    /**
     * 根据id查询具体的课程信息以及关联的讲师信息
     */
    @RequestMapping("/findCourseById")
    public ResponseResult findCourseById(Integer id) {
        CourseTeacherVO courseTeacherVo = courseService.findCourseById(id);
        return new ResponseResult(true, 200, "根据查询课程信息成功", courseTeacherVo);
    }

    /**
     * 课程状态管理更新成功
     */
    @RequestMapping("/updateCourseStatus")
    public ResponseResult updateCourseStatus(int id, int status) {
        //传参
        courseService.updateCourseStatus(id, status);
        HashMap<String, Object> map = new HashMap<>();
        map.put("status", status);
        return new ResponseResult(true, 200, "课程状态更新成功", map);
    }

}
