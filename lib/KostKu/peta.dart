import 'package:aplikasi_kedua/KostKu/alamat.dart';
import 'package:aplikasi_kedua/themes/colors_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PetaPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300], // Warna latar belakang luar
      appBar: AppBar(
        backgroundColor: darkBlueColor, // Warna biru tua
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white, size: 30),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              "images/Peta.png",
              fit: BoxFit.cover,
            ),
          ),

          // Input pencarian lokasi
          Positioned(
            top: 16,
            left: 16,
            right: 16,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    blurRadius: 5,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
              child: Row(
                children: [
                  Icon(Icons.search, color: Colors.grey[600]),
                  const SizedBox(width: 8),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Masukkan nama lokasi/area/alamat",
                        hintStyle: GoogleFonts.inter(color: Colors.grey[600]),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Icon(Icons.close, color: Colors.grey[600]),
                ],
              ),
            ),
          ),

          // Penanda lokasi (pin merah)
          Center(
            child: Icon(
              Icons.location_on,
              color: Colors.red,
              size: 40,
            ),
          ),

          // Tombol Lanjutkan
          Positioned(
            bottom: 30,
            left: 16,
            right: 16,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AlamatPage()));
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: blueTombol, // Warna biru tombol
                padding: const EdgeInsets.symmetric(vertical: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              child: Text(
                "Lanjutkan",
                style: GoogleFonts.inter(fontSize: 16, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
