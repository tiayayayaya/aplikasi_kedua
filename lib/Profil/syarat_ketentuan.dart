import 'package:aplikasi_kedua/Profil/filter1.dart';
import 'package:aplikasi_kedua/themes/colors_theme.dart';
import 'package:flutter/material.dart';

class SyaratKetentuan extends StatelessWidget {
  const SyaratKetentuan({super.key});

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
                const SizedBox(width: 8),
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
                  MaterialPageRoute(builder: (context) => const Filter1()),
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
              "Syarat dan Ketentuan Umum",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              "Dengan menggunakan aplikasi KostGo, pengguna menyatakan bahwa mereka telah membaca, memahami, dan menyetujui untuk terkait oleh syarat dan ketentuan ini. Jika pengguna tidak setuju dengan salah satu atau seluruh ketentuan yang tercantum dalam dokumen ini, maka pengguna disarankan untuk tidak menggunakan layanan KostGo.\n\n"
              "KostGo dapat mengubah, menambah, atau menghapus bagian dari syarat dan ketentuan ini kapan saja tanpa pemberitahuan terlebih dahulu. Oleh karena itu, pengguna disarankan untuk secara berkala meninjau ketentuan ini agar tetap mengetahui perubahan terbaru. Dengan terus menggunakan layanan setelah perubahan diterapkan, pengguna dianggap telah menyetujui revisi tersebut.\n\n"
              "Pengguna juga diharapkan menggunakan layanan KostGo secara bertanggung jawab dan tidak menyalahgunakan platform ini untuk tujuan yang melanggar hukum atau merugikan pihak lain. Jika ditemukan pelanggaran terhadap ketentuan ini, KostGo berhak untuk mengambil tindakan yang dianggap perlu, termasuk namun tidak terbatas pada penangguhan atau penghapusan akun pengguna.",
              style: TextStyle(fontSize: 14, color: blackColor),
            ),
            const SizedBox(height: 20),
            const Divider(),
            buildExpansionTile("1. Definisi"),
            buildExpansionTile("2. Ketentuan Penggunaan"),
            buildExpansionTile("3. Hak dan Kewajiban Penyewa"),
            buildExpansionTile("4. Hak dan Kewajiban Pemilik Kos"),
            buildExpansionTile("5. Hukum yang Berlaku"),
            buildExpansionTile("6. Kontak dan Bantuan"),
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
