import 'package:aplikasi_kedua/KostKu/alamat.dart';
import 'package:aplikasi_kedua/KostKu/datakostsud.dart';
import 'package:aplikasi_kedua/KostKu/detailtambah.dart';
import 'package:aplikasi_kedua/themes/colors_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Datakos1 extends StatefulWidget {
  const Datakos1({super.key});

  @override
  State<Datakos1> createState() => _MyWidgetState();
}

Map<String, bool> checkBoxValues = {
  "Ada jam malam": false,
  "Tidak bisa DP(sewa harian)": false,
  "Akses 24 jam": false,
  "Dilarang merokok di kamar": false,
  "Lawan jenis dilarang ke kamar": false,
  "Maks.1 orang/kamar": false,
  "Maks.2 orang/kamar": false,
  "Maks.3 orang/kamar": false,
};

class _MyWidgetState extends State<Datakos1> {
  String selectedGender = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 72,
            width: 412,
            decoration: BoxDecoration(
              color: Color(0xFF022B60),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                top: 27,
                left: 20,
                right: 357,
                bottom: 10,
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Detailtambah()));
                },
                child: Icon(
                  Icons.arrow_back,
                  size: 35,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(
              right: 290,
              left: 16,
            ),
            child: Text(
              "Data Kost",
              style: GoogleFonts.inter(
                fontSize: 22,
                fontWeight: FontWeight.w600,
                color: blackColor,
              ),
            ),
          ),
          SizedBox(height: 6),
          Padding(
            padding: const EdgeInsets.only(
              right: 150,
              left: 16,
            ),
            child: Text(
              "Silahkan lengkapi data kost",
              style: GoogleFonts.inter(
                fontSize: 18,
                fontWeight: FontWeight.w400,
                color: blackColor,
              ),
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset(
                          "images/no1.png",
                          width: 36,
                          height: 35,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Apa nama kost ini?",
                          style: GoogleFonts.inter(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: blackColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 48,
                        right: 5,
                      ),
                      child: Text(
                        "Saran: Kost(spasi) Nama Kost,Tanpa Nama Kecamatan dan Kota",
                        style: GoogleFonts.inter(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: grey600,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 16,
                        left: 49,
                      ),
                      child: SizedBox(
                        width: 347,
                        height: 44,
                        child: TextField(
                          maxLines: null,
                          minLines: 3,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: grey100,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2),
                              borderSide:
                                  BorderSide(color: Colors.blue, width: 1),
                            ),
                            contentPadding: EdgeInsets.all(10),
                          ),
                          keyboardType: TextInputType.multiline,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "images/no2.png",
                          width: 36,
                          height: 35,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Disewakan untuk putra/putri?",
                          style: GoogleFonts.inter(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: blackColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 50,
                        left: 55,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (selectedGender == "Putri") {
                                  selectedGender = "";
                                } else {
                                  selectedGender = "Putri";
                                }
                              });
                            },
                            child: Container(
                              width: 108,
                              height: 115,
                              decoration: BoxDecoration(
                                color: selectedGender == "Putri"
                                    ? grey500
                                    : Colors.white,
                                border: Border.all(
                                  color: selectedGender == "Putri"
                                      ? darkBlueColor
                                      : darkBlueColor,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.female,
                                      size: 50, color: Colors.black),
                                  SizedBox(height: 5),
                                  Text(
                                    "Putri",
                                    style: GoogleFonts.inter(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: blackColor,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 30,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                if (selectedGender == "Putra") {
                                  selectedGender = "";
                                } else {
                                  selectedGender = "Putra";
                                }
                              });
                            },
                            child: Container(
                              width: 108,
                              height: 115,
                              decoration: BoxDecoration(
                                color: selectedGender == "Putra"
                                    ? grey500
                                    : Colors.white,
                                border: Border.all(
                                  color: selectedGender == "Putra"
                                      ? darkBlueColor
                                      : darkBlueColor,
                                  width: 2,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.male,
                                      size: 50, color: Colors.black),
                                  SizedBox(height: 5),
                                  Text(
                                    "Putra",
                                    style: GoogleFonts.inter(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Image.asset(
                          "images/no3.png",
                          width: 36,
                          height: 35,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Deskripsi kost",
                          style: GoogleFonts.inter(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: blackColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 0),
                    Padding(
                      padding: const EdgeInsets.only(right: 60, left: 50),
                      child: Text(
                        "Ceritakan hal menarik tentang kost anda",
                        style: GoogleFonts.inter(
                          fontSize: 13,
                          fontWeight: FontWeight.w400,
                          color: grey600,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 16,
                        left: 49,
                      ),
                      child: SizedBox(
                        width: 347,
                        height: 90,
                        child: TextField(
                          maxLines: null,
                          minLines: 3,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: grey100,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2),
                              borderSide:
                                  BorderSide(color: Colors.blue, width: 1),
                            ),
                            contentPadding: EdgeInsets.all(2),
                          ),
                          keyboardType: TextInputType.multiline,
                        ),
                      ),
                    ),
                    SizedBox(height: 0),
                    Row(
                      children: [
                        Image.asset(
                          "images/no4.png",
                          width: 36,
                          height: 35,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Peraturan kost",
                          style: GoogleFonts.inter(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: blackColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: checkBoxValues.keys.map((String key) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 0.1),
                          child: CheckboxListTile(
                            contentPadding: EdgeInsets.only(
                              left: 35,
                            ),
                            title: Text(
                              key,
                              style: GoogleFonts.inter(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Colors.black,
                              ),
                            ),
                            value: checkBoxValues[key],
                            activeColor: grey600,
                            checkColor: Colors.white,
                            onChanged: (bool? value) {
                              setState(() {
                                checkBoxValues[key] = value!;
                              });
                            },
                            controlAffinity: ListTileControlAffinity.leading,
                            visualDensity: VisualDensity(
                                horizontal: -4,
                                vertical: -4), // Mengurangi padding default
                          ),
                        );
                      }).toList(),
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Image.asset(
                          "images/no5.png",
                          width: 36,
                          height: 35,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Info pengelola kost anda",
                          style: GoogleFonts.inter(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: blackColor,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 50,
                        right: 200,
                      ),
                      child: Text(
                        "Nama Pengelola",
                        style: GoogleFonts.inter(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: blackColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 40,
                        left: 52,
                      ),
                      child: SizedBox(
                        width: 347,
                        height: 44,
                        child: TextField(
                          maxLines: null,
                          minLines: 3,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: grey100,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2),
                              borderSide:
                                  BorderSide(color: Colors.blue, width: 1),
                            ),
                            contentPadding: EdgeInsets.all(10),
                          ),
                          keyboardType: TextInputType.multiline,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 50,
                        right: 200,
                      ),
                      child: Text(
                        "No Hp Pengelola",
                        style: GoogleFonts.inter(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: blackColor,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 40,
                        left: 52,
                      ),
                      child: SizedBox(
                        width: 347,
                        height: 44,
                        child: TextField(
                          maxLines: null,
                          minLines: 3,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: grey100,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(2),
                              borderSide:
                                  BorderSide(color: Colors.blue, width: 1),
                            ),
                            contentPadding: EdgeInsets.all(10),
                          ),
                          keyboardType: TextInputType.multiline,
                        ),
                      ),
                    ),
                    SizedBox(height: 35),
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 200,
                      ),
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Datakost(),
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: blueTombol,
                          padding: EdgeInsets.symmetric(
                              horizontal: 50, vertical: 15),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child: Text(
                          "lanjutkan",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(height: 100),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
