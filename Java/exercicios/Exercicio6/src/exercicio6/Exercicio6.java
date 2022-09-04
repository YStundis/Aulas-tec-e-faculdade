/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package exercicio6;

import java.util.Scanner;

/**
 *
 * @author IFSP
 */
public class Exercicio6 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        Scanner teclado = new Scanner (System.in);
        
        System.out.println("insira um valor: ");
        int a = teclado.nextInt();
        
        System.out.println("insira outro valor: ");
        int b = teclado.nextInt();
        
        int x1 = b;
        
        int x2 = a;
        
                
        System.out.println("Valor de A: " + x1 + " Valor de B: " + x2);
        
    }
    
}
