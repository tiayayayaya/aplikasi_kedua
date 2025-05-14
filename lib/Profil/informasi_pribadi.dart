import 'package:aplikasi_kedua/Profil/profil.dart';
import 'package:flutter/material.dart';

class InformasiPribadi extends StatelessWidget {
  const InformasiPribadi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Informasi Pribadi",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                height: 209,
                decoration: BoxDecoration(
                  color: Color(0xFF022B60),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white,
                      child: Icon(Icons.person,
                          size: 30, color: Color(0xFF022B60)),
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Ubah Foto",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 8),
                        Icon(Icons.edit_square, color: Colors.white, size: 16),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              InputField(label: "Nama lengkap"),
              InputField(label: "Nomor handphone"),
              InputField(label: "Alamat email"),
              SizedBox(height: 20),
              Text(
                "Verifikasi Kartu Identitas",
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                textAlign: TextAlign.left, // Pastikan teks rata kiri
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Container(
                    width: 191, // Sesuai permintaan
                    height: 69, // Sesuai permintaan
                    decoration: BoxDecoration(
                      border: Border.all(color: Color(0xFF022B60)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        "Belum ada Foto",
                        style:
                            TextStyle(color: Color(0xFF022B60), fontSize: 14),
                      ),
                    ),
                  ),
                  SizedBox(width: 50),
                  GestureDetector(
                    onTap: () {},
                    child: Text(
                      "Tambahkan",
                      style: TextStyle(
                          color: Color(0xFF022B60),
                          fontWeight: FontWeight.bold,
                          fontSize: 14),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class InputField extends StatelessWidget {
  final String label;
  InputField({required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // Teks label rata kiri
      children: [
        Text(
          label,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 4),
        Container(
          height: 55,
          width: double.infinity, // Sejajarkan dengan container lain
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Color(0xFF022B60), width: 2.0),
          ),
          child: Center(
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.symmetric(vertical: 15),
              ),
            ),
          ),
        ),
        SizedBox(height: 10),
      ],
    );
  }
}

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: profil(),
  ));
}
