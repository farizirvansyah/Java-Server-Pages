package Pertemuan7.LatihanKelas;

public class DemoKotak {
    // method main yang diakses pertama kali saat program dijalankan
    public static void main(String[] args) {
        double volume;
        
        // membuat objek dengan nama k
        Kotak k = new Kotak();
        
        // mengisikan nilai ke dalam data-data kelas Kotak
        k.panjang = 4;
        k.lebar = 3;
        k.tinggi = 2;
        
        // menghitung isi-volume kotak
        volume = k.panjang * k.tinggi * k.lebar;
        
        // menampilkan nilai volume ke layar monitor
        System.out.println("Volume kotak = " + volume);
    }
}