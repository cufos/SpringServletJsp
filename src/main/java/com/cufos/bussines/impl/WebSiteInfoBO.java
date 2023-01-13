package com.cufos.bussines.impl;

import com.cufos.model.WebSiteInfo;
import com.cufos.repository.WebSiteInfoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class WebSiteInfoBO implements com.cufos.bussines.interfaces.WebSiteInfoBO {
  @Autowired
  private WebSiteInfoRepository webSiteInfoRepository;

  public WebSiteInfo getWebSiteInfo() throws DataAccessException{
    return webSiteInfoRepository.findFirstByOrderByIdDesc();
  }

  @Override
  public List<WebSiteInfo> getAllWebSiteInfo() {
    return webSiteInfoRepository.findAll();
  }

  @Override
  public void insertWebSiteInfo(WebSiteInfo webSiteInfo) throws DataAccessException{
    webSiteInfoRepository.save(webSiteInfo);
  }


}
