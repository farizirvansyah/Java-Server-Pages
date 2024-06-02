package Pertemuan7.LatihanKelas;

class DemoTanpaThis {
    String nama;
    int id;
    
    void setSiswa(int id, String nama) {
    this.id = id;
    this.nama = nama;
    }
    
    void tampil() {
    System.out.println("ID: " + id);
    System.out.println("Nama: " + nama);
    }
    
    public static void main(String[] args) {
    DemoTanpaThis demoThis = new DemoTanpaThis();
    demoThis.setSiswa(0, "Fariz Irvansyah");
    demoThis.tampil();
    }
}  