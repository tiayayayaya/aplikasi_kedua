import 'package:aplikasi_kedua/KostKu/datapenyewa.dart';
import 'package:aplikasi_kedua/KostKu/kelola.dart';
import 'package:aplikasi_kedua/KostKu/tambahdatapenyewa.dart';
import 'package:flutter/material.dart';
import 'package:aplikasi_kedua/themes/colors_theme.dart';
import 'package:aplikasi_kedua/themes/fonts_theme.dart';

class Penyewa extends StatelessWidget {
  const Penyewa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Header
          Container(
            width: double.infinity,
            height: 72,
            color: darkBlueColor,
            padding: const EdgeInsets.only(top: 35, left: 20),
            child: Padding(
              padding: const EdgeInsets.only(right: 350, bottom: 10),
              child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Kelola(),
                      ),
                    );
                  },
                  child: Icon(Icons.arrow_back, color: whiteColor, size: 25)),
            ),
          ),

          // Isi daftar
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              children: [
                // Card Penyewa 1
                Container(
                  width: double.infinity,
                  height: 80,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: bluenavy,
                      width: 1.5,
                    ),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Tambah Data Penyewa",
                            style: mewblackText.copyWith(fontSize: 16),
                          ),
                        ],
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Tambahdatapenyewa(),
                            ),
                          );
                        },
                        child: Icon(
                          Icons.chevron_right,
                          color: blackColor,
                          size: 40,
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 15),

                // Card Penyewa 2
                Container(
                  width: double.infinity,
                  height: 80,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: bluenavy,
                      width: 1.5,
                    ),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Data Penyewa",
                            style: mewblackText.copyWith(fontSize: 18),
                          ),
                          Text(
                            "Mengedit data penyewa",
                            style: lightblackText.copyWith(fontSize: 13),
                          ),
                        ],
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DataPenyewaExpandable(),
                            ),
                          );
                        },
                        child: Icon(
                          Icons.chevron_right,
                          color: blackColor,
                          size: 40,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
