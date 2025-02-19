/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.jgranados.compi1_2025;

/**
 *
 * @author jose
 */
public class ContadorOperaciones {
    private int sumas;
    private int restas;
    private int multiplicaciones;
    private int divisiones;
    
    public void incrementarSumas() {
        sumas++;
    }
    public void incrementarRestas() {
        restas++;
    }
    
    public void incrementarMult() {
        multiplicaciones++;
    }
    
    public void incrementarDiv() {
        divisiones++;
    }
    
    public void imprimirContador() {
        System.out.println("Sumas:" + sumas);
        System.out.println("Restas:" + restas);
        System.out.println("Multi:" + multiplicaciones);
        System.out.println("Divs:" + divisiones);
    }
}
