import 'package:aplikasi_kedua/KostKu/selamat.dart';
import 'package:aplikasi_kedua/themes/colors_theme.dart';
import 'package:flutter/material.dart';

class Datapemilik extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkBlueColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 20),

                    // Judul halaman
                    Text(
                      "Lengkapi data diri Anda",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 5),

                    // Deskripsi
                    Text(
                      "Silahkan isi data berikut ini agar anda dapat menerima calon penyewa.",
                      style: TextStyle(
                          fontSize: 15,
                          color: blackColor,
                          fontWeight: FontWeight.w400),
                    ),
                    SizedBox(height: 10),

                    // Form Nama Lengkap
                    formField("Nama Lengkap", "Masukkan nama lengkap"),
                    SizedBox(height: 15),

                    // Form Nomor Rekening (Hanya Angka)
                    formField("Nomor Rekening", "Masukkan nomor rekening",
                        isNumeric: true),
                    SizedBox(height: 10),

                    // Form Nama Bank
                    formField("Nama Bank", "Masukkan nama bank"),
                    SizedBox(height: 15),

                    // Form Nama Pemilik Rekening
                    formField("Nama Pemilik Rekening",
                        "Masukkan nama pemilik rekening"),
                    SizedBox(height: 50),

                    // Tombol Kirim Data
                    Center(
                      child: SizedBox(
                        width: 296,
                        height: 50,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: blueTombol,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Selamat()));
                          },
                          child: Text(
                            "Kirim Data",
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget untuk membuat form field
  Widget formField(String label, String hint, {bool isNumeric = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        SizedBox(height: 5),
        TextField(
          keyboardType: isNumeric
              ? TextInputType.number
              : TextInputType
                  .text, // Menampilkan keyboard angka jika isNumeric = true
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
          decoration: InputDecoration(
            hintText: hint,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(color: grey100),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
          ),
        ),
      ],
    );
  }
}
