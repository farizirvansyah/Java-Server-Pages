package LatihanKelas;

import java.io.Console;

public class InputConsole {
   public static void main(String[] args) {
      String nama;
      int usia;

      // membuat objek console
      Console con = System.console();

      // mengisi variabel nama dan usia dengan console
      System.out.print("Inputkan Nama\t: ");
      nama = con.readLine();
      System.out.print("Inputkan Usia\t: ");
      usia = Integer.parseInt(con.readLine().replaceAll("\\s+",""));

      // menghapus baris kosong di konsol
      System.out.print("\033[H\033[2J");
      System.out.flush();

      // mengampilkan isi variabel nama dan usia
      System.out.println("Nama kamu adalah\t: " + nama);
      System.out.println("Saat ini berusia " + usia + " tahun");
   }
}