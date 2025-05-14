import 'package:aplikasi_kedua/KostKu/alamat.dart';
import 'package:aplikasi_kedua/KostKu/detailtambah.dart';
import 'package:aplikasi_kedua/KostKu/fotoud.dart';
import 'package:aplikasi_kedua/KostKu/ketersediaan_kamar.dart';
import 'package:aplikasi_kedua/themes/colors_theme.dart';
import 'package:aplikasi_kedua/themes/fonts_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FotoPage extends StatelessWidget {
  const FotoPage({super.key});

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

  void _showPhotoDialog(BuildContext context) {
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
                "images/foto.png", // Sesuaikan dengan gambar peringatan yang kau inginkan
                width: 200,
                height: 190,
              ),
              const SizedBox(height: 20),
              Text(
                "Pastikan memilih foto dengan format.jpg, .jpeg, .png",
                style: regularBlackText.copyWith(
                    fontSize: 16, fontWeight: FontWeight.w400),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () => _showPermissionDialog(context),
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: darkBlueColor),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text("Ambil foto",
                          style: GoogleFonts.inter(
                              color: darkBlueColor,
                              fontWeight: FontWeight.w500,
                              fontSize: 16)),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () => _showPermissionDialog(context),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: darkBlueColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child:
                          Text(" Ambil dari Galeri", style: regularWhiteText),
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

  void _showPermissionDialog(BuildContext context) {
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
                "images/izinakses.png",
                width: 350,
                height: 200,
              ),
              const SizedBox(height: 5),
              Text(
                "Membutuhkan akses kamera dan penyimpanan",
                style: GoogleFonts.inter(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: blackColor),
                textAlign: TextAlign.left,
              ),
              const SizedBox(height: 5),
              Text(
                "Agar bisa tambah foto kos, mohon izinkan akses ke kamera dan galeri",
                style: GoogleFonts.inter(
                    color: blackColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w400),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FotoPage()));
                      },
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: darkBlueColor),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text("Nanti saja",
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
                                builder: (context) => FotoPage()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: darkBlueColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Text(" Ijinkan", style: regularWhiteText),
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
      backgroundColor: Colors.white,
      body: Column(children: [
        Container(
          width: 412,
          height: 78,
          decoration: BoxDecoration(
            color: darkBlueColor,
          ),
          child: Padding(
            padding: EdgeInsets.only(
              top: 27,
              left: 20,
              right: 357,
              bottom: 10,
            ),
            child: GestureDetector(
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
        Padding(
          padding: const EdgeInsets.only(
            right: 290,
            left: 16,
          ),
          child: Text(
            "Foto Kost",
            style: GoogleFonts.inter(
              color: blackColor,
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 19,
          ),
          child: Text(
            "Foto yang menarik adalah hal pertama yang diperhatikan calon penyewa sebelum memilih.",
            style: GoogleFonts.inter(
              color: grey600,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 14,
                      ),
                      child: Image.asset(
                        "images/Group1.png",
                        width: 29,
                        height: 28,
                      ),
                    ),
                    SizedBox(width: 12),
                    Text(
                      "Foto bangunan Tampak depan",
                      style: GoogleFonts.inter(
                        color: blackColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 0),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 56,
                  ),
                  child: Text(
                    "foto horizontal akan terlihat lebih bagus sebagai foto utama kos anda",
                    style: GoogleFonts.inter(
                      color: blackColor,
                      fontSize: 13,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 270, right: 16),
                  child: ElevatedButton(
                      onPressed: () => _showPhotoDialog(context),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: darkBlueColor,
                          padding: EdgeInsets.symmetric(
                              horizontal: 35, vertical: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2),
                          )),
                      child: Text(
                        "Pilih Foto",
                        style: GoogleFonts.inter(
                          color: whiteColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      )),
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 14,
                      ),
                      child: Image.asset(
                        "images/Group2.png",
                        width: 29,
                        height: 28,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Foto tampilan dalam bangunan",
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: blackColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2),
                Padding(
                  padding: const EdgeInsets.only(left: 53),
                  child: Text(
                    "Perlihatkan suasana di dalam dengan cahaya terang agar terlihat lebih jelas",
                    style: GoogleFonts.inter(
                      color: blackColor,
                      fontSize: 13,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 270, right: 16),
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: darkBlueColor,
                          padding: EdgeInsets.symmetric(
                              horizontal: 35, vertical: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2),
                          )),
                      child: Text(
                        "Pilih Foto",
                        style: GoogleFonts.inter(
                          color: whiteColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      )),
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 14,
                      ),
                      child: Image.asset(
                        "images/Group3.png",
                        width: 29,
                        height: 28,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Foto tampak dari jalan",
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: blackColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2),
                Padding(
                  padding: const EdgeInsets.only(left: 53),
                  child: Text(
                    "Lewat foto ini,tunjukkan lingkungan sekitar depan kos ke calon penyewa",
                    style: GoogleFonts.inter(
                      color: blackColor,
                      fontSize: 13,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 270, right: 16),
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: darkBlueColor,
                          padding: EdgeInsets.symmetric(
                              horizontal: 35, vertical: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2),
                          )),
                      child: Text(
                        "Pilih Foto",
                        style: GoogleFonts.inter(
                          color: whiteColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      )),
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 14,
                      ),
                      child: Image.asset(
                        "images/Group4.png",
                        width: 29,
                        height: 28,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Foto tampilan dalam bangunan",
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: blackColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2),
                Padding(
                  padding: const EdgeInsets.only(left: 53),
                  child: Text(
                    "Perlihatkan suasana di dalam dengan cahaya terang agar terlihat lebih jelas",
                    style: GoogleFonts.inter(
                      color: blackColor,
                      fontSize: 13,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 270, right: 16),
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: darkBlueColor,
                          padding: EdgeInsets.symmetric(
                              horizontal: 35, vertical: 10),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2),
                          )),
                      child: Text(
                        "Pilih Foto",
                        style: GoogleFonts.inter(
                          color: whiteColor,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      )),
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 14,
                      ),
                      child: Image.asset(
                        "images/Group5.png",
                        width: 29,
                        height: 28,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Foto kamar mandi",
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: blackColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2),
                Padding(
                  padding: const EdgeInsets.only(left: 53),
                  child: Text(
                    "Tunjukkan kondisi kamar mandi yang akan digunakan oleh penyewa kos (opsional)",
                    style: GoogleFonts.inter(
                      color: blackColor,
                      fontSize: 13,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 270, right: 16),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: darkBlueColor,
                        padding:
                            EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2),
                        )),
                    child: Text(
                      "Pilih Foto",
                      style: GoogleFonts.inter(
                        color: whiteColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 14,
                      ),
                      child: Image.asset(
                        "images/Group6.png",
                        width: 29,
                        height: 28,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Tambah foto lain? Boleh dong",
                      style: GoogleFonts.inter(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: blackColor,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2),
                Padding(
                  padding: const EdgeInsets.only(left: 53),
                  child: Text(
                    "Anda bisa tambahkan foto fasilitas kamar kos di sini.(opsional)",
                    style: GoogleFonts.inter(
                      color: blackColor,
                      fontSize: 13,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 270, right: 16),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: darkBlueColor,
                        padding:
                            EdgeInsets.symmetric(horizontal: 35, vertical: 10),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(2),
                        )),
                    child: Text(
                      "Pilih Foto",
                      style: GoogleFonts.inter(
                        color: whiteColor,
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(right: 200),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Fotoud(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: blueTombol,
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                    child: Text(
                      "lanjutkan",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 50),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
