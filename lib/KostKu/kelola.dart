import 'package:aplikasi_kedua/Chat/chatPage1.dart';
import 'package:aplikasi_kedua/Home/homepage.dart';
import 'package:aplikasi_kedua/KostKu/penyewa.dart';
import 'package:aplikasi_kedua/KostKu/detailtambah.dart';
import 'package:aplikasi_kedua/Profil/profil.dart';
import 'package:aplikasi_kedua/themes/colors_theme.dart';
import 'package:aplikasi_kedua/ulasan/rating.dart';
import 'package:flutter/material.dart';

class Kelola extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ManagePropertyScreen(),
    );
  }
}

class ManagePropertyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65.0),
        child: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: Padding(
            padding: const EdgeInsets.only(top: 25),
            child: Text(
              "Kelola",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
          ),
          centerTitle: false,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Properti Saya",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Detailtambah()));
                },
                child: PropertyOption(
                    icon: Icons.add_home,
                    title: "Tambah",
                    subtitle: "Tambahkan data kos Anda")),
            PropertyOption(
                icon: Icons.business,
                title: "Manajemen Kost",
                subtitle: "Kelola dan atur kost Anda"),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Penyewa()));
              },
              child: PropertyOption(
                  icon: Icons.person,
                  title: "Penyewa",
                  subtitle: "Menambahkan data penyewa dan Mengedit"),
            ),
          ],
        ),
      ),
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
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.home_work, color: tombol, size: 32),
                    Text("My Kost",
                        style: TextStyle(color: tombol, fontSize: 12)),
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
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const profil()),
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
    );
  }
}

class PropertyOption extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  PropertyOption(
      {required this.icon, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 380,
      height: 96,
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: darkBlueColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Row(
        children: [
          Icon(icon, color: Colors.white, size: 30),
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                subtitle,
                style: TextStyle(color: Colors.white, fontSize: 14),
              ),
            ],
          )
        ],
      ),
    );
  }
}
