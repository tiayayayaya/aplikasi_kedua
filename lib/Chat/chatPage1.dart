import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:aplikasi_kedua/Chat/chatDetailPage1.dart';
import 'package:aplikasi_kedua/Home/homepage.dart';
import 'package:aplikasi_kedua/KostKu/kelola.dart';
import 'package:aplikasi_kedua/Profil/profil.dart';
import 'package:aplikasi_kedua/themes/colors_theme.dart';
import 'package:aplikasi_kedua/ulasan/rating.dart';
import 'conversationList (1).dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
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
                        color: Colors.black.withOpacity(0.7), size: 32),
                    const Text("Home",
                        style: TextStyle(color: blackColor, fontSize: 12)),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ChatPage()),
                  );
                },
                child: const Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.chat, color: blueTombol, size: 32),
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
                        color: Colors.black.withOpacity(0.7), size: 32),
                    const Text("My Kost",
                        style: TextStyle(color: blackColor, fontSize: 12)),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Rating()),
                  );
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.reviews,
                        color: Colors.black.withOpacity(0.7), size: 32),
                    const Text("Rate",
                        style: TextStyle(color: blackColor, fontSize: 12)),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => profil()),
                  );
                },
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.person,
                        color: blackColor.withOpacity(0.7), size: 32),
                    const Text("Profile",
                        style: TextStyle(color: blackColor, fontSize: 12)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 16, right: 16, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      "Chat",
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
              child: Material(
                elevation: 4,
                borderRadius: BorderRadius.circular(15),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search...",
                    hintStyle: const TextStyle(
                      color: Color.fromARGB(255, 177, 157, 157),
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey.shade600,
                      size: 20,
                    ),
                    filled: true,
                    fillColor: Colors.grey.shade100,
                    contentPadding: const EdgeInsets.all(8),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(color: Colors.grey.shade100),
                    ),
                  ),
                ),
              ),
            ),
            StreamBuilder<DocumentSnapshot>(
              stream: FirebaseFirestore.instance
                  .collection('buyer_seller_global')
                  .doc('global_chat')
                  .snapshots(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }

                final data = snapshot.data?.data() as Map<String, dynamic>?;
                final lastMessage = data?['lastMessage'] ?? 'Mulai chat...';
                final lastTime = (data?['lastMessageTime'] as Timestamp?)?.toDate();
                final timeText = lastTime != null
                    ? "${lastTime.hour.toString().padLeft(2, '0')}:${lastTime.minute.toString().padLeft(2, '0')}"
                    : 'Now';

                return Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Column(
                    children: [
                      ConversationList(
                        name: "Pelanggan",
                        messageText: lastMessage,
                        imageUrl: 'images/avatarmuara.png',
                        time: timeText,
                        isMessageRead: true,
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ChatDetailPage(),
                            ),
                          );
                        },
                      ),
                      const Divider(
                        height: 20,
                        thickness: 1,
                      ),
                    ],
                  ),
                );
              },
            ),
            
          ],
        ),
      ),
    );
  }
}