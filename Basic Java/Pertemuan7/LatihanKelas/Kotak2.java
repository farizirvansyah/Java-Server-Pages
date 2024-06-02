package Pertemuan7.LatihanKelas;

public class Kotak2 {
    int panjang;
    int lebar;
    int tinggi;
    int volume;
    
    // pembuatan method hitung volume dengan jenis non-voids mengembalikan nilai
    public int HitungVolume() {
        volume = panjang * lebar * tinggi;
        return volume;
    }
    
    public void SetData(int p, int l, int t) {
        panjang = p;
        lebar = l;
        tinggi = t;
    }
    
    public static void main(String[] args) {
        Kotak2 obj = new Kotak2();
        obj.SetData(10, 20, 5); // melewatkan data (pass by value)
        System.out.println("Volume Balok adalah " + obj.HitungVolume());
    }
}