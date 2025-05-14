import 'package:aplikasi_kedua/KostKu/datapemilik.dart';
import 'package:aplikasi_kedua/KostKu/detailtambah.dart';
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

class Putihsemua extends StatelessWidget {
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
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          backgroundColor: darkBlueColor,
          elevation: 0,
          title: Text(
            "Kelola",
            style: TextStyle(
                color: whiteColor, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          centerTitle: false,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: whiteColor),
            onPressed: () => _showCancelDialog(context),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Daftarkan kost anda dengan mengisi data di bawah ini",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: blackColor),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {},
                child: PropertyOption(
                  title: "1. Data Kost",
                  isCompleted:
                      true, // Menjadikan container ini putih dengan ikon checklist
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: PropertyOption(
                  title: "2. Alamat Kost",
                  isCompleted: true,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: PropertyOption(
                  title: "3. Foto",
                  isCompleted: true,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: PropertyOption(
                  title: "4. Fasilitas",
                  isCompleted: true,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: PropertyOption(
                  title: "5. Ketersediaan Kamar dan Harga",
                  isCompleted: true,
                ),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Datapemilik()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: blueTombol,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Text(
                  "selesai",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              SizedBox(height: 50),
            ],
          ),
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
        color: isCompleted ? Colors.white : Colors.blue[900],
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
