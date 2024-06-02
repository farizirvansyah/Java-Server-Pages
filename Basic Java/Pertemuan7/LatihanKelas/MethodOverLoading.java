package Pertemuan7.LatihanKelas;

class Manusia {
    String nama;
    String jenkel;
    
    void setNilai(String param1) {
        nama = param1;
    }
    
    void setNilai(String param1, String param2) {
        nama = param1;
        jenkel = param2;
    }
    
    void cetak() {
        System.out.println(nama + " adalah " + jenkel);
    }
}

class MethodOverLoading {
    public static void main(String[] args) {
        Manusia m1, m2;
        m1 = new Manusia();
        m2 = new Manusia();
        
        m1.setNilai("Fariz Irvansyah");
        m2.setNilai("Fariz Irvansyah", "Laki-laki");
        
        m1.cetak();
        m2.cetak();
    }
}