import 'package:aplikasi_kedua/themes/colors_theme.dart';
import 'package:flutter/material.dart';



class Penyewa2 extends StatelessWidget {
  const Penyewa2({super.key});

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
                    color: Colors.black,
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
                              "Promo Penyewa",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        const Padding(
                          padding: EdgeInsets.only(left: 28.0, top: 4),
                          child: Text("Promo dan voucher",
                              style: TextStyle(
                                  fontSize: 14, color: Colors.black54)),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 28.0, top: 4),
                          child: Text("Diskon besar-besaran",
                              style: TextStyle(
                                  fontSize: 14, color: Colors.black54)),
                        ),
                      ],
                    ),
                  ),
                  // Kategori akun penyewa
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
                              "Akun Penyewa",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        const Padding(
                          padding: EdgeInsets.only(left: 28.0, top: 4),
                          child: Text("Pendaftaran",
                              style: TextStyle(
                                  fontSize: 14, color: Colors.black54)),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 28.0, top: 4),
                          child: Text("Pengaturan",
                              style: TextStyle(
                                  fontSize: 14, color: Colors.black54)),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 28.0, top: 4),
                          child: Text("Verifikasi",
                              style: TextStyle(
                                  fontSize: 14, color: Colors.black54)),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 28.0, top: 4),
                          child: Text("Keamanan akun dan transaksi",
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
                              "Produk dan fitur untuk penyewa",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        const Padding(
                          padding: EdgeInsets.only(left: 28.0, top: 4),
                          child: Text("chat",
                              style: TextStyle(
                                  fontSize: 14, color: Colors.black54)),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 28.0, top: 4),
                          child: Text("Pengajuan Sewa",
                              style: TextStyle(
                                  fontSize: 14, color: Colors.black54)),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 28.0, top: 4),
                          child: Text("Sewa Kos",
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
                              "Pencarian Kos dan Properti lainnya",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        const SizedBox(height: 8),
                        const Padding(
                          padding: EdgeInsets.only(left: 28.0, top: 4),
                          child: Text("Pencarian Kos",
                              style: TextStyle(
                                  fontSize: 14, color: Colors.black54)),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 28.0, top: 4),
                          child: Text("Pencarian Properti Lainnya",
                              style: TextStyle(
                                  fontSize: 14, color: Colors.black54)),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 28.0, top: 4),
                          child: Text("Informasi dan detail kos",
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
