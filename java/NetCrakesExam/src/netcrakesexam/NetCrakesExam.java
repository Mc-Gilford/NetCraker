/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package netcrakesexam;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import src.Aggrement;
import src.Products;
import src.WriteFile;

/**
 *
 * @author chuch
 */
public class NetCrakesExam {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws IOException {
        // TODO code application logic here
       
        //System.out.println(a.toString());
        /* Products(Products parent, List products, String name, float price) */
        Products pa = new Products(null, null, "Panditas", 1);
        Products pb = new Products(null, null, "Serpientes", 2);
        Products pc = new Products(null, null, "Pinguinos", 3);
        List<Products> listProduct1 = new ArrayList<Products>();
        List<Products> listProduct2 = new ArrayList<Products>();
        List<Products> listProduct3 = new ArrayList<Products>();
        listProduct1.add(pa);
        listProduct1.add(pb);
        listProduct2.add(pa);
        listProduct2.add(pc);
        listProduct3.add(pb);
        Aggrement a = new Aggrement("Jose", listProduct1);
        Aggrement b = new Aggrement("Lara", listProduct1);
        System.out.println(a.toString());
        Products p1 = new Products(a, listProduct1, "Gomas", 1);
        Products p2 = new Products(b, listProduct2, "Chocolate", 2);
        Products p3 = new Products(pa, listProduct3, "Dulce", 3);
        System.out.println("P1");
        System.out.println(p1.toString());
        System.out.println("P2");
        System.out.println(p2.toString());
        System.out.println("P3");
        System.out.println(p3.toString());
        WriteFile w1 = new WriteFile(p1.getName());
        WriteFile w2 = new WriteFile(p2.getName());
        WriteFile w3 = new WriteFile(p3.getName());
        String path="test/";
        w1.writingFile(path,p1);
        w2.writingFile(path,p2);
        w3.writingFile(path,p3);
    }
    
}
