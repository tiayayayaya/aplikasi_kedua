import 'package:aplikasi_kedua/Home/homepage.dart';
import 'package:aplikasi_kedua/Home/notifikasi2.dart';

import 'package:aplikasi_kedua/KostKu/tess.dart';
import 'package:aplikasi_kedua/themes/colors_theme.dart';
import 'package:aplikasi_kedua/themes/fonts_theme.dart';
import 'package:flutter/material.dart';

class Notifikasi extends StatefulWidget {
  const Notifikasi({super.key});

  @override
  State<Notifikasi> createState() => _NotifikasiState();
}

class _NotifikasiState extends State<Notifikasi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment:
                        MainAxisAlignment.center, // Supaya teks rata tengah
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => homepage()),
                          );
                        },
                        child: const Icon(
                          Icons.arrow_back,
                          color: blackColor,
                          size: 40,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Notifikasi",
                        style: blacktext.copyWith(fontSize: 15),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 132,
                    height: 50,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        color: bluenavy,
                        width: 2,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.info_outline, color: blackColor),
                        const SizedBox(width: 5),
                        Text(
                          "Utama",
                          style: blacktext.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 10),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Notifikasi2(),
                        ),
                      );
                    },
                    child: Container(
                      width: 160,
                      height: 50,
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      decoration: BoxDecoration(
                        color: whiteColor,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: greyColor,
                          width: 1.5,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.local_offer_outlined, color: blackColor),
                          const SizedBox(width: 5),
                          Text(
                            "Info & Promo",
                            style: blacktext.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => tess()),
                );
              },
              child: Container(
                width: 372,
                height: 95,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: bluenavy,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(width: 10),

                    // Expanded agar teks tidak terdorong ke kanan
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Permintaan Ajukan Sewa",
                            style: mewhiteText.copyWith(fontSize: 12),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "Kucing mengajukan sewa kost global kamar 1. Tinjau dan konfirmasi sekarang!",
                            style: lightwhiteText.copyWith(fontSize: 12),
                            softWrap: true,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => tess()),
                );
              },
              child: Container(
                width: 372,
                height: 95,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: bluenavy,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(width: 10),

                    // Expanded agar teks tidak terdorong ke kanan
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Pembayaran",
                            style: mewhiteText.copyWith(fontSize: 12),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "Kucing telah menyelesaikan pembayaran sewa. Cek detail transaksi sekarang",
                            style: lightwhiteText.copyWith(fontSize: 12),
                            softWrap: true,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => tess()),
                );
              },
              child: Container(
                width: 372,
                height: 95,
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: bluenavy,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(width: 10), // Jarak antara ikon dan teks

                    // Expanded agar teks tidak terdorong ke kanan
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Chat",
                            style: mewhiteText.copyWith(fontSize: 12),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "Anda memiliki pesan baru dari kucing. Jangan biarkan mereka menunggu!",
                            style: lightwhiteText.copyWith(fontSize: 12),
                            softWrap: true,
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
      ),
    );
  }
}
