package com.cufos.repository;

import com.cufos.model.WebSiteInfo;
import org.springframework.data.jpa.repository.JpaRepository;

public interface WebSiteInfoRepository extends JpaRepository<WebSiteInfo, Long> {
  WebSiteInfo findFirstByOrderByIdDesc();
}