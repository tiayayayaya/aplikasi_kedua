import 'package:flutter/material.dart';

class Ulasan extends StatelessWidget {
  const Ulasan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF022B60),
        title: const Text(
          "Rating & Ulasan",
          style: TextStyle(color: Color(0xFFFFFFFF)),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Rating & Ulasan",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 4),
            const Text(
              "Rating & ulasan diverifikasi dan berasal dari orang yang "
              "menggunakan kost yang anda miliki",
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 12),

            // Rating utama
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "5,0",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      children: [
                        Icon(Icons.star, color: Colors.amber, size: 24),
                        Icon(Icons.star, color: Colors.amber, size: 24),
                        Icon(Icons.star, color: Colors.amber, size: 24),
                        Icon(Icons.star, color: Colors.amber, size: 24),
                        Icon(Icons.star, color: Colors.amber, size: 24),
                      ],
                    ),
                    const SizedBox(height: 4),
                    // Progress Bar Rating
                    for (int i = 5; i >= 1; i--)
                      Row(
                        children: [
                          Text("$i", style: const TextStyle(fontSize: 14)),
                          const SizedBox(width: 6),
                          Container(
                            width: i == 5 ? 120 : 80, // Lebar dinamis
                            height: 10,
                            decoration: BoxDecoration(
                              color: i == 5 ? Colors.blue : Colors.grey[300],
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
              ],
            ),

            const SizedBox(height: 20),

            // List Ulasan
            Expanded(
              child: ListView(
                children: const [
                  UlasanItem(
                    avatarText: "Cu",
                    avatarColor: Colors.blue,
                    nama: "Cut",
                    tanggal: "05/11/24",
                    rating: 5,
                    ulasan: "Kos nya sangat bagus dan sangat rapi",
                  ),
                  UlasanItem(
                    avatarText: "Ol",
                    avatarColor: Colors.grey,
                    nama: "Olip",
                    tanggal: "29/11/24",
                    rating: 5,
                    ulasan: "lokasinya strategis dekat dengan kampus, dll.",
                  ),
                  UlasanItem(
                    avatarText: "Na",
                    avatarColor: Colors.red,
                    nama: "Naila",
                    tanggal: "12/12/24",
                    rating: 5,
                    ulasan: "kos dengan harga terjangkau dan terbaik",
                  ),
                  UlasanItem(
                    avatarText: "Ri",
                    avatarColor: Colors.lightBlue,
                    nama: "Rini",
                    tanggal: "24/12/24",
                    rating: 5,
                    ulasan: "wahhhhh, amazing",
                  ),
                ],
              ),
            ),

            // Tombol Lihat Semua Ulasan
            Center(
              child: TextButton(
                onPressed: () {},
                child: const Text(
                  "Lihat semua ulasan >",
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UlasanItem extends StatelessWidget {
  final String avatarText;
  final Color avatarColor;
  final String nama;
  final String tanggal;
  final int rating;
  final String ulasan;

  const UlasanItem({
    super.key,
    required this.avatarText,
    required this.avatarColor,
    required this.nama,
    required this.tanggal,
    required this.rating,
    required this.ulasan,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: avatarColor,
            child: Text(
              avatarText,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(nama,
                    style: const TextStyle(
                        fontSize: 16, fontWeight: FontWeight.bold)),
                Row(
                  children: List.generate(
                    rating,
                    (index) =>
                        const Icon(Icons.star, color: Colors.amber, size: 16),
                  ),
                ),
                Text(tanggal,
                    style: const TextStyle(fontSize: 12, color: Colors.grey)),
                const SizedBox(height: 4),
                Text(ulasan, style: const TextStyle(fontSize: 14)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
