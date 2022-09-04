/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package exercicio10;

import java.util.Scanner;

/**
 *
 * @author IFSP
 */
public class Exercicio10 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        Scanner teclado = new Scanner (System.in);
        
        System.out.println("Insira o valor da compra: ");
        float n1 = teclado.nextFloat();
        
        float x = n1/5;
        
        System.out.println("O valor a pagar por cada parcela é: " + x);
    }
    
}
