package com.ljsy.controller;

import org.apache.commons.io.FilenameUtils;
import org.apache.commons.io.IOUtils;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.UUID;

@Controller
public class IndexController {

    @RequestMapping("/")
    public String index(){
        return "login";
    }

    @GetMapping("file/upload")
    public String file(){
        return "pages/fileupload";
    }

    @PostMapping("file/upload")
    public String fileUpload(MultipartFile img, HttpServletRequest request) throws IOException {
        System.out.println("上传的文件:"+img.getOriginalFilename());

        // 服务器路径
        String path = request.getSession().getServletContext().getRealPath("/img");
        // 后缀名
        String extension = FilenameUtils.getExtension(img.getOriginalFilename());
        // 随机文件名
        String name = UUID.randomUUID().toString().replace("-","")+"."+extension;
        // 生成日期目录
        img.transferTo(new File(path,"footer_bg.gif"));
        return "redirect:/user/list";
    }

    @RequestMapping("file/download")
    public void down(String o,String fileName, HttpServletRequest request, HttpServletResponse response) throws Exception {
        System.out.println("fileName = " + fileName);
        // 打开文件方式, 在线或下载
        o = o==null ? "inline":o;

        String realPath = request.getSession().getServletContext().getRealPath("/file");
        // 获取内容
        FileInputStream inputStream = new FileInputStream(new File(realPath,fileName));

        // 配置响应
        response.setContentType("text/plain;charset=UTF-8");
        // 打开方式
        response.setHeader("content-disposition",o+";fileName="+ URLEncoder.encode(fileName, StandardCharsets.UTF_8));
        ServletOutputStream outputStream = response.getOutputStream();

        // 复制内容到响应的输出流
        IOUtils.copy(inputStream,outputStream);
        // 关闭资源
        IOUtils.closeQuietly(inputStream);
    }
}
