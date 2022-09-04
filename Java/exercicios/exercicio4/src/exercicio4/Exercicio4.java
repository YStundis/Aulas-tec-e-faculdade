/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package exercicio4;

import java.util.Scanner;

/**
 *
 * @author Aluno
 */
public class Exercicio4 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        Scanner teclado = new Scanner (System.in);
        
        System.out.println("escreva seu nome: ");
        String nome = teclado.nextLine();
        
        System.out.println("escreva o seu salário fixo: ");
        int n1 = teclado.nextInt();
        
        System.out.println("escreva o total de vendas no mês (em dinheiro): ");
        int n2 = teclado.nextInt();
        
        System.out.println(nome + " Salário fixo " + n1 + " Salário no fim do mês " + ( ( n2 * 0.15) + n1) );
    }
    
}
