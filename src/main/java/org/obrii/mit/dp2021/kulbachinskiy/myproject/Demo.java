/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package org.obrii.mit.dp2021.kulbachinskiy.myproject;

import java.util.Arrays;
import java.util.List;

/**
 *
 * @author danik
 */
public class Demo {
    private int id;
    private String name;
    private String gender;
    private List<String> language;
    private String country;
    
    public Demo() {
    }
    
    public Demo(String name, String gender, String[] language, String country) {
        this.name = name;
        this.gender = gender;
        if (language != null) this.language = Arrays.asList(language);
        this.country = country;
    }
    
    public int getId() {
        return id;
    }
    public void setId (int id){
        this.id = id;
    }
    
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    
    public String getGender(){
        return gender;
    }
    public void setGender(String gender) {
        this.gender = gender;
    }
    public List<String> getLanguage(){
        return language; 
    }
    public void getLanguage(List<String> language){
        this.language = language; 
    }
    public String getCountry() {
        return country;
    }
    public void setCountry (String country) {
    this.country = country;
    }
    @Override
    public String toString() {
        return "Data{" + "name=" + name + ", gender=" + gender + ", language" + language + ", country" + country + '}';
        
    }
}
