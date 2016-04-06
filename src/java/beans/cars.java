/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

/**
 *
 * @author JoseDesk
 */
public class cars {
    private int id;
    private String Make;
    private String Model;
    private String Style;
    private String Company;
    private String Airport;
    private String Pick;
    private String Drop;
    private int TotalDays;
    private double price;

    public cars(int id, String Make, String Model, String Style, String Company, String Airport, String Pick, String Drop,int TotalDays, double price) {
        this.id= id;
        this.Make = Make;
        this.Model = Model;
        this.Style = Style;
        this.Company = Company;
        this.Airport = Airport;
        this.Pick= Pick;
        this.Drop= Drop;
        this.TotalDays=TotalDays;
        this.price=price;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    
    
    public int getTotalDays() {
        return TotalDays;
    }

    public void setTotalDays(int TotalDays) {
        this.TotalDays = TotalDays;
    }

    
    public String getPick() {
        return Pick;
    }

    public void setPick(String Pick) {
        this.Pick = Pick;
    }

    public String getDrop() {
        return Drop;
    }

    public void setDrop(String Drop) {
        this.Drop = Drop;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    

    public String getMake() {
        return Make;
    }

    public String getModel() {
        return Model;
    }

    public String getStyle() {
        return Style;
    }

    public String getCompany() {
        return Company;
    }

    public String getAirport() {
        return Airport;
    }

    public void setMake(String Make) {
        this.Make = Make;
    }

    public void setModel(String Model) {
        this.Model = Model;
    }

    public void setStyle(String Style) {
        this.Style = Style;
    }

    public void setCompany(String Company) {
        this.Company = Company;
    }

    public void setAirport(String Airport) {
        this.Airport = Airport;
    }

    
    
    
    
    
    
    
    
    
    
}
