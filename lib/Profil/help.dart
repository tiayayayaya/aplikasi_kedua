import 'package:flutter/material.dart';

class Help extends StatelessWidget {
  const Help({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Padding(
            padding: const EdgeInsets.only(top: 20 ),
            child: const Icon(Icons.arrow_back, color: Colors.black),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Padding(
          padding: const EdgeInsets.only(
            top: 25,
          ),
          child: const Text(
            "KostGo Help",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Ada Masalah dan Memerlukan Bantuan?",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            const Text(
              "Jangan ragu untuk menghubungi tim Customer Service kami.",
              style: TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 20),
            // WhatsApp
            helpOption(
              icon: Icons.chat_bubble, // Alternatif icon WhatsApp
              iconColor: Colors.green, // Warna khas WhatsApp
              title: "WhatsApp",
              subtitle:
                  "Hubungi customer service kami lewat akun WhatsApp Anda.",
            ),
            // Chat dengan CS
            helpOption(
              icon: Icons.chat_bubble_outline,
              iconColor: Colors.blue,
              title: "Chat dengan CS",
              subtitle: "Langsung chat di sini dengan customer service kami.",
            ),
            // Pusat Bantuan
            helpOption(
              icon: Icons.help_outline,
              iconColor: Colors.orange,
              title: "Pusat Bantuan",
              subtitle: "Pusat informasi dan panduan pengguna.",
            ),
            const SizedBox(height: 20),
            // Layanan Pengaduan Konsumen
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 5,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Layanan Pengaduan Konsumen",
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  const Text("CS KostGO"),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(Icons.phone, size: 20, color: Colors.black54),
                      const SizedBox(width: 8),
                      const Text("082129698139"),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    "Direktorat Jenderal Perlindungan Konsumen dan Tertib Niaga Kementerian Perdagangan Republik Indonesia",
                    style: TextStyle(fontSize: 12),
                  ),
                  const SizedBox(height: 4),
                  Row(
                    children: [
                      Icon(Icons.chat_bubble, size: 20, color: Colors.green),
                      const SizedBox(width: 8),
                      const Text("085311110010"),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget helpOption({
    required IconData icon,
    required Color iconColor,
    required String title,
    required String subtitle,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 5,
            spreadRadius: 1,
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(icon, size: 28, color: iconColor),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: const TextStyle(fontSize: 14, color: Colors.black54),
                ),
              ],
            ),
          ),
          const Icon(Icons.arrow_forward_ios, size: 18, color: Colors.black54),
        ],
      ),
    );
  }
}
