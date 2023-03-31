package com.project.demo.entity;

import java.sql.Date;
import java.sql.Timestamp;
import com.project.demo.entity.base.BaseEntity;
import java.io.Serializable;
import lombok.*;
import javax.persistence.*;


/**
 * 结题管理：(ClosingManagement)表实体类
 *
 */
@Setter
@Getter
@Entity(name = "ClosingManagement")
public class ClosingManagement implements Serializable {

    // ClosingManagement编号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "closing_management_id")
    private Integer closing_management_id;

    // 项目名称
    @Basic
    private String entry_name;
    // 项目类型
    @Basic
    private String project_type;
    // 用户账号
    @Basic
    private Integer user_account;
    // 用户姓名
    @Basic
    private String user_name;
    // 结题时间
    @Basic
    private Timestamp closing_time;
    // 项目历时
    @Basic
    private String project_duration;
    // 结题详情
    @Basic
    private String closing_details;



    // 审核状态
    @Basic
    private String examine_state;








    // 审核回复
    @Basic
    private String examine_reply;



    // 更新时间
    @Basic
    private Timestamp update_time;

    // 创建时间
    @Basic
    private Timestamp create_time;

}
