package UTS;

import java.util.Scanner;

public class UTS_2 {
    public static void main(String[] args) {
        try (Scanner scanner = new Scanner(System.in)) {
            System.out.println("\nDATA MAHASISWA FTI");
            System.out.println("-----------------------------------");

            System.out.print("NIM: ");
            String nim = scanner.nextLine();

            System.out.print("NAMA: ");
            String nama = scanner.nextLine();

            System.out.print("NILAI UTS: ");
            int nilaiUTS = scanner.nextInt();

            System.out.print("NILAI TGS: ");
            int nilaiTGS = scanner.nextInt();

            System.out.print("NILAI UAS: ");
            int nilaiUAS = scanner.nextInt();

            double totalNilai = hitungTotalNilai(nilaiUTS, nilaiTGS, nilaiUAS);
            String grade = hitungGrade(totalNilai);
            String keterangan = hitungKeterangan(totalNilai);

            System.out.println("\nDATA MAHASISWA FTI");
            System.out.println("-----------------------------------");
            System.out.println("NIM\t\t: " + nim);
            System.out.println("NAMA\t\t: " + nama);
            System.out.println("NILAI UTS\t: " + nilaiUTS);
            System.out.println("NILAI TGS\t: " + nilaiTGS);
            System.out.println("NILAI UAS\t: " + nilaiUAS);
            System.out.println("Total Nilai\t: " + totalNilai);
            System.out.println("Grade\t\t: " + grade);
            System.out.println("Keterangan\t: " + keterangan);
        }
    }

    public static double hitungTotalNilai(int nilaiUTS, int nilaiTGS, int nilaiUAS) {
        double totalNilai = (nilaiUTS * 0.3) + (nilaiTGS * 0.3) + (nilaiUAS * 0.4);
        return totalNilai;
    }

    public static String hitungGrade(double totalNilai) {
        if (totalNilai > 84) {
            return "A";
        } else if (totalNilai > 70) {
            return "B";
        } else {
            return "Tidak Ada";
        }
    }

    public static String hitungKeterangan(double totalNilai) {
        if (totalNilai >= 60) {
            return "LULUS";
        } else {
            return "GAGAL";
        }
    }
}
