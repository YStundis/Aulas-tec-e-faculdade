/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package exercicio3;

import java.util.Scanner;

/**
 *
 * @author Aluno
 */
public class Exercicio3 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        Scanner teclado = new Scanner (System.in);
        
        System.out.println("escreva o número de KM percorridos: ");
        int n1 = teclado.nextInt();
        
        System.out.println("escreva o número de combustivel gasto: ");
        int n2 = teclado.nextInt();
        
        System.out.println(n1 / n2 + " KM/L");
    }
    
}
