import 'package:aplikasi_kedua/Chat/chatPage1.dart';
import 'package:aplikasi_kedua/Home/homepage.dart';
import 'package:aplikasi_kedua/KostKu/kelola.dart';
import 'package:aplikasi_kedua/Profil/help.dart';
import 'package:aplikasi_kedua/Profil/informasi_pribadi.dart';
import 'package:aplikasi_kedua/Profil/kebijakan_privasi.dart';
import 'package:aplikasi_kedua/Profil/keluar.dart';
import 'package:aplikasi_kedua/Profil/pengaturan.dart';
import 'package:aplikasi_kedua/Profil/syarat_ketentuan.dart';
import 'package:aplikasi_kedua/themes/colors_theme.dart';
import 'package:aplikasi_kedua/themes/fonts_theme.dart';
import 'package:aplikasi_kedua/ulasan/rating.dart';
import 'package:flutter/material.dart';

class profil extends StatefulWidget {
  const profil({super.key});

  @override
  State<profil> createState() => _profilState();
}

class _profilState extends State<profil> {
  void _showLogoutDialog(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Container(
          height: 250,
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Logout Akun",
                style: blacktext.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Text(
                "Apakah Anda yakin ingin keluar?",
                style: regblackText.copyWith(fontSize: 14),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Column(
                children: [
                  SizedBox(
                    width: double.infinity, // Lebar penuh
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(
                            color: Color(0xFF002855)), // Warna navy
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        "Batal",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: double.infinity, // Lebar penuh
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Keluar(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF002855), // Warna navy
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        "Keluar",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
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
      resizeToAvoidBottomInset: false,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(
          left: 32,
        ),
        child: Container(
          height: 72,
          width: 390,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(211, 219, 235, 1),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const homepage()),
                  );
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.home,
                        color: blackColor.withOpacity(0.7), size: 32),
                    Text("Home",
                        style: TextStyle(color: blackColor, fontSize: 12)),
                  ],
                ),
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
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Rating()),
                  );
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.reviews,
                        color: blackColor.withOpacity(0.7), size: 32),
                    Text("Rate",
                        style: TextStyle(color: blackColor, fontSize: 12)),
                  ],
                ),
              ),
              const Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(Icons.person, color: tombol, size: 32),
                  Text("Profile",
                      style: TextStyle(color: tombol, fontSize: 12)),
                ],
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 70,
                left: 20,
                right: 20,
              ),
              child: Container(
                width: 371,
                height: 150,
                decoration: BoxDecoration(
                  color: bluenavy,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                            return Container(
                              color: bluenavy,
                            );
                          },
                        ),
                      ),
                    ),
                    const SizedBox(height: 5),
                    Text(
                      "Dul Fitri Hadaini",
                      style: regwhiteText.copyWith(fontSize: 12),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 40,
                right: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Akun",
                    style: blacktext.copyWith(fontSize: 15),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const InformasiPribadi(),
                  ),
                );
              },
              child: Container(
                height: 51,
                width: 300,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: bluenavy,
                    width: 1.5,
                  ),
                ),
                padding: const EdgeInsets.only(
                  right: 10,
                  left: 12,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Icon(
                        Icons.person,
                        color: bluenavy,
                        size: 24,
                      ),
                    ),
                    Text(
                      "Infomasi Pribadi",
                      style: regblackText.copyWith(
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Pengaturan(),
                  ),
                );
              },
              child: Container(
                height: 51,
                width: 300,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: bluenavy,
                    width: 1.5,
                  ),
                ),
                padding: const EdgeInsets.only(
                  right: 10,
                  left: 12,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Icon(
                        Icons.settings,
                        color: bluenavy,
                        size: 24,
                      ),
                    ),
                    Text(
                      "Pengaturan",
                      style: regblackText.copyWith(
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 40,
                right: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Pusat Bantuan",
                    style: blacktext.copyWith(fontSize: 15),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Help(),
                  ),
                );
              },
              child: Container(
                height: 51,
                width: 300,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: bluenavy,
                    width: 1.5,
                  ),
                ),
                padding: const EdgeInsets.only(
                  right: 10,
                  left: 12,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Icon(
                        Icons.live_help,
                        color: bluenavy,
                        size: 24,
                      ),
                    ),
                    Text(
                      "Help",
                      style: regblackText.copyWith(
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                left: 40,
                right: 20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Panduan Layanan",
                    style: blacktext.copyWith(fontSize: 15),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SyaratKetentuan(),
                  ),
                );
              },
              child: Container(
                height: 51,
                width: 300,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: bluenavy,
                    width: 1.5,
                  ),
                ),
                padding: const EdgeInsets.only(
                  right: 10,
                  left: 12,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Icon(
                        Icons.event_note,
                        color: bluenavy,
                        size: 24,
                      ),
                    ),
                    Text(
                      "Syarat Dan Ketentuan",
                      style: regblackText.copyWith(
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const KebijakanPrivasi(),
                  ),
                );
              },
              child: Container(
                height: 51,
                width: 300,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: bluenavy,
                    width: 1.5,
                  ),
                ),
                padding: const EdgeInsets.only(
                  right: 100,
                  left: 12,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Icon(
                        Icons.lock,
                        color: bluenavy,
                        size: 24,
                      ),
                    ),
                    Text(
                      "Kebijakan Privasi",
                      style: regblackText.copyWith(
                        fontSize: 14,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(height: 50),
            InkWell(
              onTap: () {
                _showLogoutDialog(context);
              },
              child: Container(
                height: 51,
                width: 300,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: bluenavy,
                    width: 1.5,
                  ),
                ),
                padding: const EdgeInsets.only(
                  right: 100,
                  left: 12,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Icon(
                        Icons.logout,
                        color: bluenavy,
                        size: 24,
                      ),
                    ),
                    Text(
                      "Logout Akun",
                      style: regblackText.copyWith(
                        fontSize: 14,
                      ),
                    )
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
