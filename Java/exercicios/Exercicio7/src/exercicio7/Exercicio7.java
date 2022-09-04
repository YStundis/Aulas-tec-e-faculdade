/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package exercicio7;

import java.util.Scanner;

/**
 *
 * @author IFSP
 */
public class Exercicio7 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        Scanner teclado = new Scanner (System.in);
        
        System.out.println("digite a temperatura em graus celsius: ");
        float c = teclado.nextFloat();
        
        float f = (9*c+160)/5;
        
        System.out.println("Temperatura em fahrenheit é: " + f);
    }
    
}
