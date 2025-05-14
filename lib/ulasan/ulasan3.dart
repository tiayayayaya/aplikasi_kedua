import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ReviewsPage(),
    );
  }
}

class ReviewsPage extends StatelessWidget {
  final List<Map<String, String>> reviews = [
    {
      "initials": "Au",
      "name": "Auliya",
      "date": "31/12/24",
      "review": "kos memiliki wifi, dan wifi nya sangat kencang",
      "color": "0xFF6A0DAD"
    },
    {
      "initials": "Du",
      "name": "Dul",
      "date": "07/01/25",
      "review": "kos tiada tara pokoknya asikkk",
      "color": "0xFFD4AF37"
    },
    {
      "initials": "Wi",
      "name": "Wilda",
      "date": "10/01/25",
      "review": "kosnya cocok bet bagi mahasiswa",
      "color": "0xFF00BFFF"
    },
  ];

  ReviewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {},
        ),
        title: const Text(
          "Rating & Ulasan",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        itemCount: reviews.length,
        itemBuilder: (context, index) {
          final review = reviews[index];
          return ListTile(
            leading: CircleAvatar(
              backgroundColor: Color(int.parse(review["color"]!)),
              child: Text(
                review["initials"]!,
                style: const TextStyle(
                    color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            title: Text(
              review["name"]!,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: List.generate(
                    5,
                    (index) =>
                        const Icon(Icons.star, color: Color.fromRGBO(13, 71, 161, 1), size: 16),
                  ),
                ),
                Text(review["date"]!,
                    style: const TextStyle(fontSize: 12, color: Colors.grey)),
                Text(review["review"]!),
              ],
            ),
          );
        },
      ),
    );
  }
}
