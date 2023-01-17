package com.cufos.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class WebSiteInfoController {


  @GetMapping(path = {"/","/index"})
  public ModelAndView home(){

//      throw new IllegalArgumentException("E");

    return new ModelAndView("/jsp/index.jsp","info",true);
  }

  @GetMapping("/createproject")
  public ModelAndView createProject(){
    return new ModelAndView("/jsp/createProject.jsp");
  }



}
