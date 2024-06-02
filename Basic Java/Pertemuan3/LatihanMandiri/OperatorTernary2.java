package Pertemuan3.LatihanMandiri;

public class OperatorTernary2 {
    public static void main(String[] args) {
        String NIM = "2211500141";
        String nama = "Fariz Irvansyah";
        byte nilAkhir = 80;
        System.out.println("\nNIM\t\t : " + NIM);
        System.out.println("Namal\t\t : " + nama);
        System.out.println("Nilai Akhir\t : " + nilAkhir);
        System.out.print("Predikat\t : ");
        System.out.println(nilAkhir >= 85 ? "Memuaskan" : "Tidak Memuaskan");
    }
}