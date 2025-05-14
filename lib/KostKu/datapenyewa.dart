import 'package:aplikasi_kedua/themes/colors_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DataPenyewaExpandable extends StatefulWidget {
  const DataPenyewaExpandable({super.key});

  @override
  State<DataPenyewaExpandable> createState() => _DataPenyewaExpandableState();
}

class _DataPenyewaExpandableState extends State<DataPenyewaExpandable> {
  bool showDetail = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFEF6FF),
      appBar: AppBar(
        backgroundColor: const Color(0xFF003366),
        iconTheme: IconThemeData(color: whiteColor),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  showDetail = !showDetail;
                });
              },
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black54),
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Aulia Mutia",
                            style: GoogleFonts.inter(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: blackColor)),
                        Text("Penyewa",
                            style: GoogleFonts.inter(
                                fontSize: 14,
                                color: blackColor,
                                fontWeight: FontWeight.w300)),
                      ],
                    ),
                    const Icon(Icons.arrow_drop_down, size: 24),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            if (showDetail)
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.blue.shade900, width: 1.5),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // rata kiri
                  children: [
                    buildText("Nama : Aulia Mutia"),
                    buildText("Jenis Kelamin : Perempuan"),
                    buildText("Nomor Hp : 085276549821"),
                    buildText("Alamat : Bireun, Jalan Medan Banda Aceh"),
                    buildText("Nama Kost : Kost Mawar"),
                    buildText("Nomor Kamar : 5"),
                    buildText("Durasi Sewa dan Harga : 1 bulan, 500.000,00"),
                    buildText("Tanggal Masuk : 13/03/2025"),
                    const SizedBox(height: 16),

                    // Tombol Edit & Hapus
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton.icon(
                          onPressed: () {
                            // logika edit
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Edit ditekan")),
                            );
                          },
                          icon: Icon(Icons.edit, color: Colors.blue),
                          label: Text("Edit",
                              style: TextStyle(color: Colors.blue)),
                        ),
                        TextButton.icon(
                          onPressed: () {
                            // logika hapus
                            _showDeleteDialog(context);
                          },
                          icon: Icon(Icons.delete, color: Colors.red),
                          label: Text("Hapus",
                              style: TextStyle(color: Colors.red)),
                        ),
                      ],
                    )
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget buildText(String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Text(text,
          style: GoogleFonts.inter(
              fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black)),
    );
  }

  void _showDeleteDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Konfirmasi Hapus"),
        content: const Text("Yakin ingin menghapus data penyewa ini?"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Batal"),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              setState(() {
                showDetail = false;
              });
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Data berhasil dihapus")),
              );
            },
            child: const Text("Hapus", style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }
}
