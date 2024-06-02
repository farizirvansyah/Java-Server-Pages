package LatihanKelas;

import javax.swing.*;

public class InputDariKeyboard2 {
    public static void main(String[] args) {
        String NIM = "", nama = "";
        byte nilAbsen = 0, nilTugas = 0, nilUTS = 0, nilUAS = 0;
        try {
            NIM = JOptionPane.showInputDialog("NIM: ");
            nama = JOptionPane.showInputDialog("Nama: ");
            nilAbsen = Byte.parseByte(JOptionPane.showInputDialog("Nilai Absen: "));
            nilTugas = Byte.parseByte(JOptionPane.showInputDialog("Nilai Tugas: "));
            nilUTS = Byte.parseByte(JOptionPane.showInputDialog("Nilai UTS: "));
            nilUAS = Byte.parseByte(JOptionPane.showInputDialog("Nilai UAS: "));
        } catch (Exception e) {
            System.out.println("Error: " + e);
        }
        System.out.println("====================================");
        System.out.println("\tCetak Data Mahasiswa");
        System.out.println("====================================");
        System.out.println("NIM\t\t: " + NIM);
        System.out.println("Nama\t\t: " + nama);
        System.out.println("Nilai Absen\t: " + nilAbsen);
        System.out.println("Nilai Tugas\t: " + nilTugas);
        System.out.println("Nilai UTS\t: " + nilUTS);
        System.out.println("Nilai UAS\t: " + nilUAS);
        System.out.println("====================================");
    }
}