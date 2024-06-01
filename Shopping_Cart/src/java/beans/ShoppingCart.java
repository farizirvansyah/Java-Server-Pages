/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package beans;

import java.lang.String;
import java.lang.Integer;
import java.lang.Float;
import java.util.Enumeration;
import java.util.Hashtable;

/**
 *
 * @author Administrator
 */
public class ShoppingCart {

    protected Hashtable items = new Hashtable();

    public void addItem(String itemId, String desc, Float price, int quantity) {
        String[] item = {itemId, desc, String.valueOf(price), String.valueOf(quantity)};

        if (items.containsKey(itemId)) {
            String[] tmpItem = (String[]) items.get(itemId);
            int tmpQuant = Integer.parseInt(tmpItem[3]);
            quantity += tmpQuant;
            tmpItem[3] = Integer.toString(quantity);
        } else {
            items.put(itemId, item);
        }
    }

    public void removeItem(String itemId) {
        if (items.containsKey(itemId)) {
            String[] tmpItem = (String[]) items.get(itemId);
            int quantity = Integer.parseInt(tmpItem[3]);
            if (quantity > 1) {
                quantity--;
                tmpItem[3] = Integer.toString(quantity);
            } else {
                items.remove(itemId);
            }
        }
    }

    public void updateQuantity(String itemId, int quantity) {
        if (items.containsKey(itemId)) {
            String[] tmpItem = (String[]) items.get(itemId);
            tmpItem[3] = Integer.toString(quantity);
        }
    }

    public Enumeration getEnumeration() {
        return items.elements();
    }

    public Float getCost() {
        Enumeration e = items.elements();
        String[] tmpItem;
        Float totalCost = 0.00f;
        while (e.hasMoreElements()) {
            tmpItem = (String[]) e.nextElement();
            totalCost += (Integer.parseInt(tmpItem[3]) * Float.parseFloat(tmpItem[2]));
        }
        return totalCost;
    }

    public int getQuantity() {
        Enumeration e = items.elements();
        int totalQuantity = 0;
        while (e.hasMoreElements()) {
            String[] tmpItem = (String[]) e.nextElement();
            totalQuantity += Integer.parseInt(tmpItem[3]);
        }
        return totalQuantity;
    }

    public int getNumOfItems() {
        Enumeration e = items.elements();
        String[] tmpItem;
        int numOfItems = 0;
        while (e.hasMoreElements()) {
            tmpItem = (String[]) e.nextElement();
            numOfItems += (Integer.parseInt(tmpItem[3]));
        }
        return numOfItems;
    }
}
