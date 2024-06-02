package LatihanKelas;

import java.util.Scanner;

public class ContohScanner {

    public static void main(String[] args) {
        // deklarasi variabel
        String nama, alamat;
        int usia, gaji;

        // membuat scanner baru
        Scanner keyboard = new Scanner(System.in);

        // Tampilkan output ke user
        System.out.println("\n### Pendataan Karyawan PT. Petani Kode ###");
        System.out.print("Nama karyawan\t: ");
        // menggunakan scanner dan menyimpan apa yang diketik di variabel nama
        nama = keyboard.nextLine();
        // Tampilkan output lagi
        System.out.print("Alamat\t\t: ");
        // menggunakan scanner lagi
        alamat = keyboard.nextLine();

        System.out.print("Usia\t\t: ");
        usia = keyboard.nextInt();

        System.out.print("Gaji\t\t: ");
        gaji = keyboard.nextInt();

        // Menampilkan apa yang sudah simpan di variabel
        System.out.println("====================================");
        System.out.println("Nama Karyawan\t: " + nama);
        System.out.println("Alamat\t\t: " + alamat);
        System.out.println("Usia\t\t: " + usia + " tahun");
        System.out.println("Gaji\t\t: Rp " + gaji);
    }
}