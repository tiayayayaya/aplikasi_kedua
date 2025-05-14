import 'package:aplikasi_kedua/themes/colors_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:aplikasi_kedua/auth_service.dart'; 

class Lupapw extends StatefulWidget {
  const Lupapw({super.key});

  @override
  _LupapwState createState() => _LupapwState();
}

class _LupapwState extends State<Lupapw> {
  final TextEditingController _emailController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  String _message = '';

  Future<void> _sendResetLink() async {
    if (_formKey.currentState!.validate()) {
      try {
        await authService.value.resetPassword(email: _emailController.text);
        setState(() {
          _message =
              'Link reset password telah dikirim ke email ${_emailController.text}';
        });
      } catch (e) {
        setState(() {
          _message = 'Gagal mengirim link reset password. Error: $e';
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD3DBEB),
      body: Stack(
        children: [
          Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(height: 90),
                  Container(
                    width: 412,
                    height: 776,
                    padding: const EdgeInsets.symmetric(
                        vertical: 40, horizontal: 30),
                    decoration: const BoxDecoration(
                      color: Color(0xFF0A2A5D),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(120),
                      ),
                    ),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Text(
                              "Lupa Password",
                              style: GoogleFonts.inter(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Center(
                            child: Text(
                              "Masukkan email Anda yang terdaftar untuk mereset Password Anda.",
                              style: GoogleFonts.inter(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(height: 40),
                          TextFormField(
                            controller: _emailController,
                            decoration: InputDecoration(
                              prefixIcon:
                                  const Icon(Icons.email, color: Colors.grey),
                              filled: true,
                              fillColor: Colors.white,
                              hintText: "Masukkan email",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Email tidak boleh kosong';
                              }
                              if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                                  .hasMatch(value)) {
                                return 'Email tidak valid';
                              }
                              return null;
                            },
                          ),
                          const SizedBox(height: 15),
                          if (_message.isNotEmpty)
                            Text(
                              _message,
                              style: TextStyle(
                                color: _message.startsWith('Link')
                                    ? Colors.green
                                    : Colors.red,
                              ),
                            ),
                          const SizedBox(height: 50),
                          SizedBox(
                            width: double.infinity,
                            height: 60,
                            child: ElevatedButton(
                              onPressed: _sendResetLink,
                              style: ElevatedButton.styleFrom(
                                backgroundColor: blueTombol,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50),
                                ),
                              ),
                              child: const Text(
                                "Konfirmasi",
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                            ),
                          ),
                          const SizedBox(height: 10),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Tautan untuk reset dan mengubah password baru akan dikirimkan di email anda",
                                style: GoogleFonts.inter(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 40,
            left: 10,
            child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
                size: 35,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
