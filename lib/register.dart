import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:aplikasi_kedua/login2.dart';
import 'package:aplikasi_kedua/themes/colors_theme.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  final _auth = FirebaseAuth.instance;
  final _firestore = FirebaseFirestore.instance;

  String _errorMessage = '';
  bool _isLoading = false;

  Future<void> _register() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _isLoading = true);
    try {
      final userCredential = await _auth.createUserWithEmailAndPassword(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );

      final uid = userCredential.user!.uid;

      await _firestore.collection('users').doc(uid).set({
        'uid': uid,
        'nama': _fullNameController.text.trim(),
        'email': _emailController.text.trim(),
        'phone': _phoneNumberController.text.trim(),
        'role': 'seller',
        'createdAt': FieldValue.serverTimestamp(),
      });

      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Login2()));
    } catch (e) {
      setState(() => _errorMessage = e.toString());
    } finally {
      setState(() => _isLoading = false);
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
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    const SizedBox(height: 108),
                    Container(
                      width: 412,
                      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
                      decoration: const BoxDecoration(
                        color: Color(0xFF0A2A5D),
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(120)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: Text("Create an Account",
                                style: GoogleFonts.inter(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white)),
                          ),
                          const SizedBox(height: 10),
                          Center(
                            child: Text("Isi data register berikut dengan benar",
                                style: GoogleFonts.inter(fontSize: 14, color: Colors.white)),
                          ),
                          const SizedBox(height: 30),
                          _buildField(_fullNameController, "Masukkan Nama Lengkap", Icons.person),
                          const SizedBox(height: 15),
                          _buildField(_phoneNumberController, "Nomor Telepon", Icons.call),
                          const SizedBox(height: 15),
                          _buildField(_emailController, "Masukkan Email", Icons.email, isEmail: true),
                          const SizedBox(height: 15),
                          _buildField(_passwordController, "Masukkan Password", Icons.lock, obscure: true),
                          const SizedBox(height: 15),
                          _buildField(_confirmPasswordController, "Konfirmasi Password", Icons.lock, obscure: true),
                          const SizedBox(height: 15),
                          if (_errorMessage.isNotEmpty)
                            Text(_errorMessage, style: const TextStyle(color: Colors.red)),
                          const SizedBox(height: 40),
                          ElevatedButton(
                            onPressed: _register,
                            style: ElevatedButton.styleFrom(
                              backgroundColor: blueTombol,
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                              minimumSize: const Size(double.infinity, 60),
                            ),
                            child: _isLoading
                                ? const CircularProgressIndicator(color: Colors.white)
                                : const Text("Daftar", style: TextStyle(fontSize: 18, color: Colors.white)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildField(TextEditingController controller, String hint, IconData icon,
      {bool obscure = false, bool isEmail = false}) {
    return TextFormField(
      controller: controller,
      obscureText: obscure,
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: grey400),
        filled: true,
        fillColor: Colors.white,
        hintText: hint,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) return 'Wajib diisi';
        if (isEmail && !RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) return 'Email tidak valid';
        if (hint.contains("Password") && value.length < 6) return 'Minimal 6 karakter';
        if (hint.contains("Konfirmasi") && value != _passwordController.text) return 'Konfirmasi tidak cocok';
        return null;
      },
    );
  }
}
