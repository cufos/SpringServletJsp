package com.cufos.bussiness.impl;

import com.cufos.bussiness.interfaces.SkillsBO;
import com.cufos.model.SkillsModel;
import com.cufos.repository.SkillsRepository;
import org.springframework.dao.DataAccessException;

import java.util.List;

public class SkillsBOImpl implements SkillsBO {
  private final SkillsRepository skillsRepository;

  public SkillsBOImpl(SkillsRepository skillsRepository) {
    this.skillsRepository = skillsRepository;
  }

  @Override
  public void createSkill(SkillsModel skill) throws DataAccessException {
    skillsRepository.save(skill);
  }

  @Override
  public List<SkillsModel> listSkills() throws DataAccessException{
    return skillsRepository.findAll();
  }

  @Override
  public SkillsModel findASkill(Long id) throws DataAccessException{
    SkillsModel skill = skillsRepository.getReferenceById(id);
    return skill;
  }

  @Override
  public void updateASkill(
    Long id, String name, String category
  ) throws DataAccessException{
    SkillsModel skill = skillsRepository.getReferenceById(id);
    if (skill != null){
      skill.setName(name);
      skill.setCategory(category);
    }
  }

  @Override
  public void deleteSkill(Long id) throws DataAccessException{
    skillsRepository.deleteById(id);
  }
}
