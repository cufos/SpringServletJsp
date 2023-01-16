package com.cufos.bussiness.interfaces;

import com.cufos.model.SkillsModel;

import java.util.List;

public interface SkillsBO {
  void createSkill(SkillsModel skill);

  List<SkillsModel> listSkills();

  SkillsModel findASkill(Long id);

  void updateASkill(Long id, String name,String category);

  void deleteSkill(Long id);
}
