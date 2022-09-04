/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package exercicio14;

import java.util.Scanner;

/**
 *
 * @author IFSP
 */
public class Exercicio14 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        
        Scanner teclado = new Scanner (System.in);
        
        System.out.println("Digite o valor de fábrica do veiculo: ");
        double n1 = teclado.nextDouble();
        
        double x1 = n1 * 0.28;
        double x2 = x1 * 0.45;
        double x3 = n1 + x1 + x2;
        
        System.out.println("o custo final ao consumidor é: R$" + x3);
        
        
    }
    
}
