import 'package:aplikasi_kedua/KostKu/alamat.dart';
import 'package:aplikasi_kedua/KostKu/alamatud.dart';
import 'package:aplikasi_kedua/KostKu/datketkam.dart';
import 'package:aplikasi_kedua/KostKu/detailharga.dart';
import 'package:aplikasi_kedua/KostKu/detailtambah.dart';
import 'package:aplikasi_kedua/KostKu/fasilitas.dart';
import 'package:aplikasi_kedua/KostKu/foto.dart';
import 'package:aplikasi_kedua/KostKu/ketersediaan_kamar.dart';
import 'package:aplikasi_kedua/KostKu/selamat.dart';
import 'package:aplikasi_kedua/KostKu/datakos.dart';
import 'package:aplikasi_kedua/themes/colors_theme.dart';
import 'package:aplikasi_kedua/themes/fonts_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void _showCancelDialog(BuildContext context) {
  showModalBottomSheet(
    context: context,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
    ),
    builder: (context) {
      return Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "images/stop.png",
              width: 200,
              height: 190,
            ),
            const SizedBox(height: 20),
            Text(
              "Mohon Perhatiannya Sebentar",
              style: boldBlackText.copyWith(
                  fontSize: 18, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Text(
              "Jika keluar dari halaman ini, maka data yang sudah di isi di langkah ini tidak akan tersimpan",
              style: regularBlackText.copyWith(fontSize: 14),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: darkBlueColor),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text("Kembali",
                        style: GoogleFonts.inter(
                            color: darkBlueColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 16)),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Detailtambah(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: darkBlueColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: Text("Keluar", style: regularWhiteText),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    },
  );
}

class Fasilitasud extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ManagePropertyScreen(),
    );
  }
}

class ManagePropertyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55.0),
        child: AppBar(
          backgroundColor: darkBlueColor,
          elevation: 0,
          title: Text(
            "Kelola",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          centerTitle: false,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => _showCancelDialog(context),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Daftarkan kost anda dengan mengisi data di bawah ini",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 22),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Datakos1()));
              },
              child: PropertyOption(
                title: "1. Data Kost",
                isCompleted:
                    true, // Menjadikan container ini putih dengan ikon checklist
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AlamatPage()));
              },
              child: PropertyOption(
                title: "2. Alamat Kost",
                isCompleted: true,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FotoPage()));
              },
              child: PropertyOption(
                title: "3. Foto",
                isCompleted: true,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FasilitasKost()));
              },
              child: PropertyOption(
                title: "4. Fasilitas",
                isCompleted: true,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => KetersediaanKamar()));
              },
              child: PropertyOption(title: "5. Ketersediaan Kamar dan Harga"),
            ),
          ],
        ),
      ),
    );
  }
}

class PropertyOption extends StatelessWidget {
  final String title;
  final bool isCompleted;

  PropertyOption({required this.title, this.isCompleted = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 99,
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: isCompleted ? Colors.white : darkBlueColor,
        borderRadius: BorderRadius.circular(8),
        border: isCompleted ? Border.all(color: Colors.grey.shade300) : null,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: isCompleted ? Colors.black : Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          if (isCompleted)
            Icon(Icons.check_circle, color: Colors.green, size: 24),
        ],
      ),
    );
  }
}
