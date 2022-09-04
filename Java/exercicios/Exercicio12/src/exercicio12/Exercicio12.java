/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package exercicio12;

import java.util.Scanner;

/**
 *
 * @author IFSP
 */
public class Exercicio12 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        Scanner teclado = new Scanner (System.in);
        
        System.out.println("Escreva sua idade em anos: ");
        int n1 = teclado.nextInt();
        
        System.out.println("Escreva a quantidade de meses: ");
        int n2 = teclado.nextInt();
        
        System.out.println("Escreva a quantidade de dias: ");
        int n3 = teclado.nextInt();
        
        int x1 = n1*365;
        
        int x2 = n2*30;
        
        int x3 = x1 + x2 + n3;
        
        System.out.println("Sua idade em dias é: " + x3);
    }
    
}
