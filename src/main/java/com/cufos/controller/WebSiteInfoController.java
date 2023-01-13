package com.cufos.controller;

import com.cufos.bussines.impl.WebSiteInfoBO;
import com.cufos.model.WebSiteInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
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
}
