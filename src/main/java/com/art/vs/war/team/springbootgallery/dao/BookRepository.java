package com.art.vs.war.team.springbootgallery.dao;

import com.art.vs.war.team.springbootgallery.entity.Painting;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.Optional;

public interface BookRepository extends JpaRepository <Painting, Long> {
}
