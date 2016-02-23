package com.sdww8591.controller;

import com.sdww8591.dao.PhotoDao;
import com.sdww8591.entity.Photo;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.LinkedList;
import java.util.List;

/**
 * Created by sdww on 16-2-22
 */
@Controller
public class TestController {

    @Resource
    public PhotoDao photoDao;

    @RequestMapping("/test")
    public String getPhotoPage(Model model) {
        List<Photo> photos = photoDao.getPhotos();
        model.addAttribute("photos", photos);
        String aaa = "aaa";
        return "test";
    }
}
