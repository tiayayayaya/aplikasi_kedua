import 'package:aplikasi_kedua/KostKu/kelola.dart';
import 'package:aplikasi_kedua/themes/colors_theme.dart';
import 'package:flutter/material.dart';

class Selamat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: 412,
            height: 58,
            decoration: BoxDecoration(color: darkBlueColor),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 100), // Menambahkan jarak dari atas

                  // Gambar dari assets
                  Image.asset("images/selamat.png"),
                  SizedBox(height: 30),

                  // Teks utama
                  Text(
                    "Selamat Data Anda Sudah Diisi",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),

                  // Teks deskripsi
                  Text(
                    "Kini Anda dapat menerima booking dan mengelola kos secara online lewat KostGo",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16,
                        color: blackColor,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 60),

                  // Tombol Selesai
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: blueTombol,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Kelola()));
                      },
                      child: Text(
                        "Selesai",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 12), // Tambahan jarak bawah
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
