import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RatingReviewPage(),
    );
  }
}

class RatingReviewPage extends StatelessWidget {
  final List<Map<String, String>> reviews = [
    {
      'name': 'Cut',
      'date': '05/11/24',
      'review': 'Kos nya sangat bagus dan sangat rapi'
    },
    {
      'name': 'Olip',
      'date': '29/11/24',
      'review': 'Lokasinya strategis dekat dengan kampus, dll'
    },
    {
      'name': 'Naila',
      'date': '12/12/24',
      'review': 'Kos dengan harga terjangkau dan terbaik'
    },
    {'name': 'Rini', 'date': '24/12/24', 'review': 'Wahhhhh, amazing'},
  ];

  final Map<int, double> ratingDistribution = {
    5: 100.0, // 80% pengguna memberi rating 5
    4: 00.0, // 10% pengguna memberi rating 4
    3: 0.0, // 5% pengguna memberi rating 3
    2: 0.0, // 3% pengguna memberi rating 2
    1: 0.0, // 2% pengguna memberi rating 1
  };

  Color getAvatarColor(String name) {
    switch (name[0].toUpperCase()) {
      case 'C':
        return const Color.fromRGBO(32, 178, 170, 1);
      case 'O':
        return const Color.fromRGBO(192, 192, 192, 1);
      case 'N':
        return const Color.fromRGBO(178, 34, 34, 1);
      case 'R':
        return const Color.fromRGBO(135, 206, 250, 1);
      default:
        return Colors.blueGrey.shade100;
    }
  }

  String getInitials(String name) {
    List<String> parts = name.split(" ");
    if (parts.length > 1) {
      return parts[0][0] + parts[1][0];
    }
    return name.substring(0, name.length >= 2 ? 2 : 1).toUpperCase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(13, 71, 161, 1),
        title: Text("Rating & Ulasan", style: TextStyle(color: Colors.white)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Rating & Ulasan",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(13, 71, 161, 1)),
            ),
            SizedBox(height: 4),
            Text(
              "Rating & ulasan diverifikasi dan berasal dari orang yang menggunakan kost yang anda miliki",
              style: TextStyle(color: Colors.black),
            ),
            SizedBox(height: 16),

            // Bagian Rating & Bintang
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("5,0",
                        style: TextStyle(
                            fontSize: 40, fontWeight: FontWeight.bold)),
                    Row(
                      children: List.generate(
                        5,
                        (index) => Icon(Icons.star,
                            color: Color.fromRGBO(13, 71, 161, 1), size: 24),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 16),

                // Kolom Bar Rating
                Column(
                  children: ratingDistribution.keys.map((rating) {
                    double percentage = ratingDistribution[rating]!;

                    return Row(
                      children: [
                        Text("$rating",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold)),
                        SizedBox(width: 4),
                        // Ubah lebar bar berdasarkan persentase
                        Container(
                          width: MediaQuery.of(context).size.width *
                              0.6, // Lebar responsif
                          height: 10,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: const Color.fromRGBO(224, 224, 224, 1),
                          ),
                          child: Stack(
                            children: [
                              Container(
                                width: (percentage / 100) *
                                    (MediaQuery.of(context).size.width *
                                        0.6), // Menghitung panjang berdasarkan persentase
                                height: 10,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Color.fromRGBO(13, 71, 161, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    );
                  }).toList(),
                ),
              ],
            ),
            SizedBox(height: 16),

            // Daftar Ulasan
            Expanded(
              child: ListView.builder(
                itemCount: reviews.length,
                itemBuilder: (context, index) {
                  final review = reviews[index];
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          backgroundColor: getAvatarColor(review['name']!),
                          radius: 24,
                          child: Text(
                            getInitials(review['name']!),
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 14),
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(review['name']!,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.black)),
                              Row(
                                children: List.generate(
                                  5,
                                  (index) => Icon(Icons.star,
                                      color: Color.fromRGBO(13, 71, 161, 1),
                                      size: 16),
                                ),
                              ),
                              SizedBox(height: 4),
                              Text(review['date']!,
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12)),
                              SizedBox(height: 4),
                              Text(review['review']!,
                                  style: TextStyle(color: Colors.black)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {},
                child: Text("Lihat semua ulasan >",
                    style: TextStyle(color: Color.fromRGBO(13, 71, 161, 1))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
