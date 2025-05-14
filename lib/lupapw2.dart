import 'package:aplikasi_kedua/lupapw.dart';
import 'package:aplikasi_kedua/lupapw3.dart';
import 'package:aplikasi_kedua/themes/colors_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pinput/pinput.dart';

class Lupapw2 extends StatelessWidget {
  const Lupapw2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD3DBEB),
      body: Stack(
        children: [
          Center(
            child: SingleChildScrollView(
              // Tambahkan ini agar bisa scroll
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Logo
                  // Padding(
                  //   padding: const EdgeInsets.only(top: 86),
                  //   child: Image.asset(
                  //     "images/logo.png",
                  //     width: 100,
                  //     height: 70,
                  //   ),
                  // ),
                  const SizedBox(height: 90),

                  // Container Background Gelap
                  Container(
                    width: 412,
                    height: 776,
                    padding: const EdgeInsets.symmetric(
                        vertical: 40, horizontal: 30),
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
                        const SizedBox(height: 20),

                        Center(
                          child: Text(
                            "Silakan masukkan kode 4 digit yang dikirim ke nomor handphone Anda.",
                            style: GoogleFonts.inter(
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        const SizedBox(height: 40),

                        // Input Username
                        Center(
                          child: Pinput(
                            length: 4,
                            defaultPinTheme: PinTheme(
                              width: 50,
                              height: 70,
                              textStyle: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                              decoration: BoxDecoration(
                                color: Colors.grey[300],
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 50),

                        // Tombol Login
                        SizedBox(
                          width: double.infinity,
                          height: 60,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Lupapw3()));
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: blueTombol,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(50),
                              ),
                            ),
                            child: const Text(
                              "Verifikasi",
                              style:
                                  TextStyle(fontSize: 18, color: Colors.white),
                            ),
                          ),
                        ),

                        const SizedBox(height: 1),

                        // Register
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Jika Anda tidak menerima kode",
                              style: GoogleFonts.inter(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Lupapw()));
                              },
                              child: const Text(
                                "kirim ulang",
                                style: TextStyle(
                                  color: Color(0xFF6EE7B7),
                                  fontSize: 14,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 40,
            left: 10,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 35,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
