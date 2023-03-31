package com.project.demo.controller;

import com.project.demo.entity.ImplementationProject;
import com.project.demo.service.ImplementationProjectService;
import com.project.demo.controller.base.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.*;

import javax.persistence.Query;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;


/**
 * 实施项目：(ImplementationProject)表控制层
 *
 */
@RestController
@RequestMapping("/implementation_project")
public class ImplementationProjectController extends BaseController<ImplementationProject, ImplementationProjectService> {

    /**
     * 实施项目对象
     */
    @Autowired
    public ImplementationProjectController(ImplementationProjectService service) {
        setService(service);
    }

    @PostMapping("/add")
    @Transactional
    public Map<String, Object> add(HttpServletRequest request) throws IOException {
        Map<String,Object> paramMap = service.readBody(request.getReader());
        this.addMap(paramMap);
        return success(1);
    }

}
