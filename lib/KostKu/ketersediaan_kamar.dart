import 'package:aplikasi_kedua/KostKu/datketkam.dart';
import 'package:aplikasi_kedua/KostKu/detailtambah.dart';
import 'package:aplikasi_kedua/KostKu/fasilitas.dart';
import 'package:aplikasi_kedua/KostKu/foto.dart';
import 'package:aplikasi_kedua/KostKu/putihsemua.dart';
import 'package:aplikasi_kedua/themes/colors_theme.dart';
import 'package:aplikasi_kedua/themes/fonts_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KetersediaanKamar extends StatefulWidget {
  const KetersediaanKamar({super.key});

  @override
  State<KetersediaanKamar> createState() => _KetersediaanKamarState();
}

class _KetersediaanKamarState extends State<KetersediaanKamar> {
  int selectedIndex = -1; // Index untuk menyimpan kotak yang dipilih

  void toggleColor(int index) {
    setState(() {
      selectedIndex = (selectedIndex == index) ? -1 : index;
    });
  }

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header
          Container(
            width: double.infinity,
            height: 78,
            color: darkBlueColor,
            child: Padding(
              padding: EdgeInsets.only(
                top: 37,
                left: 20,
                right: 360,
                bottom: 10,
              ),
              child: InkWell(
                onTap: () => _showCancelDialog(context),
                child: Icon(
                  Icons.arrow_back,
                  size: 35,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),

          // Konten dalam SingleChildScrollView
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ketersediaan Kamar dan Harga",
                      style: GoogleFonts.inter(
                        color: blackColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Silahkan isi sesuai dengan kost ada.",
                      style: GoogleFonts.inter(
                        color: grey600,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 15),

                    Text(
                      "Berapa ukuran kamarnya?",
                      style: GoogleFonts.inter(
                        color: blackColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 20),

                    // Kotak Pilihan Ukuran Kamar
                    Center(
                      child: Wrap(
                        spacing: 20,
                        children: List.generate(2, (index) {
                          bool isSelected = selectedIndex == index;
                          return GestureDetector(
                            onTap: () => toggleColor(index),
                            child: Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: darkBlueColor, width: 2),
                                color:
                                    isSelected ? darkBlueColor : Colors.white,
                              ),
                              child: Center(
                                child: Text(
                                  index == 0 ? "3 × 3" : "3 × 4",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: isSelected
                                        ? Colors.white
                                        : Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                    SizedBox(height: 15),

                    Text(
                      "Berapa total jumlah Kamar?",
                      style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: blackColor),
                    ),
                    SizedBox(height: 15),
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: grey200,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2),
                          borderSide: BorderSide(color: Colors.blue, width: 1),
                        ),
                        contentPadding: EdgeInsets.all(10),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(height: 15),

                    Text(
                      "Berapa jumlah Kamar tersedia?",
                      style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: blackColor),
                    ),
                    SizedBox(height: 15),
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: grey200,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2),
                          borderSide: BorderSide(color: Colors.blue, width: 1),
                        ),
                        contentPadding: EdgeInsets.all(10),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(height: 15),

                    Text(
                      "Data ketersediaan kamar ",
                      style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: blackColor),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Mohon masukkan keterangan nomor dan lantai pada tiap data kamar",
                      style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: blackColor),
                    ),
                    SizedBox(height: 20),

                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Datketkam()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: whiteColor,
                          side: BorderSide(color: Color(0xFFFBBF24)),
                          padding: EdgeInsets.symmetric(
                              horizontal: 50, vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: Text(
                          "Atur ketersediaan kamar",
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFFFBBF24),
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    SizedBox(height: 29),

                    Text(
                      "Berapa harga sewa per kamar?",
                      style: GoogleFonts.inter(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: blackColor),
                    ),
                    Text(
                      "Harga per bulan",
                      style: GoogleFonts.inter(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: blackColor),
                    ),
                    SizedBox(height: 15),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Rp",
                        hintStyle: TextStyle(color: Colors.grey),
                        filled: true,
                        fillColor: grey200,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2),
                          borderSide: BorderSide(color: Colors.blue, width: 1),
                        ),
                        contentPadding: EdgeInsets.all(10),
                      ),
                      keyboardType: TextInputType.number,
                    ),
                    SizedBox(height: 25),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 200,
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Putihsemua()));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: blueTombol,
                          padding: EdgeInsets.symmetric(
                              horizontal: 50, vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: Text(
                          "Lanjutkan",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
