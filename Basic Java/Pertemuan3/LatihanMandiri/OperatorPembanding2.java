package Pertemuan3.LatihanMandiri;

public class OperatorPembanding2{
    public static void main(String[] args){
        String NIM = "2211500141";
        String nama = "Fariz Irvansyah";
        byte nilAkhir = 80;
        System.out.println("\nNIM\t\t: "+NIM);
        System.out.println("Nama\t\t: "+nama);
        System.out.println("Nilai Akhir\t: "+nilAkhir);
        if (nilAkhir>=85){
            System.out.println("Predikat\t: Sangat Memuaskan");
        }
        else{
            System.out.println("Predikat\t: Tidak Memuaskan");
        }
    }
}