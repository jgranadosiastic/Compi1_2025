/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.jgranados.compi1_2025;

import com.jgranados.compi1_2025.flexycup.lexer.ContadorOperacionesLexer;
import com.jgranados.compi1_2025.flexycup.parser.ContadorOperacionesParser;
import java.io.StringReader;

/**
 *
 * @author jose
 */
public class Compi1_2025 {

    public static void main(String[] args) {
        String contenido = "26*1;;9*87;;1/1;4+3;2-5;13+877;";
        StringReader reader = new StringReader(contenido);
        ContadorOperacionesLexer lexer = new ContadorOperacionesLexer(reader);
        ContadorOperacionesParser parser = new ContadorOperacionesParser(lexer);
        
        try {
            parser.parse();
            parser.getContador().imprimirContador();
        } catch (Exception e) {
            System.out.println("manejo de exception");
        }
    }
}
