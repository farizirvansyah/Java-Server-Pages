package Pertemuan7.LatihanKelas;

class Mahasiswa {
    // Deklarasi variabel
    String nim;
    String nama;
    
    // Default constructor
    public Mahasiswa() {
    }
    
    // Constructor per-parameter
    public Mahasiswa(String nim, String nama) {
        this.nim = nim;
        this.nama = nama;
    }
    
    public String getNim() {
        return nim;
    }
    
    public String getNama() {
        return nama;
    }
}