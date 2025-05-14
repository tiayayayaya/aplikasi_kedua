import 'package:aplikasi_kedua/Chat/chatPage1.dart';
import 'package:aplikasi_kedua/KostKu/kelola.dart';
import 'package:aplikasi_kedua/Profil/profil.dart';
import 'package:aplikasi_kedua/themes/colors_theme.dart';
import 'package:aplikasi_kedua/themes/fonts_theme.dart';
import 'package:aplikasi_kedua/ulasan/ulasan.dart';
import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  const Rating({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      resizeToAvoidBottomInset: false,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(left: 32),
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
                children: [
                  Icon(Icons.home,
                      color: blackColor.withOpacity(0.7), size: 35),
                  Text("Home",
                      style: TextStyle(
                          color: blackColor, fontSize: 12)), // Sesuaikan warna
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ChatPage()), // Pastikan kelas ini ada
                  );
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.chat,
                        color: blackColor.withOpacity(0.7), size: 32),
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
                        color: blackColor.withOpacity(0.7), size: 32),
                    Text("My Kost",
                        style: TextStyle(color: blackColor, fontSize: 12)),
                  ],
                ),
              ),
              InkWell(
                onTap: () {},
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(Icons.reviews, color: blueTombol, size: 32),
                    Text("Rate",
                        style: TextStyle(color: blackColor, fontSize: 12)),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            profil()), // Nama kelas diperbaiki
                  );
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.person,
                        color: blackColor.withOpacity(0.7), size: 32),
                    Text("Profile",
                        style: TextStyle(color: blackColor, fontSize: 12)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 80,
            width: 420,
            decoration: const BoxDecoration(color: darkBlueColor),
          ),
          const SizedBox(height: 32),

          // Kost Saya
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Ulasan()),
              );
            },
            child: Container(
              width: 388,
              height: 280,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                color: const Color(0xFF022B60),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Kost Mawar",
                          style: boldWhiteText.copyWith(fontSize: 14),
                        ),
                        Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: const Text("Wanita",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Image.asset(
                            'images/foto1.png',
                            width: 97,
                            height: 130,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Banda Sakti",
                                style: regularWhiteText.copyWith(fontSize: 12),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                "K. Mandi Dalam, Wifi, Dll.",
                                style: regularWhiteText.copyWith(fontSize: 12),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                "Harga: Rp 500.000/bulan",
                                style: semiBoldBlackText.copyWith(
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Ulasan(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white, // Warna tombol
                          padding: const EdgeInsets.symmetric(
                              horizontal: 24, vertical: 12),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Text(
                          "Rating dan Ulasan",
                          style: semiBoldToskaText.copyWith(
                            fontSize: 14,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 32),
        ],
      ),
    );
  }
}
