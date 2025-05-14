import 'package:aplikasi_kedua/login2.dart';
import 'package:aplikasi_kedua/themes/colors_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Lupapw3 extends StatelessWidget {
  const Lupapw3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD3DBEB),
      body: Center(
        child: SingleChildScrollView(
          // Tambahkan ini agar bisa scroll
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 90),

              // Container Background Gelap
              Container(
                width: 412,
                height: 776,
                padding:
                    const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
                decoration: const BoxDecoration(
                  color: Color(0xFF0A2A5D), // Warna biru tua sesuai gambar
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(120),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Header Text
                    Center(
                      child: Text(
                        "Lupa Password",
                        style: GoogleFonts.inter(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),

                    Center(
                      child: Text(
                        "Buatlah password baru untuk login ke halaman KostGO",
                        style: GoogleFonts.inter(
                          fontSize: 14,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),

                    // Input Username
                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock, color: Colors.grey),
                        suffixIcon:
                            const Icon(Icons.visibility, color: grey400),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Masukkan password baru",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),

                    TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(Icons.lock, color: Colors.grey),
                        suffixIcon:
                            const Icon(Icons.visibility, color: grey400),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: "Konfirmasi password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Anda akan membuat password baru",
                          style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 13,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 60),
                    // Tombol Login
                    SizedBox(
                      width: double.infinity,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Login2()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: blueTombol,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                        ),
                        child: const Text(
                          "Konfirmasi",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                    ),

                    const SizedBox(height: 10),

                    // Register
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
