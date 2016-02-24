package com.sdww8591.entity;

/**
 * Created by sdww on 16-2-24.
 */
public class Item {

    /**
     * id
     */
    private int id;

    /**
     * 顺序
     */
    private int index;

    /**
     * 类型
     */
    private int type;

    /**
     * subId
     */
    private int subId;

    /**
     * 具体hold类
     */
    private Object obj;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getIndex() {
        return index;
    }

    public void setIndex(int index) {
        this.index = index;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public int getSubId() {
        return subId;
    }

    public void setSubId(int subId) {
        this.subId = subId;
    }

    public Object getObj() {
        return obj;
    }

    public void setObj(Object obj) {
        this.obj = obj;
    }
}
