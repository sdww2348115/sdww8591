package com.sdww8591.entity;

/**
 * Created by sdww on 16-2-22.
 */
public class Photo {
    /**
     * 照片id
     */
    public int id;

    /**
     * 照片名称
     */
    public String title;

    /**
     * 照片url
     */
    public String url;

    public int getId() {
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
}
