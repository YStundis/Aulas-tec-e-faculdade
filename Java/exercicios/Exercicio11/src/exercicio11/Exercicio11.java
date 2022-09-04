/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package exercicio11;

import java.util.Scanner;

/**
 *
 * @author IFSP
 */
public class Exercicio11 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        Scanner teclado = new Scanner (System.in);
        
        System.out.println("Escreva o valor da base do retângulo: ");
        float n1 = teclado.nextFloat();
        
        System.out.println("Escreva o valor da altura do retângulo: ");
        float n2 = teclado.nextFloat();
        
        float x = n1*n2;
        
        System.out.println("A area do retângulo é: " + x);10
        
        
    }
    
}
