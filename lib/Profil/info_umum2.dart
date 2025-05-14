import 'package:aplikasi_kedua/themes/colors_theme.dart';
import 'package:flutter/material.dart';



class InfoUmum2 extends StatelessWidget {
  const InfoUmum2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Column(
        children: [
          Container(width: double.infinity, height: 40, color: bluenavy),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 10),
            color: greyColor,
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                    color: blackColor,
                    size: 40,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const SizedBox(width: 10),
                Text(
                  "Pusat Bantuan",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: blackColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 40,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Kategori Promo Penyewa
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border:
                          Border.all(color: Colors.grey.shade300, width: 1.5),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.date_range,
                                size: 20, color: Colors.black87),
                            const SizedBox(width: 8),
                            const Text(
                              "Info Umum",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        const Padding(
                          padding: EdgeInsets.only(left: 28.0, top: 4),
                          child: Text("Info Umum",
                              style:
                                  TextStyle(fontSize: 14, color: blackColor)),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 28.0, top: 4),
                          child: Text("Saya Ingin cari kos",
                              style:
                                  TextStyle(fontSize: 14, color: blackColor)),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 28.0, top: 4),
                          child: Text("Saya Ingin sewakan kos",
                              style:
                                  TextStyle(fontSize: 14, color: blackColor)),
                        ),
                      ],
                    ),
                  ),
                  // kebijakan dan panduan
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border:
                          Border.all(color: Colors.grey.shade300, width: 1.5),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.person, size: 20, color: Colors.black87),
                            const SizedBox(width: 8),
                            const Text(
                              "Kebijakan dan Panduan",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        const Padding(
                          padding: EdgeInsets.only(left: 28.0, top: 4),
                          child: Text("kebijakan privasi",
                              style: TextStyle(
                                  fontSize: 14, color: Colors.black54)),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 28.0, top: 4),
                          child: Text("kebijakan penalti pengguna",
                              style: TextStyle(
                                  fontSize: 14, color: Colors.black54)),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border:
                          Border.all(color: Colors.grey.shade300, width: 1.5),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.person, size: 20, color: Colors.black87),
                            const SizedBox(width: 8),
                            const Text(
                              "Syarat dan ketentuan",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        const Padding(
                          padding: EdgeInsets.only(left: 28.0, top: 4),
                          child: Text("Pemilik dan Penyewa",
                              style: TextStyle(
                                  fontSize: 14, color: Colors.black54)),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 28.0, top: 4),
                          child: Text("Pemilik",
                              style: TextStyle(
                                  fontSize: 14, color: Colors.black54)),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 28.0, top: 4),
                          child: Text("penyewa",
                              style: TextStyle(
                                  fontSize: 14, color: Colors.black54)),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(15),
                    margin: const EdgeInsets.only(bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border:
                          Border.all(color: Colors.grey.shade300, width: 1.5),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.person, size: 20, color: Colors.black87),
                            const SizedBox(width: 8),
                            const Text(
                              "Panduan Keamanan",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        const Padding(
                          padding: EdgeInsets.only(left: 28.0, top: 4),
                          child: Text("Konfirmasi Tim KostGo",
                              style: TextStyle(
                                  fontSize: 14, color: Colors.black54)),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 28.0, top: 4),
                          child: Text("Keamanan Akun dan Transaksi",
                              style: TextStyle(
                                  fontSize: 14, color: Colors.black54)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
