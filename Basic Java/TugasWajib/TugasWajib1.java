package TugasWajib;

import java.util.Scanner;
public class TugasWajib1 {
    public static void main(String[] args) {
        Scanner input = new Scanner(System.in);
        String farizNim, fariznamaPelanggan, fariznama;
        int farizjumMakanan;
        int farizstatus;
        int farizjumsnack;
        int farizjumMinuman;
        int farizjumPesanan;
        int farizMakanan;
        int farizsnack;
        int farizMinuman;
        int farizTotHarga;
        int farizTotPotongan;
        int farizangkatan;
        double farizTotBayar;
        int farizuang;
        double farizkembalian ;
        boolean ulang = true;
        
        while(ulang){
            System.out.print("Nama Pelanggan : ");
            fariznamaPelanggan = input.nextLine();
            
            System.out.print("NIP/NIM : ");
            farizNim = input.nextLine();
            
            farizangkatan = Integer.parseInt(farizNim.substring(0, 2));
            System.out.println("Angkatan: 20"+farizangkatan);
            
            System.out.println("Status : 1. Mahasiswa, 2. Karyawan");
            System.out.print("Pilih Status (angka) : ");
            farizstatus = input.nextInt();
            
            //menghitung makanan
            System.out.println("Pilih Makanan :");
            System.out.println("1. Nasi Goreng");
            System.out.println("2. Mie Goreng");
            System.out.println("3. Mie Rebus");
            System.out.println("4. Soto Ayam");
            System.out.println("5. Soto Daging");
            System.out.println("6. Tidak makan");
            System.out.print("Masukkan Pilihan (angka) : ");
            farizMakanan = input.nextInt();
            System.out.print("Masukkan Jumlah : ");
            farizjumMakanan = input.nextInt();

            var farizTotMakanan = 0;
            if (farizMakanan == 1) {
                farizTotMakanan += 15000;
            }
            if (farizMakanan == 2) {
                farizTotMakanan += 13000;
            }
            if (farizMakanan == 3) {
                farizTotMakanan += 10000;
            }
            if (farizMakanan == 4) {
                farizTotMakanan += 12000;
            }
            if (farizMakanan == 5) {
                farizTotMakanan += 15000;
            }
            var farizpotongan1 = 0;
            if (farizstatus == 1)
                farizpotongan1 += 2000;

            if (farizMakanan == 6) {
                farizTotMakanan += 0;
            }
            farizpotongan1 = farizpotongan1 * farizjumMakanan;
            farizTotMakanan = farizTotMakanan * farizjumMakanan;
            
            //menghitung snack
            System.out.println("\n");
            System.out.println("Pilih Snack :");
            System.out.println("1. Chiki");
            System.out.println("2. Lidi-lidian");
            System.out.println("3. Kerupuk");
            System.out.println("4. Tidak ngemil");

            System.out.print("Masukkan Pilihan (angka) : ");
            farizsnack = input.nextInt();

            System.out.print("Masukkan Jumlah : ");
            farizjumsnack = input.nextInt();

            var farizTotsnack = 0;
            if (farizsnack == 1) {
                farizTotsnack += 2000;
            }
            if (farizsnack == 2) {
                farizTotsnack += 1000;
            }
            if (farizsnack == 3) {
                farizTotsnack += 1000;
            }
            if (farizsnack == 4) {
                farizTotsnack = 0;
            }
            farizTotsnack = farizTotsnack * farizjumsnack;
            
            //menghitung minuman
            System.out.println("\n");
            System.out.println("Pilih Minuman :");
            System.out.println("1. Es teh manis");
            System.out.println("2. Minuman Saset seduh");
            System.out.println("3. Kopi Panas");
            System.out.println("4. Teh Panas");
            System.out.println("5. Aqua");
            System.out.println("6. Tidak Minum");

            System.out.print("Masukkan Pilihan (angka) : ");
            farizMinuman = input.nextInt();

            System.out.print("Masukkan Jumlah : ");
            farizjumMinuman = input.nextInt();

            var farizTotMinuman = 0;
            if (farizMinuman == 1) {
                farizTotMinuman += 5000;
            }
            if (farizMinuman == 2) {
                farizTotMinuman += 5000;
            }
            if (farizMinuman == 3) {
                farizTotMinuman += 5000;
            }
            if (farizMinuman == 4) {
                farizTotMinuman += 5000;
            }
            if (farizstatus == 2 && farizMinuman == 5) {
                farizTotMinuman += 3000;
            }
            if (farizstatus == 1 && farizMinuman == 5) {
                farizTotMinuman += 4000;
            }

            farizTotMinuman = farizTotMinuman * farizjumMinuman;
            
            //perhitungan jual beli
            farizTotHarga = farizTotMakanan + farizTotsnack + farizTotMinuman;
            farizjumPesanan = farizjumMakanan + farizjumsnack + farizjumMinuman;

            var farizpotongan2 = 0;
            if (farizTotHarga >= 100000) {
                farizpotongan2 += 2000;
            }

            double farizdiskon = 0;
            if (farizangkatan < 2000) {
                farizdiskon = 0.02;
            }
            farizTotPotongan = farizpotongan1 + farizpotongan2;

            double farizTotDiskon = 0;
            farizTotDiskon = farizTotHarga * farizdiskon;
            farizTotBayar = farizTotHarga - farizTotDiskon - farizTotPotongan;

            //hasil 
            System.out.println("==============================");
            System.out.println("Jumlah Pesanan :" + farizjumPesanan);
            System.out.println("Total Harga : " + farizTotHarga);
            if (farizdiskon == 0.02) {
                System.out.println("Diskon : 2% ");
            }
            if (farizdiskon == 0.0) {
                System.out.println("Diskon : 0% ");
            }
            System.out.println("Potongan : " + farizTotPotongan);
            System.out.println("==============================");
            System.out.println("Total Bayar :" + farizTotBayar);
            System.out.print("Uang : ");
            farizuang = input.nextInt();

            farizkembalian = farizuang - farizTotBayar;
            System.out.println("Kembalian : " + farizkembalian);
            System.out.println("==============================");
            System.out.println ("Programer :");

            System.out.print("NIM: ");
            String progNim = input.nextLine();
            if (progNim.isEmpty()) {
                progNim = "2211500141";
            }
            System.out.println(progNim);
            input.nextLine();

            System.out.print("Nama : ");
            String prognama = input.nextLine();
            if (prognama.isEmpty()) {
                prognama = "Fariz Irvansyah";
            }
            System.out.println(prognama);
            input.nextLine();

            System.out.println("Apakah Anda Ingin Mengulang menggunakan program ini ? (Y/T)");
            String pilih = input.nextLine();
            
            if(!pilih.equalsIgnoreCase("Y")){
                ulang = false;
            }
        System.out.println("Finish");
        }
    }
}