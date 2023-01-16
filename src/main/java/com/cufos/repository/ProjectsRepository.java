package com.cufos.repository;

import com.cufos.model.ProjectsModel;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProjectsRepository extends JpaRepository<ProjectsModel,Long> {
}
