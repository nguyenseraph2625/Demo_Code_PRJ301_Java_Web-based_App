/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BookManagement;

/**
 *
 * @author Kyro
 */
public class Categories {

    private String cateID;
    private String cateName;
    private String description;

    public Categories(String cateID, String cateName, String description) {
        this.cateID = cateID;
        this.cateName = cateName;
        this.description = description;
    }

    public Categories() {

    }

    public String getCateID() {
        return cateID;
    }

    public void setCateID(String cateID) {
        this.cateID = cateID;
    }

    public String getCateName() {
        return cateName;
    }

    public void setCateName(String cateName) {
        this.cateName = cateName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

}
