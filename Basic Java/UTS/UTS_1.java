package UTS;

import java.util.Scanner;

public class UTS_1 {
    public static void main(String[] args) {
        try (Scanner input = new Scanner(System.in)) {
            System.out.print("Masukkan jari-jari tabung: ");
            double Jari_jari = input.nextDouble();

            System.out.print("Masukkan tinggi tabung: ");
            double Tinggi = input.nextDouble();

            // Menghitung luas lingkaran
            double Luas_Lingkaran = Math.PI * Jari_jari * Jari_jari;

            // Menghitung keliling lingkaran
            double Keliling_Lingkaran = Math.PI * (2 * Jari_jari);

            // Menghitung luas permukaan tabung
            double Luas_Permukaan_Tabung = (2 * Luas_Lingkaran) + (Keliling_Lingkaran * Tinggi);

            // Menghitung volume tabung
            double Volume = Luas_Lingkaran * Tinggi;

            // Menampilkan hasil perhitungan
            System.out.println("Luas permukaan tabung: " + Luas_Permukaan_Tabung);
            System.out.println("Volume tabung: " + Volume);
        }
    }
}