package com.sdww8591.entity;

/**
 * Created by sdww on 16-2-24.
 */
public class Video {

    /**
     * 视频id
     */
    private int id;

    /**
     * 照片名称
     */
    private String title;

    /**
     * 视频url
     */
    private String url;

    /**
     * 视频封面url
     */
    private String cover;

    private int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getCover() {
        return cover;
    }

    public void setCover(String cover) {
        this.cover = cover;
    }
}
