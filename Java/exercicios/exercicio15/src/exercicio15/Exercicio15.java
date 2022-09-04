/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package exercicio15;

import java.util.Scanner;

/**
 *
 * @author IFSP
 */
public class Exercicio15 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        Scanner teclado = new Scanner (System.in);
        
        System.out.println("Escreva seu salário mensal: ");
        float n1 = teclado.nextFloat();
        
        System.out.println("Escreva o percentual do reajuste: ");
        float n2 = teclado.nextFloat();
        
        float x1 = n2/100;
        float x2 = n1 * n2;
        
        System.out.println("O valor do novo salário é: " + x2);
       
        
    }
    
}
