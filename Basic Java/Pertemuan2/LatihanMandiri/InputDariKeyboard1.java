package LatihanMandiri;

import java.io.*;

public class InputDariKeyboard1{
    public static void main(String[]args){
        String NIM="", nama="";
        BufferedReader objInput = new BufferedReader(new InputStreamReader(System.in));
        
        try{
            System.out.println("=================================");
            System.out.println("\t\tinput Data Mahasiswa ");
            System.out.println("=================================");
            System.out.print("NIM\t\t: "); NIM=objInput.readLine();
            System.out.print("Nama\t\t: "); nama=objInput.readLine();
            System.out.println("=================================");
        }
        catch(Exception e){
            System.out.println("Error : "+e);
        }
        
        System.out.println("=================================");
        System.out.println("\t\tCetak Data Mahasiswa ");
        System.out.println("=================================");
        System.out.println("NIM\t\t: "+NIM);
        System.out.println("Nama\t\t: "+nama);
        System.out.println("=================================");
    }
}