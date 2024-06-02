package LatihanMandiri;

import javax.swing.*;

public class InputDariKeyboard2 {
    public static void main(String[] args) {
        String NIM="", nama="";
        
        try {
            NIM = JOptionPane.showInputDialog("NIM : ");
            nama = JOptionPane.showInputDialog("Nama : ");
        }
        catch(Exception e) {
            System.out.println("Error : "+e);
        }
        
        System.out.println("====================");
        System.out.println("\t\tCetak Data Mahasiswa");
        System.out.println("====================");
        System.out.println("NIM\t\t: "+NIM);
        System.out.println("Nama\t\t: "+nama);
        System.out.println("====================");
    }
}
