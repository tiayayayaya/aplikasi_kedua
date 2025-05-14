import 'package:aplikasi_kedua/Chat/chatDetailPage1.dart';
import 'package:aplikasi_kedua/Chat/chatPage1.dart';
import 'package:aplikasi_kedua/Home/notifikasi.dart';
import 'package:aplikasi_kedua/KostKu/detailtambah.dart';
import 'package:aplikasi_kedua/KostKu/kelola.dart';
import 'package:aplikasi_kedua/KostKu/tess.dart';
import 'package:aplikasi_kedua/Profil/profil.dart';
import 'package:aplikasi_kedua/themes/colors_theme.dart';
import 'package:aplikasi_kedua/themes/fonts_theme.dart';
import 'package:aplikasi_kedua/ulasan/rating.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      resizeToAvoidBottomInset: false,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(
          left: 32,
        ),
        child: Container(
          height: 72,
          width: 390,
          decoration: BoxDecoration(
            color: Color(0xFFD3DBEB),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Icon(Icons.home, color: blueTombol, size: 35),
                  Text("Home",
                      style: TextStyle(color: blueTombol, fontSize: 12)),
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ChatPage()),
                  );
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.chat,
                        color: Colors.black.withOpacity(0.7), size: 32),
                    Text("Chat",
                        style: TextStyle(color: blackColor, fontSize: 12)),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Kelola()),
                  );
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.home_work,
                        color: Colors.black.withOpacity(0.7), size: 32),
                    Text("My Kost",
                        style: TextStyle(color: blackColor, fontSize: 12)),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rating()),
                  );
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.reviews,
                        color: Colors.black.withOpacity(0.7), size: 32),
                    Text("Rate",
                        style: TextStyle(color: blackColor, fontSize: 12)),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => profil()),
                  );
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.person,
                        color: Colors.black.withOpacity(0.7), size: 32),
                    Text("Profile",
                        style: TextStyle(color: blackColor, fontSize: 12)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Bagian Header (Profile & Notification)
            Padding(
              padding: const EdgeInsets.only(
                top: 55,
                left: 20,
                right: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => tess(),
                        ),
                      );
                    },
                    borderRadius: BorderRadius.circular(35),
                    child: Row(
                      children: [
                        ClipOval(
                          child: Container(
                            width: 70,
                            height: 70,
                            color: bluenavy,
                            child: Image.asset(
                              "images/profil.jpeg",
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) {
                                return Container(color: bluenavy);
                              },
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          "Putri",
                          style: blacktext.copyWith(fontSize: 15),
                        ),
                      ],
                    ),
                  ),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Notifikasi(),
                          ),
                        );
                      },
                      borderRadius: BorderRadius.circular(50),
                      child: Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: bluenavy,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.notifications,
                          color: whiteColor,
                          size: 31,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 5),

            // Bagian Iklan
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                height: 200.0,
                child: CarouselSlider(
                  options: CarouselOptions(
                    autoPlay: true,
                    viewportFraction: 1,
                    aspectRatio: 16 / 7,
                    autoPlayInterval: Duration(seconds: 2),
                  ),
                  items: [
                    "images/1.png",
                    "images/2.png",
                    "images/3.png",
                    "images/4.png",
                  ].map((i) {
                    return Builder(
                      builder: (BuildContext context) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            margin: EdgeInsets.all(6),
                            width: MediaQuery.of(context).size.width,
                            child: Image.asset(
                              i,
                              fit: BoxFit.contain,
                            ),
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Laporan Statistik",
                    style: blacktext.copyWith(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              width: 372,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                  color: bluenavy,
                  width: 1.5,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Kost Mawar Muara Satu:",
                    style: semiblackText.copyWith(fontSize: 12),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Performa per 03 Feb - 03 Maret",
                    style: lightblackText.copyWith(fontSize: 12),
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Total Sewa
                      Container(
                        height: 100,
                        width: 110,
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 6),
                        decoration: BoxDecoration(
                          color: bluenavy,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Total Sewa",
                              style: lightwhiteText.copyWith(fontSize: 12),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "12 Kamar",
                              style: mewhiteText.copyWith(fontSize: 12),
                            ),
                            SizedBox(height: 5),
                            Image.asset(
                              "images/grafik.png",
                              width: 50,
                              height: 40,
                              fit: BoxFit.contain,
                            ),
                          ],
                        ),
                      ),

                      // Total Chat
                      Container(
                        height: 100,
                        width: 110,
                        padding: const EdgeInsets.symmetric(
                            vertical: 8, horizontal: 6),
                        decoration: BoxDecoration(
                          color: bluenavy,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Total Chat",
                              style: lightwhiteText.copyWith(fontSize: 12),
                            ),
                            const SizedBox(height: 5),
                            Text(
                              "20",
                              style: mewhiteText.copyWith(fontSize: 12),
                            ),
                            const SizedBox(height: 5),
                            Image.asset(
                              "images/grafik.png",
                              width: 50,
                              height: 40,
                              fit: BoxFit.contain,
                            ),
                          ],
                        ),
                      ),

                      // Total Pemasukan
                      Container(
                        height: 100,
                        width: 110,
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 6),
                        decoration: BoxDecoration(
                          color: bluenavy,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Total Pemasukan",
                              style: lightwhiteText.copyWith(fontSize: 11),
                            ),
                            SizedBox(height: 5),
                            Text(
                              "18,000,000",
                              style: mewhiteText.copyWith(fontSize: 12),
                            ),
                            SizedBox(height: 5),
                            Image.asset(
                              "images/grafik.png",
                              width: 50,
                              height: 40,
                              fit: BoxFit.contain,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 15,
                left: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Waktunya Mengelola Properti",
                    style: blacktext.copyWith(
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 5,
                left: 20,
                right: 20,
              ),
              child: Text(
                "Maksimalkan potensi properti anda dengan manajemen kos dari KostGo",
                style: regblackText.copyWith(fontSize: 12),
                softWrap: true, // memastikan text ke bawah
              ),
            ),
            SizedBox(height: 15),
            Container(
              width: 372,
              height: 95,
              padding: EdgeInsets.all(10),
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
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: bluenavy,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.add,
                      color: whiteColor,
                      size: 31,
                    ),
                  ),
                  const SizedBox(width: 15),

                  // Teks Tambah Properti
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment:
                        MainAxisAlignment.center, // Supaya teks rata tengah
                    children: [
                      Text(
                        "Tambah Properti",
                        style: mewblackText.copyWith(fontSize: 12),
                      ),
                      Text(
                        "Buat Kost Anda",
                        style: lightblackText.copyWith(fontSize: 12),
                      ),
                    ],
                  ),

                  // Spacer untuk mendorong ikon ke kanan
                  Spacer(),

                  // Ikon Chevron
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Detailtambah()),
                        );
                      },
                      child: Icon(
                        Icons.chevron_right,
                        color: blackColor,
                        size: 40,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              width: 372,
              height: 95,
              padding: EdgeInsets.all(10),
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
                  // Ikon pusat bantuan
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: bluenavy,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.support_agent,
                      color: whiteColor,
                      size: 31,
                    ),
                  ),
                  const SizedBox(width: 15),

                  // Teks Tambah Properti
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment:
                        MainAxisAlignment.center, // Supaya teks rata tengah
                    children: [
                      Text(
                        "Pusat Bantuan",
                        style: mewblackText.copyWith(fontSize: 12),
                      ),
                      Text(
                        "Info bantuan seputar KostGo",
                        style: lightblackText.copyWith(fontSize: 12),
                      ),
                    ],
                  ),

                  // Spacer untuk mendorong ikon ke kanan
                  Spacer(),

                  // Ikon Chevron
                  Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const tess()),
                        );
                      },
                      child: Icon(
                        Icons.chevron_right,
                        color: blackColor,
                        size: 40,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 150),
          ],
        ),
      ),
    );
  }
}
