package Pertemuan3.LatihanKelas;

public class Mahasiswa {
    public String nama;
    public long nrp;

    Mahasiswa(String a, long b) {
        nama = a;
        nrp = b;
    }

    public void cetak() {
        System.out.println("Nama: " + nama + ", NRP: " + nrp);
    }
}