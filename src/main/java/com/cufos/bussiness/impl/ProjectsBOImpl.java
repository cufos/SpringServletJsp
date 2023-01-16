package com.cufos.bussiness.impl;

import com.cufos.bussiness.interfaces.ProjectsBO;
import com.cufos.model.ProjectsModel;
import com.cufos.repository.ProjectsRepository;
import org.springframework.dao.DataAccessException;

import java.util.List;

public class ProjectsBOImpl implements ProjectsBO {
  private final ProjectsRepository projectsRepository;

  public ProjectsBOImpl(ProjectsRepository projectsRepository) throws DataAccessException {
    this.projectsRepository = projectsRepository;
  }

  @Override
  public void createProject(ProjectsModel project) throws DataAccessException{
    projectsRepository.save(project);
  }

  @Override
  public List<ProjectsModel> listProjects() throws DataAccessException{
    return projectsRepository.findAll();
  }

  @Override
  public ProjectsModel findAProject(Long id) throws DataAccessException{
      ProjectsModel project = projectsRepository.getReferenceById(id);
      return project;
  }

  @Override
  public void updateAProject(
    Long id, String name, String description, String link
  ) throws DataAccessException{
    ProjectsModel project = projectsRepository.getReferenceById(id);

    if(project != null){
      project.setName(name);
      project.setDescription(description);
      project.setLink(link);
    }
  }

  @Override
  public void deleteProject(Long id) throws DataAccessException{
    projectsRepository.deleteById(id);
  }
}
