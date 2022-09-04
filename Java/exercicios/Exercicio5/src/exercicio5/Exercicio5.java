/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package exercicio5;

import java.util.Scanner;

/**
 *
 * @author Aluno
 */
public class Exercicio5 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
       
        Scanner teclado = new Scanner (System.in);
        
        System.out.println("escreva seu nome: ");
        String nome = teclado.nextLine();
        
        System.out.println("escreva a nota da 1 prova: ");
        float n1 = teclado.nextFloat();
        
        System.out.println("escreva a nota da 2 prova: ");
        float n2 = teclado.nextFloat();
        
        System.out.println("escreva a nota da 3 prova: ");
        float n3 = teclado.nextFloat();
        
        System.out.println(nome + " Media aritmética: " + (n1 + n2 + n3)/3);
        
        
    }
    
}
