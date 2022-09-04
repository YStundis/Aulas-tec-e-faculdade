/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package exercicio2;

import java.util.Scanner;

/**
 *
 * @author Aluno
 */
public class Exercicio2 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        Scanner teclado = new Scanner (System.in);
        
        System.out.println("escreva o 1 número: ");
        int n1 = teclado.nextInt();
        
        System.out.println("escreva o 2 número: ");
        int n2 = teclado.nextInt();
        
        System.out.println("Escreva o 3 número: ");
        int n3 = teclado.nextInt();
        
        System.out.println("Escreva o 4 número: ");
        int n4 = teclado.nextInt();
        
        System.out.println(n1 + n2 + n3 + n4 + " É resultado da soma");
        System.out.println(n1 - n2 - n3 - n4 + " É o resultado da subtração");
        System.out.println(n1 * n2 * n3 * n4 + " É o resultado da multiplicação");
        System.out.println(n1 / n2 / n3 / n4 + " É o resultado da divisão");
        
    }
    
}
