/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package src;

import java.util.Collection;
import java.util.List;

/**
 *
 * @author chuch
 */
/*
Product class has fields :
	parent object - reference to agreement or parent product.
	products - collection of children products.
	name - string with the product name.
	price - number with product's price. Can be non integer.
*/
public class Products{
    private Object/*<Reference>*/ parent;
    private List <Products> products;
    private String name;
    private float price;

    public String getName() {
        return name;
    }

    public Products(Object parent, List products, String name, float price) {
        this.parent = parent;
        this.products = products;
        this.name = name;
        this.price = price;
    }

    public String printProducts()
    {
        String str="";
        if(this.products!=null)
        {
            for(Products res:this.products)
            {
                //System.out.println(res.toString());
                str+=res.toString();
            }
            return str;
        }
        else{      
            return str=null;
        }
    }
     @Override
    public String toString() {
        return "Products{" + "parent=" + parent + ", products=" + printProducts() + "\n, name=" + name + ", price=" + price + '}';
    }
    
}
