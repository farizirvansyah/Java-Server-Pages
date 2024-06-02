package Pertemuan7.LatihanKelas;

public class DemoMahasiswa {
    public static void main(String[] args) {
        Mahasiswa m = new Mahasiswa("2211500141", "Fariz Irvansyah"); // create an object using the constructor
        System.out.println("Nim: " + m.getNim()); // access the nim attribute using the getter method
        System.out.println("Nama: " + m.getNama()); // access the nama attribute using the getter method
    }
}