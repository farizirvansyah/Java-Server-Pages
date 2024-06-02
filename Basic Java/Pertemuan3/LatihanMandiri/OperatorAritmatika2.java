package Pertemuan3.LatihanMandiri;

public class OperatorAritmatika2 {
    public static void main(String[] args) {
        String NIM = "2211500141";
        String nama = "Fariz Irvansyah";
        final int HARGASKS = 60000;
        byte totSKS = 21;
        System.out.println("\nNIM\t\t: " + NIM);
        System.out.println("Nama\t\t: " + nama);
        System.out.println("Harga SKS\t: " + HARGASKS);
        System.out.println("Total SKS\t: " + totSKS);
        System.out.println("==================================");
        int hargaTotal = HARGASKS * totSKS;
        System.out.println("Total Bayar\t: " + hargaTotal);
        System.out.println("==================================");
    }
}