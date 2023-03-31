package com.project.demo.entity;

import java.sql.Date;
import java.sql.Timestamp;
import com.project.demo.entity.base.BaseEntity;
import java.io.Serializable;
import lombok.*;
import javax.persistence.*;


/**
 * 项目管理：(ProjectManagement)表实体类
 *
 */
@Setter
@Getter
@Entity(name = "ProjectManagement")
public class ProjectManagement implements Serializable {

    // ProjectManagement编号
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "project_management_id")
    private Integer project_management_id;

    // 项目名称
    @Basic
    private String entry_name;
    // 项目类型
    @Basic
    private String project_type;
    // 开始时间
    @Basic
    private Timestamp start_time;
    // 结束时间
    @Basic
    private Timestamp end_time;
    // 材料附件
    @Basic
    private String material_accessories;
    // 申报要求
    @Basic
    private String declaration_requirements;
    // 申报说明
    @Basic
    private String declaration_description;
    // 项目说明
    @Basic
    private String project_description;














    // 更新时间
    @Basic
    private Timestamp update_time;

    // 创建时间
    @Basic
    private Timestamp create_time;

}
