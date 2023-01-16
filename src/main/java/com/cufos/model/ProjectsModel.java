package com.cufos.model;

import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@Table(name = "projects")
public class ProjectsModel extends BaseEntity {
  private String name;
  private String description;
  private String link;
}
