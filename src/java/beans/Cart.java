/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package beans;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 *
 * @author JoseDesk
 */
public class Cart {

    private List<cars> cart;

    public Cart() {
        cart = new ArrayList<cars>();
    }

    public void add(int id, String Make, String Model, String Style, String Company, String Airport, String Pick, String Drop, int TotalDays, double price) {

        cart.add(new cars(id, Make, Model, Style, Company, Airport, Pick, Drop, TotalDays, price));
    }

    public void remove(int id) {
        Iterator<cars> iter = cart.iterator();
        while (iter.hasNext()) {
            cars item = iter.next();
            if (item.getId() == id) {
                cart.remove(item);
                return;
            }
        }
    }

    public int size() {
        return cart.size();
    }

    public List<cars> getItems() {
        return cart;
    }

    // Check if this Cart is empty
    public boolean isEmpty() {
        return size() == 0;
    }

    public void clear() {
        cart.clear();
    }
    
    
    public double CalPrice(int days, double price, double insurance){
        double totalPrice =( (days* price) +insurance );
        return totalPrice;
    }
    

}
