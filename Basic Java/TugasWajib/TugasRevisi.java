package TugasWajib;

import java.util.Scanner;
public class TugasRevisi {
    public static void main(String[] args) {
        // Deklarasi Variabel
        String fariz_nama;
        String fariz_nim;
        String fariz_nip;
        String fariz_angkatan;
        String fariz_proses;
        int fariz_status;
        int fariz_makanan;
        int fariz_jml_makanan;
        int fariz_harga_makanan;
        int fariz_snack;
        int fariz_jml_snack;
        int fariz_harga_snack;
        int fariz_minuman;
        int fariz_jml_minuman;
        int fariz_harga_minuman;
        int fariz_jml_pesanan;
        int fariz_total;
        int fariz_bonus;
        int fariz_potongan;
        int fariz_total_bayar;
        int fariz_uang;
        int fariz_kembalian;

        // Program
        Scanner input = new Scanner(System.in);
        System.out.println("Nama Pelanggan: ")  ;   fariz_nama = input.nextLine();
        System.out.println("NIP/NIM\t: ")       ;   fariz_nip = input.nextLine();
        System.out.println("Angkatan\t: ")      ;   fariz_angkatan = input.nextLine();
        System.out.println("Status:\n"
        +"1. Mahasiswa\n"
        +"2. Karyawan:");
        fariz_status = input.nextInt();

        System.out.println("Pilih makanan:\n"
        + "1. Nasi Goreng\n"
        + "2. Mie Goreng\n"
        + "3. Mie Rebus\n"
        + "4. Soto Ayam\n"
        + "5. Soto Daging\n"
        + "6. Tidak Makan\n"
        + "Masukkan Pilihan \t: "); fariz_makanan = input.nextInt();
        fariz_makanan = input.nextInt();
        System.out.println("Masukkan Jumlah \t: "); fariz_jml_makanan = input.nextInt();


        System.out.println("Pilih Snack:\n"
        + "1. Chiki\n"
        + "2. Lidi-lidi\n"
        + "3. Kerupuk\n"
        + "4. Tidak Ngemil\n"
        + "Masukkan Pilihan \t: "); fariz_snack = input.nextInt();
        fariz_snack = input.nextInt();
        System.out.println("Masukkan Jumlah \t: "); fariz_jml_snack = input.nextInt();

        System.out.println("Pilih Minuman:\n"
        + "1. Es The Manis\n"
        + "2. Minuman Saset seduh\n"
        + "3. Kopi Panas\n"
        + "4. The Panas\n"
        + "5. Aqua\n"
        + "6. Tidak Minum\n"
        + "Masukkan Pilihan \t: "); fariz_minuman = input.nextInt();
        System.out.println("Masukkan Jumlah \t: "); fariz_jml_minuman = input.nextInt();
        // Perhitungan
        System.out.println("Proses Penjualan ? (Y/T) : "); fariz_proses = input.nextLine();
        // Harga Makanan
        if (fariz_makanan==1){
            fariz_harga_makanan=15000;
        } if (fariz_makanan==2){
            fariz_harga_makanan=13000;
        } if (fariz_makanan==3){
            fariz_harga_makanan=10000;
        } if (fariz_makanan==4){
            fariz_harga_makanan=12000;
        } if (fariz_makanan==5){
            fariz_harga_makanan=15000;
        }
        // Harga Snack
        if (fariz_snack==1){
            fariz_harga_makanan=2000;
        } else fariz_harga_snack=1000;
    }
}