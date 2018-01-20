package com.saudabaew.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Created by 1 on 20.01.2018.
 */
@Entity
@Table(name = "books")
public class Book {
    @Id
    @GeneratedValue
    private long id;

    private String title;
    private String description;
    private String author;
    private String isbn;
    private int printYear;
    private int readAlready;

    public long getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getIsbn() {
        return isbn;
    }

    public void setIsbn(String isbn) {
        this.isbn = isbn;
    }

    public int getPrintYear() {
        return printYear;
    }

    public void setPrintYear(int printYear) {
        this.printYear = printYear;
    }

    public int getReadAlready() {
        return readAlready;
    }

    public void setReadAlready(int readAlready) {
        this.readAlready = readAlready;
    }
}
