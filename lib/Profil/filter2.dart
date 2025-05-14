import 'package:aplikasi_kedua/Profil/info_umum2.dart';
import 'package:aplikasi_kedua/Profil/pemilik2.dart';
import 'package:aplikasi_kedua/Profil/penyewa2.dart';
import 'package:aplikasi_kedua/themes/colors_theme.dart';
import 'package:flutter/material.dart';


class Filter2 extends StatelessWidget {
  const Filter2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                icon: const Icon(Icons.close, size: 30),
                onPressed: () => Navigator.pop(context),
              ),
            ),
            const SizedBox(height: 10),

            // Penyewa Kos
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Penyewa2()),
                );
              },
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Penyewa Kos",
                  style: TextStyle(fontSize: 18, color: blackColor),
                ),
              ),
            ),
            const Divider(color: blackColor),

            // Pemilik Kos
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Pemilik2()),
                );
              },
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Pemilik Kos",
                  style: TextStyle(fontSize: 18, color: blackColor),
                ),
              ),
            ),
            const Divider(color: Colors.black),

            // Info Umum
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const InfoUmum2()),
                );
              },
              child: const Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Info Umum",
                  style: TextStyle(fontSize: 18, color: blackColor),
                ),
              ),
            ),
            const Divider(color: blackColor),
          ],
        ),
      ),
    );
  }
}
