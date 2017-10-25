package com.befab.model;

import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

/**
 * Created by kader on 25/10/2017.
 */
@Getter
@Setter
public class Annonce {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;
    @Column
    private String text;
    @Column
    private String categorie;
    @Column
    private String region;
    @Column
    private String villeOuCodePostal;
}
