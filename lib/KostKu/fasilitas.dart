import 'package:aplikasi_kedua/KostKu/detailtambah.dart';
import 'package:aplikasi_kedua/KostKu/fasilitasud.dart';
import 'package:aplikasi_kedua/themes/colors_theme.dart';
import 'package:aplikasi_kedua/themes/fonts_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FasilitasKost extends StatefulWidget {
  const FasilitasKost({super.key});

  @override
  State<FasilitasKost> createState() => _FasilitasKostState();
}

class _FasilitasKostState extends State<FasilitasKost> {
  final Map<String, bool> fasilitasUmum = {
    "Balcon": false,
    "CCTV": false,
    "Dapur": false,
    "Dispenser": false,
    "Duplikat Gerbang Kos": false,
    "Kulkas": false,
    "Jemuran": false,
    "Laundry": false,
    "K.Mandi Luar-WC Duduk": false,
    "K.Mandi Luar-WC Jongkok": false,
    "WiFi": false,
  };

  final Map<String, bool> fasilitasKamar = {
    "AC": false,
    "Kasur": false,
    "Kipas Angin": false,
    "Dapur Pribadi": false,
    "Bantal": false,
    "Water Heater": false,
  };

  final Map<String, bool> fasilitasKamarMandi = {
    "Air panas": false,
    "Bak Mandi": false,
    "Kloset Duduk": false,
    "Kloset Jongkok": false,
    "Wastafel": false,
    "Lemari kecil": false,
    "Shower": false,
    "Cermin": false,
  };

  final Map<String, bool> parkir = {
    "Parkir Mobil": false,
    "Parkir Motor": false,
    "Parkir Motor & Sepeda": false,
    "Parkir Sepeda": false,
  };

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
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 175),
            child: SingleChildScrollView(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    sectionTitle("1", "Fasilitas Umum"),
                    buildChecklist(fasilitasUmum),
                    sectionTitle("2", "Fasilitas Kamar"),
                    buildChecklist(fasilitasKamar),
                    sectionTitle("3", "Fasilitas Kamar Mandi"),
                    buildChecklist(fasilitasKamarMandi),
                    sectionTitle("4", "Parkir"),
                    buildChecklist(parkir),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 200,
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Fasilitasud(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: blueTombol,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 45, vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Fasilitasud()));
                          },
                          child: Text(
                            "Lanjutkan",
                            style: regularWhiteText.copyWith(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Column(
            children: [
              Container(
                height: 80,
                width: double.infinity,
                color: darkBlueColor,
                padding: const EdgeInsets.only(top: 45, left: 20, right: 20),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () => _showCancelDialog(context),
                      child: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 25,
                      ),
                    ),
                    const Spacer(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15, left: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Fasilitas Kost",
                    style: boldBlackText.copyWith(fontSize: 22),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 70,
                  width: double.infinity,
                  color: whiteColor,
                  child: Center(
                    child: Text(
                      'Silahkan centang fasilitas yang ada dan sesuai untuk tipe kost ini.',
                      style: regularBlackText.copyWith(fontSize: 18),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget sectionTitle(String number, String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Container(
            width: 37,
            height: 37,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: whiteColor,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.black, width: 3),
            ),
            child: Text(
              number,
              style: boldBlackText.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(width: 10),
          Text(
            title,
            style: boldBlackText.copyWith(
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildChecklist(Map<String, bool> items) {
    return Column(
      children: items.keys.map((String title) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: CheckboxListTile(
            contentPadding: EdgeInsets.only(
              left: 35,
            ),
            title: Text(
              title,
              style: regular1BlackText.copyWith(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
            value: items[title],
            onChanged: (value) {
              setState(() {
                items[title] = value ?? false;
              });
            },
            activeColor: darkBlueColor,
            controlAffinity: ListTileControlAffinity.leading,
            visualDensity: VisualDensity(
                horizontal: -3, vertical: -4), // Mengurangi padding default
          ),
        );
      }).toList(),
    );
  }
}
