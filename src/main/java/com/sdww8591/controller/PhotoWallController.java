package com.sdww8591.controller;

import com.sdww8591.dao.ItemDao;
import com.sdww8591.dao.PhotoDao;
import com.sdww8591.dao.VideoDao;
import com.sdww8591.entity.Item;
import com.sdww8591.entity.Photo;
import com.sdww8591.entity.Video;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedList;
import java.util.List;

/**
 * Created by sdww on 16-2-22
 */
@Controller
public class PhotoWallController {

    @Resource
    public PhotoDao photoDao;

    @Resource
    public ItemDao itemDao;

    @Resource
    public VideoDao videoDao;

    @RequestMapping("/photo")
    public String getPhotoPage(Model model) {
        List<Item> itemList = itemDao.getItems();
        for(Item item:itemList) {
            if(item.getType() == 1) {
                Photo photo = photoDao.getPhotoById(item.getSubId());
                item.setObj(photo);
            } else if(item.getType() == 2) {
                Video video = videoDao.getVideoById(item.getSubId());
                item.setObj(video);
            }
        }

        Collections.sort(itemList, new Comparator<Item>() {
            @Override
            public int compare(Item o1, Item o2) {
                return o1.getIndex() - o2.getIndex();
            }
        });

        model.addAttribute("itemList", itemList);
        return "photo-wall";
    }
}
