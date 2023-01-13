package com.cufos.controller;

import com.cufos.bussines.impl.WebSiteInfoBO;
import com.cufos.model.WebSiteInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class WebSiteInfoController {
  @Autowired
  private WebSiteInfoBO webSiteInfoBO;

  @GetMapping(path = {"/","/index"})
  public ModelAndView home(){
    WebSiteInfo webSiteInfo = webSiteInfoBO.getWebSiteInfo();

//      throw new IllegalArgumentException("E");

    return new ModelAndView("/jsp/index.jsp","info",webSiteInfo);
  }

  @GetMapping(path ="detail")
  public ModelAndView detailPage(){
    List<WebSiteInfo> allSiteInfo = webSiteInfoBO.getAllWebSiteInfo();
    return new ModelAndView("/jsp/dettagli.jsp","detail",allSiteInfo);
  }

  @GetMapping("insertInfo")
  public ModelAndView insertInfo(){
    return new ModelAndView("/jsp/insertInfo.jsp");
  }

  @PostMapping ("insertInfo")
  public ModelAndView insertInfo(
    @RequestParam String name, @RequestParam String description
  ){
    WebSiteInfo webSiteInfo = new WebSiteInfo();
    webSiteInfo.setName(name);
    webSiteInfo.setDescription(description);
    webSiteInfoBO.insertWebSiteInfo(webSiteInfo);
    return new ModelAndView("/jsp/insertInfo.jsp","operation",true);
  }

  @GetMapping("deleteViewInfo")
  public ModelAndView deleteInfo(){
    return new ModelAndView("/jsp/deleteInfo.jsp");
  }

  @GetMapping("deleteInfo")
  public ModelAndView deleteInfo(@RequestParam String id){
    if(!id.isEmpty()) {
      webSiteInfoBO.deleteWebSiteInfo(Long.parseLong(id));
      return new ModelAndView("/jsp/deleteInfo.jsp","operation",true);
    }
    return new ModelAndView("/jsp/deleteInfo.jsp","id_not_found",true);
  }


}
