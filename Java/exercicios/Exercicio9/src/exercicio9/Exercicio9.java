/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package exercicio9;

import java.util.Scanner;

/**
 *
 * @author IFSP
 */
public class Exercicio9 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        Scanner teclado = new Scanner (System.in);
        
        System.out.println("insira o valor a ser depositado: ");
        float n1 = teclado.nextFloat();
        
        double x = n1*0.007;
        
        System.out.println("o rendimento após um mês é: " + x);
        System.out.println("o valor total após o mês é: " + (x + n1));
    }
    
}
