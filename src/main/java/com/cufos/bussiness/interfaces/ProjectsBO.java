package com.cufos.bussiness.interfaces;

import com.cufos.model.ProjectsModel;

import java.util.List;

public interface ProjectsBO{

  void createProject(ProjectsModel project);

  List<ProjectsModel> listProjects();

  ProjectsModel findAProject(Long id);

  void updateAProject(Long id, String name,String description,String link);

  void deleteProject(Long id);
}
