package com.art.vs.war.team.springbootgallery.entity;

import lombok.Data;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.math.BigDecimal;

@Entity
@Table(name = "painting")
@Data
public class Painting {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "title")
    private String title;

    @Column(name = "author")
    private String author;

    @Column(name="genre_id")
    private Long genreId;

    @Column(name="material_id")
    private Long materialId;

    @Column(name="price")
    private BigDecimal price;

    @Column(name="height")
    private int height;

    @Column(name="width")
    private int width;

    @Column(name = "img")
    private String img;
}
