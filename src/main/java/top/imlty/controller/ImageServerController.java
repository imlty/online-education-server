package top.imlty.controller;

import org.csource.common.MyException;
import org.csource.common.NameValuePair;
import org.csource.fastdfs.*;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import top.imlty.domain.FileSystem;
import top.imlty.domain.ResponseResult;
import top.imlty.utils.UploadPicUtils;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

@RestController
public class ImageServerController {

    private static final String FASTDFS_URL = "http://192.168.20.131/";

    /**
     * 服务器图片上传接口
     */
    @RequestMapping("/upload")
    public ResponseResult upload(MultipartHttpServletRequest request) {
        FileSystem fileSystem = new FileSystem();
        /* 1、把文件保存到web服务器*/

        // 从页面请求中，获取上传的文件对象
        MultipartFile file = request.getFile("file");
        // 从文件对象中获取 文件的原始名称
        String oldFileName = file.getOriginalFilename();
        // 通过字符串截取的方式，从文件原始名中获取文件的后缀   1.jpg
        String hou = oldFileName.substring(oldFileName.lastIndexOf(".") + 1);
        // 为了避免文件因为同名而覆盖，生成全新的文件名
        String newFileName = UUID.randomUUID().toString() + "." + hou;
        // 创建web服务器保存文件的目录(预先创建好D:/upload目录，否则系统找不到路径，会抛异常)
        File toSaveFile = new File("D:/upload/" + newFileName);
        // 将路径转换成文件
        try {
            file.transferTo(toSaveFile);
        } catch (IOException e) {
            e.printStackTrace();
            return new ResponseResult(false, 500, "长传到web服务器失败", null);
        }
        // 获取服务器的绝对路径
        String newFilePath = toSaveFile.getAbsolutePath();

        /* 2、把文件从web服务器上传到FastDFS*/

        String fileId = null;
        try {
            ClientGlobal.initByProperties("fastdfs-client.properties");
            TrackerClient trackerClient = new TrackerClient();
            TrackerServer trackerServer = trackerClient.getConnection();
            StorageServer storageServer = null;
            StorageClient1 client = new StorageClient1(trackerServer, storageServer);

            NameValuePair[] list = new NameValuePair[1];
            list[0] = new NameValuePair("fileName", oldFileName);
            fileId = client.upload_file1(newFilePath, hou, list);
            trackerServer.close();
        } catch (IOException | MyException e) {
            e.printStackTrace();
            return new ResponseResult(false, 500, "长传到fastDfs服务器失败", null);
        }

        // 封装fileSystem数据对象
        fileSystem.setFileId(fileId);
        fileSystem.setFileName(oldFileName);
        fileSystem.setFilePath(fileId);  //已经上传到FastDFS上，通过fileId来访问图片，所以fileId即为文件路径
        //http://192.168.20.131/group1/M00/00/00/wKgUg2CStBWASEfDAAACqYHP6zs159.png
        System.out.println(FASTDFS_URL + fileId);

        HashMap<String, String> map = new HashMap<>();
        map.put("fileName", fileSystem.getFileName());
        map.put("filePath", FASTDFS_URL + fileSystem.getFilePath());
        return new ResponseResult(true, 200, "长传成功", map);
    }

    /**
     * 本地图片上传接口
     */
    @RequestMapping("/localUpload")
    public ResponseResult fileupload(@RequestParam("file") MultipartFile multipartFile, HttpServletRequest request) {
        Map<String, String> map = UploadPicUtils.upload(multipartFile, request);
        return new ResponseResult(true, 200, "上传成功", map);
    }
}
