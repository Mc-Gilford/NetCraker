/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package src;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.nio.file.Path;

/**
 *
 * @author chuch
 */
public class WriteFile {
    private String name;

    public WriteFile(String name) {
        this.name = name;
    }
    
    public void writingFile(String path,Object o) throws IOException{
        File f = new File(path+this.name+".text");
        FileWriter Writer1 = new FileWriter(f.getPath());
        Writer1.write(o.toString());
        System.out.println("Archivo realizado Path = "+f.getAbsolutePath());
        Writer1.close();
    }
}
