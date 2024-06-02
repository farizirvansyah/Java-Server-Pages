package Pertemuan13.LatihanKelas;

import javax.swing.*;

public class MatKul extends JFrame {
    // Deklarasi objek
    private JLabel lblKodeMtk = new JLabel("Kode Matakuliah:");
    private JLabel lblNamaMtk = new JLabel("Nama:");
    private JLabel lblSKS = new JLabel("SKS:");
    private JLabel lblKodePrasyarat = new JLabel("Kode Prasyarat:");

    private JTextField txtKodeMtk = new JTextField();
    private JTextField txtNamaMtk = new JTextField();
    private JTextField txtSKS = new JTextField();
    private JTextField txtKodePrasyarat = new JTextField();

    private JButton cmdTambah = new JButton("Tambah");
    private JButton cmdUbah = new JButton("Ubah");
    private JButton cmdHapus = new JButton("Hapus");
    private JButton cmdBersih = new JButton("Bersih");

    // Konstruktor MatKul
    public MatKul() {
        setTitle(".:: Form Entri Data Matakuliah ::.");
        setSize(450, 230);
        setLocationRelativeTo(this);
        setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        getContentPane().setLayout(null);

        lblKodeMtk.setBounds(10, 20, 100, 25);
        lblNamaMtk.setBounds(10, 50, 100, 25);
        lblSKS.setBounds(10, 80, 100, 25);
        lblKodePrasyarat.setBounds(10, 110, 100, 25);

        txtKodeMtk.setBounds(120, 20, 100, 25);
        txtNamaMtk.setBounds(120, 50, 300, 25);
        txtSKS.setBounds(120, 80, 100, 25);
        txtKodePrasyarat.setBounds(120, 110, 100, 25);

        cmdTambah.setBounds(10, 150, 80, 25);
        cmdUbah.setBounds(110, 150, 80, 25);
        cmdHapus.setBounds(210, 150, 80, 25);
        cmdBersih.setBounds(310, 150, 80, 25);

        getContentPane().add(lblKodeMtk);
        getContentPane().add(lblNamaMtk);
        getContentPane().add(lblSKS);
        getContentPane().add(lblKodePrasyarat);

        getContentPane().add(txtKodeMtk);
        getContentPane().add(txtNamaMtk);
        getContentPane().add(txtSKS);
        getContentPane().add(txtKodePrasyarat);

        getContentPane().add(cmdTambah);
        getContentPane().add(cmdUbah);
        getContentPane().add(cmdHapus);
        getContentPane().add(cmdBersih);

        bersih();

        setVisible(true);
    }

    void bersih() {
        txtKodeMtk.setText("");
        txtNamaMtk.setText("");
        txtSKS.setText("");
        txtKodePrasyarat.setText("");
    }

    public static void main(String[] args) {
        new MatKul();
    }
}
