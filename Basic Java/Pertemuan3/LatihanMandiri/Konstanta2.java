package Pertemuan3.LatihanMandiri;

public class Konstanta2 {
    public static void main(String[] args) {
        // Deklarasi Variabel
        final String NAMA = "Fariz";
        
        // Inisialisasi Variabel
        // NAMA = "Budi"; 
        // Baris ini akan menghasilkan error karena NAMA sudah final
        
        // Deklarasi + Inisialisasi
        String nama2 = "Irvansyah";
        // String nama2 = new String("Irvansyah"); 
        // Baris ini dapat dihilangkan karena sudah dideklarasikan sebelumnya
        
        // Mencetak isi variabel
        System.out.println("Nama : " + NAMA);
        System.out.println("Nama2: " + nama2);
        
        // Mengubah nilai variabel
        nama2 = "Budi";
        System.out.println("Nama2: " + nama2);
    }
}