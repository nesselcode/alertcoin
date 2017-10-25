package com.befab.model;

import javax.persistence.*;

@Entity
@Table(name = "salon")
public class Salon {
    @Id
    @GeneratedValue(strategy=GenerationType.AUTO)
    private int id;

    @Column
    private String nom;

    @ManyToOne(cascade = {CascadeType.ALL})
    @JoinColumn(name = "gerant_id")
    private Coiffeur gerant;

    @OneToOne(cascade = {CascadeType.ALL})
    @JoinColumn(name = "adresse_id")
    private Adresse adresse;

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public Coiffeur getGerant() {
        return gerant;
    }

    public void setGerant(Coiffeur gerant) {
        this.gerant = gerant;
    }

    public Adresse getAdresse() {
        return adresse;
    }

    public void setAdresse(Adresse adresse) {
        this.adresse = adresse;
    }


}
