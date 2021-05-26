/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package modelo;

/**
 *
 * @author DAW-A
 */
public class Prestamo {
    private double capital;
    private double interes;
    private int tiempo;
    private double importePrestamo;
    
    

    public Prestamo(double capital, double interes, int tiempo) {
        this.capital = capital;
        this.interes = interes;
        this.tiempo = tiempo;
        double interesSimple=(capital*interes*tiempo)/1200;
        double importePrestamo=interesSimple+capital;
    }
    
    
    
}
