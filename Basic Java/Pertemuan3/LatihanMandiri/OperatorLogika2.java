package Pertemuan3.LatihanMandiri;

public class OperatorLogika2 {
    public static void main(String[] args) {
        String NIM = "2211500141";
        String nama = "Fariz Irvansyah";
        byte nilAkhir = 85;
        System.out.println("\nNIM\t\t : " + NIM);
        System.out.println("Nama\t\t : " + nama);
        System.out.println("Nilai Akhir\t : " + nilAkhir);
        if (nilAkhir >= 85 && nilAkhir <= 100) {
            System.out.println("Grade\t\t : A");
        } else {
            System.out.println("Grade\t\t : E");
        }
    }
}