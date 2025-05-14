import 'package:aplikasi_kedua/KostKu/alamat.dart';
import 'package:aplikasi_kedua/KostKu/datketkam.dart';
import 'package:aplikasi_kedua/KostKu/detailharga.dart';
import 'package:aplikasi_kedua/KostKu/fasilitas.dart';
import 'package:aplikasi_kedua/KostKu/kelola.dart';
import 'package:aplikasi_kedua/KostKu/datakos.dart';
import 'package:aplikasi_kedua/themes/colors_theme.dart';
import 'package:flutter/material.dart';

class Detailtambah extends StatelessWidget {
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
        preferredSize: Size.fromHeight(50.0),
        child: AppBar(
          backgroundColor: darkBlueColor,
          elevation: 0,
          title: Text(
            "Kelola",
            style: TextStyle(
                color: whiteColor, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          centerTitle: false,
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: whiteColor),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Kelola()));
            },
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Silahkan isi kost anda dengan mengisi data di bawah ini:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Datakos1()));
              },
              child: PropertyOption(title: "1. Data Kost"),
            ),
            PropertyOption(title: "2. Alamat Kost"),
            PropertyOption(title: "3. Fasilitas"),
            PropertyOption(title: "4. Harga"),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Datketkam()));
              },
              child: PropertyOption(title: "5. Ketersediaan dan Harga"),
            ),
          ],
        ),
      ),
    );
  }
}

class PropertyOption extends StatelessWidget {
  final String title;

  PropertyOption({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 369,
      height: 120,
      margin: EdgeInsets.only(bottom: 10),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: darkBlueColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
              color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
