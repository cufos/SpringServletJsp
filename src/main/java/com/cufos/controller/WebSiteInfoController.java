package com.cufos.controller;

import com.cufos.bussiness.impl.ProjectsBOImpl;
import com.cufos.model.ProjectsModel;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class WebSiteInfoController {
  private final ProjectsBOImpl projectsBOimpl;

  public WebSiteInfoController(ProjectsBOImpl projectsBOimpl) {
    this.projectsBOimpl = projectsBOimpl;
  }


  @GetMapping(path = {"/","/index"})
  public ModelAndView home(){

//      throw new IllegalArgumentException("E");

    return new ModelAndView("/jsp/index.jsp","info",true);
  }

  @GetMapping("/createproject")
  public ModelAndView createProject(){
    return new ModelAndView("/jsp/createProject.jsp");
  }

  @PostMapping("createproject")
  public ModelAndView createProject(@RequestParam ProjectsModel project){
    projectsBOimpl.createProject(project);

    return new ModelAndView("jsp/createProject.jsp");
  }

  @GetMapping(path = {"/projects"})
  public ModelAndView getAllProjects(){
    List<ProjectsModel> project = projectsBOimpl.listProjects();

    return new ModelAndView("jsp/projects.jsp","projects",project);
  }

}
