package com.indigoteam.model;

        import javax.persistence.*;
        import java.util.Date;

@Entity
@Table(name="listarticles")
public class Blog {
    @Id
    @Column(name="ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int ID;

    @Column(name="Name")
    private String Name;

    @Column(name="Date")
    private Date Date;

    @Column(name="IDAutor")
    private int IDAutor;

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
    }

    public String getName() {
        return Name;
    }

    public void setName(String name) {
        Name = name;
    }

    public java.util.Date getDate() {
        return Date;
    }

    public void setDate(java.util.Date date) {
        Date = date;
    }

    public int getIDAutor() {
        return IDAutor;
    }

    public void setIDAutor(int IDAutor) {
        this.IDAutor = IDAutor;
    }

    public int getIDArticle() {
        return IDArticle;
    }

    public void setIDArticle(int IDArticle) {
        this.IDArticle = IDArticle;
    }

    private int IDArticle;


}
