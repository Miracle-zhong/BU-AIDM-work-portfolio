package com.project.demo.entity;

import java.sql.Date;
import java.sql.Timestamp;
import com.project.demo.entity.base.BaseEntity;
import java.io.Serializable;
import lombok.*;
import javax.persistence.*;


/**
 * 实施项目：(ImplementationProject)表实体类
 *
 */
@Setter
@Getter
@Entity(name = "ImplementationProject")
public class ImplementationProject implements Serializable {

    // ImplementationProject编号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "implementation_project_id")
    private Integer implementation_project_id;

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
    // 实施时间
    @Basic
    private Timestamp implementation_time;
    // 项目预期
    @Basic
    private String project_expectations;
    // 项目要求
    @Basic
    private String project_requirements;














    // 更新时间
    @Basic
    private Timestamp update_time;

    // 创建时间
    @Basic
    private Timestamp create_time;

}
