/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package exercicio13;

import java.util.Scanner;

/**
 *
 * @author IFSP
 */
public class Exercicio13 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        Scanner teclado = new Scanner (System.in);
        
        System.out.println("escreva o total de votos nulos: ");
        int n1 = teclado.nextInt();
        
        System.out.println("escreva o total de votos brancos: ");
        int n2 = teclado.nextInt();
        
        System.out.println("escreva o total de votos validos: ");
        int n3 = teclado.nextInt();
        
        int t = n1 + n2 + n3;
        
        int x1 = (n1*100)/t;
        int x2 = (n2*100)/t;
        int x3 = (n3*100)/t;
        
        System.out.println("A porcentagem de votos nulo é: " + x1 + "%");
        System.out.println("A porcentagem de votos brancos é: " + x2 + "%");
        System.out.println("A porcentagem de votos validos é : " + x3 + "%");
    }
    
}
