package com.project.demo.entity;

import java.sql.Date;
import java.sql.Timestamp;
import com.project.demo.entity.base.BaseEntity;
import java.io.Serializable;
import lombok.*;
import javax.persistence.*;


/**
 * 申报信息：(DeclarationInformation)表实体类
 *
 */
@Setter
@Getter
@Entity(name = "DeclarationInformation")
public class DeclarationInformation implements Serializable {

    // DeclarationInformation编号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "declaration_information_id")
    private Integer declaration_information_id;

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
    // 申报时间
    @Basic
    private Timestamp declaration_time;
    // 申报附件
    @Basic
    private String declaration_annex;
    // 备注信息
    @Basic
    private String remarks;



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
