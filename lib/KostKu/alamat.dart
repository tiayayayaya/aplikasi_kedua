import 'package:aplikasi_kedua/KostKu/alamatud.dart';
import 'package:aplikasi_kedua/KostKu/detailtambah.dart';
import 'package:aplikasi_kedua/KostKu/foto.dart';
import 'package:aplikasi_kedua/KostKu/peta.dart';
import 'package:aplikasi_kedua/themes/fonts_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:aplikasi_kedua/themes/colors_theme.dart';

class AlamatPage extends StatefulWidget {
  @override
  _AlamatPageState createState() => _AlamatPageState();
}

class _AlamatPageState extends State<AlamatPage> {
  String? selectedKecamatan;
  List<String> kecamatanList = [
    "Muara Satu",
    "Muara Dua",
    "Banda Sakti",
    "Blang Mangat"
  ];

  final TextEditingController provinsiController = TextEditingController();
  final TextEditingController kabupatenController = TextEditingController();
  final TextEditingController catatanController = TextEditingController();

  @override
  void dispose() {
    provinsiController.dispose();
    kabupatenController.dispose();
    catatanController.dispose();
    super.dispose();
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
      appBar: AppBar(
        backgroundColor: darkBlueColor,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white, size: 35),
          onPressed: () => _showCancelDialog(context),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Alamat",
              style: GoogleFonts.inter(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Cari alamat kos anda di peta",
              style: GoogleFonts.inter(
                fontSize: 15,
                color: blackColor,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              "Buka peta dan posisikan pin untuk tampilkan\n"
              "alamat kos. Silakan lengkapi dengan nomor\n"
              "rumah dan RT/RW, jika belum ada",
              style: GoogleFonts.inter(
                  fontSize: 14, fontWeight: FontWeight.w400, color: grey600),
            ),
            const SizedBox(height: 12),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => PetaPage()));
              },
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 150, vertical: 15),
                foregroundColor: darkBlueColor,
                backgroundColor: grey100,
                side: const BorderSide(color: darkBlueColor),
              ),
              child: Text(
                "Buka Peta",
                style: GoogleFonts.inter(
                    fontSize: 15, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(height: 16),
            buildTextField("Provinsi", provinsiController),
            const SizedBox(height: 12),
            buildTextField("Kabupaten/Kota", kabupatenController),
            const SizedBox(height: 12),
            Text(
              "Kecamatan",
              style: GoogleFonts.inter(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 4),
            DropdownButtonFormField<String>(
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 12, vertical: 14),
                fillColor: whiteColor,
                filled: true,
              ),
              value: selectedKecamatan,
              hint: Text(
                "Pilih Kecamatan",
                style: GoogleFonts.inter(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              items: kecamatanList.map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: GoogleFonts.inter(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                );
              }).toList(),
              onChanged: (newValue) {
                print("Kecamatan diubah: $newValue");
                setState(() {
                  selectedKecamatan = newValue;
                });
              },
            ),
            const SizedBox(height: 16),
            Text(
              "Catatan Alamat",
              style: GoogleFonts.inter(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              "Deskripsi patokan agar mudah kos ditemukan. (opsional)",
              style: GoogleFonts.inter(
                  fontSize: 13, color: grey600, fontWeight: FontWeight.w400),
            ),
            const SizedBox(height: 17),
            TextField(
              controller: catatanController,
              maxLines: 3,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.all(12),
              ),
            ),
            const SizedBox(height: 24),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Alamatud()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: blueTombol,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
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
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget buildTextField(String label, TextEditingController controller) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: GoogleFonts.inter(
            fontSize: 16, // Ukuran font lebih besar
            fontWeight: FontWeight.w600, // Teks lebih tebal
            color: Colors.black, // Warna teks lebih jelas
          ),
        ),
        const SizedBox(height: 4),
        TextField(
          controller: controller,
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            contentPadding: EdgeInsets.all(12),
          ),
        ),
      ],
    );
  }
}
