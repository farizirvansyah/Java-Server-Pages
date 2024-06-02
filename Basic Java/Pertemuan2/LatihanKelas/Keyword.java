package LatihanKelas;

public class Keyword{
    public static void main(String[] args){
        // 7 contoh deklarasi dan inisialisasi variabel tidak menggunakan keyword
        String Nim = "2211500141";
        String Nama = "Fariz Irvansyah";
        byte nilAbsen = 80;
        byte nilTugas = 70;
        byte nilUTS = 90;
        byte nilUAS = 75;
        byte jmlSKS = 3;
        int biayaPerSKS = 150000;
        char jk = 'L';
        final int IF = 9;

        // variabel yang menggunakan keyword
        // final int IF = 9;
        // int packageName;
        // char breakChar;

        // menampilkan nilai variabel ke layar
        System.out.println("NIM\t\t: " + Nim);
        System.out.println("Nama\t\t: " + Nama);
        System.out.println("Nilai Absen\t: " + nilAbsen);
        System.out.println("Nilai Tugas\t: " + nilTugas);
        System.out.println("Nilai UTS\t: " + nilUTS);
        System.out.println("Nilai UAS\t: " + nilUAS);
        System.out.println("Jumlah SKS\t: " + jmlSKS);
        System.out.println("Biaya per SKS\t: " + biayaPerSKS);
        System.out.println("Jenis Kelamin\t: " + jk);
        System.out.println("Variabel Tambahan : " + IF);
    }
}