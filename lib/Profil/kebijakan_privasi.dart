import 'package:aplikasi_kedua/Profil/filter2.dart';
import 'package:aplikasi_kedua/themes/colors_theme.dart';
import 'package:flutter/material.dart';



class KebijakanPrivasi extends StatelessWidget {
  const KebijakanPrivasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: greyColor,
        elevation: 0,
        iconTheme: const IconThemeData(color: blackColor), // Warna ikon hitam
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Text(
                  "Panduan dan Layanan",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: bluenavy),
                ),
              ],
            ),
            IconButton(
              icon: const Icon(Icons.menu, color: blackColor),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Filter2()),
                );
              },
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Kebijakan Privasi KostGo",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Selamat datang di aplikasi KostGo! Privasi Anda penting bagi kami. Kami berkomitmen untuk melindungi dan menghormati privasi Anda. \n\n"
              "Kebijakan Privasi ini menjelaskan bagaimana kami mengumpulkan, menggunakan, dan melindungi informasi pribadi Anda saat menggunakan aplikasi KostGo. Dengan menggunakan aplikasi ini, Anda menyetujui pengumpulan dan penggunaan informasi sesuai dengan kebijakan ini.\n\n"
              "Kami memahami bahwa informasi pribadi adalah hal yang sangat sensitif. Oleh karena itu, kami berusaha untuk menerapkan praktik terbaik dalam menjaga keamanan dan kerahasiaan data yang Anda berikan.\n\n"
              " Dalam kebijakan ini, kami juga menjelaskan hak-hak Anda terkait dengan data yang kami kumpulkan serta bagaimana Anda dapat mengontrolnya.",
              style: TextStyle(
                fontSize: 14,
                color: blackColor,
              ),
            ),
            const SizedBox(height: 20),
            const Divider(),
            buildExpansionTile("1. Informasi yang Kami Kumpulkan"),
            buildExpansionTile("2. Cara Menggunakan Informasi Anda"),
            buildExpansionTile("3. Keamanan Data"),
            buildExpansionTile("4. Hak dan Pilihan Anda"),
            buildExpansionTile("5. Perubahan Kebijakan Privasi"),
            buildExpansionTile("6. Kontak dan bantuan"),
          ],
        ),
      ),
    );
  }

  Widget buildExpansionTile(String title) {
    return ExpansionTile(
      title: Text(
        title,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      ),
      children: const [
        Padding(
          padding: EdgeInsets.all(16.0),
          child: Text(
            "Isi dari akan ditampilkan di sini.",
            style: TextStyle(fontSize: 14, color: blackColor),
          ),
        ),
      ],
    );
  }
}
