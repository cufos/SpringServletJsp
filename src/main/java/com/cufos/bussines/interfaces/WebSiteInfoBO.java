package com.cufos.bussines.interfaces;

import com.cufos.model.WebSiteInfo;

import java.util.List;

public interface WebSiteInfoBO {
   WebSiteInfo getWebSiteInfo();

   List<WebSiteInfo> getAllWebSiteInfo();

   void insertWebSiteInfo(WebSiteInfo webSiteInfo);

   void deleteWebSiteInfo(Long infoId);
}
