package com.xinguang.vly.model;
/*
 * Copyright (C), 2010-2017, 未来域
 * FileName: BaseEntity.java
 * Author:   DELL
 * Date:     2017-4-21 下午1:52:26
 */


import java.io.Serializable;
import java.util.Date;

/**
 * 所有实体类的基类
 *
 * @author DELL
 * @see [相关类/方法]（可选）
 * @since [产品/模块版本] （可选）
 */
public class BaseEntity implements Serializable{
	
    /**
	 */
	private static final long serialVersionUID = -2172148637407208532L;

	/**
     * 编号
     * order_info.id
     */
    private String id;
    
	/**
     * 创建者编号
     * order_info.create_id
     */
    private String createId;

    /**
     * 创建者姓名
     * order_info.create_name
     */
    private String createName;

    /**
     * 创建时间
     * order_info.create_date
     */
    private Date createDate;

    /**
     * 更新者编号
     * order_info.modify_id
     */
    private String modifyId;

    /**
     * 更新者姓名
     * order_info.modify_name
     */
    private String modifyName;

    /**
     * 更新时间
     * order_info.modify_date
     */
    private Date modifyDate;

    /**
     * 备注信息
     * order_info.remarks
     */
    private String remarks;

    /**
     * 删除标志
     * order_info.del_flag
     */
    private String delFlag;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getCreateId() {
		return createId;
	}

	public void setCreateId(String createId) {
		this.createId = createId;
	}

	public String getCreateName() {
		return createName;
	}

	public void setCreateName(String createName) {
		this.createName = createName;
	}

	public Date getCreateDate() {
		return createDate;
	}

	public void setCreateDate(Date createDate) {
		this.createDate = createDate;
	}

	public String getModifyId() {
		return modifyId;
	}

	public void setModifyId(String modifyId) {
		this.modifyId = modifyId;
	}

	public String getModifyName() {
		return modifyName;
	}

	public void setModifyName(String modifyName) {
		this.modifyName = modifyName;
	}

	public Date getModifyDate() {
		return modifyDate;
	}

	public void setModifyDate(Date modifyDate) {
		this.modifyDate = modifyDate;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public String getDelFlag() {
		return delFlag;
	}

	public void setDelFlag(String delFlag) {
		this.delFlag = delFlag;
	}
}
