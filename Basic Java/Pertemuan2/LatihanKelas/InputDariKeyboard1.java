package LatihanKelas;

import java.io.*;

public class InputDariKeyboard1{
    public static void main(String[] args) {
        String NIM = "";
        String nama = "";
        byte nilAbsen = 0, nilTugas = 0, nilUTS = 0, nilUAS = 0;
        BufferedReader objInput = new BufferedReader(new InputStreamReader(System.in));
        try {
            System.out.println("\n\tInput Data Mahasiswa ");
            System.out.println("====================================");
            System.out.print("NIM\t: "); 
            NIM = objInput.readLine();
            System.out.print("Nama\t: "); 
            nama = objInput.readLine();
            System.out.print("Nilai Absen\t: "); 
            nilAbsen = Byte.parseByte(objInput.readLine());
            System.out.print("Nilai Tugas\t: "); 
            nilTugas = Byte.parseByte(objInput.readLine());
            System.out.print("Nilai UTS\t: "); 
            nilUTS = Byte.parseByte(objInput.readLine());
            System.out.print("Nilai UAS\t: "); 
            nilUAS = Byte.parseByte(objInput.readLine());
            System.out.println("====================================\n");
        } catch(Exception e) {
            System.out.println("Error: " + e);
        }

        System.out.println("\tCetak Data Mahasiswa ");
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