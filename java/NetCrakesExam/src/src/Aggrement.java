package src;


import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Collection;
import java.util.Date;
import java.util.List;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author chuch
 */
/*
Agreement class has fields :
	name - string that has the agreement name that it generates by rule "Agreement " + current date in format day/month/year.
	signed by - string with name of person who signed an agreement.
	products - collection of products that are included into this agreement. 
				This collection should be having only products that are directly under agreement.
				Products that have parent product shouldn't be in this collection.
*/
public class Aggrement {
    private String name;
    private String signedBy;
    private List <Products> products;

    public Aggrement(String signedBy, List<Products> products) {
        DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd");
        Date date = new Date();
        this.name = "Agreement"+dateFormat.format(date);
        this.signedBy = signedBy;
        this.products = products;
    }

    public String getName() {
        return name;
    }

    @Override
    public String toString() {
        return "Aggrement{" + "name=" + name + ", signedBy=" + signedBy + ", products=" + products + '}';
    }
}
