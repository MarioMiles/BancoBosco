/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

import java.util.ArrayList;

/**
 *
 * @author DAW-A
 */
public class Utilidades {
    public static ArrayList<String> getMeses(){
       
        int meses=0;
        ArrayList<String> listaMeses = new ArrayList<String>();
        for ( int i=0; i<=15;i++){
            int  mesesPr=meses+12;
            listaMeses.add(String.valueOf(mesesPr));
        }
        return listaMeses;
        
     
    }
}
