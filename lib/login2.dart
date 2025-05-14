import 'package:aplikasi_kedua/Home/homepage.dart';
import 'package:aplikasi_kedua/lupapw.dart';
import 'package:aplikasi_kedua/register.dart';
import 'package:aplikasi_kedua/themes/colors_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:aplikasi_kedua/auth_service.dart'; 

class Login2 extends StatefulWidget {
  const Login2({super.key});

  @override
  _Login2State createState() => _Login2State();
}

class _Login2State extends State<Login2> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();
  String _errorMessage = '';

  Future<void> _login() async {
    if (_formKey.currentState!.validate()) {
      try {
        await authService.value.signIn(
          email: _emailController.text,
          password: _passwordController.text,
        );
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => homepage()));
      } catch (e) {
        setState(() {
          _errorMessage = e.toString();
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD3DBEB),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo
              Padding(
                padding: const EdgeInsets.only(top: 76, left: 60),
                child: Image.asset(
                  "images/logo.png",
                  width: 100,
                  height: 70,
                ),
              ),
              const SizedBox(height: 20),

              // Container Background Gelap
              Container(
                width: 412,
                height: 700,
                padding:
                    const EdgeInsets.symmetric(vertical: 40, horizontal: 30),
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
                      // Header Text
                      Center(
                        child: Text(
                          "Let's sign you in",
                          style: GoogleFonts.inter(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(height: 50),

                      // Input Email
                      TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          prefixIcon:
                              const Icon(Icons.email, color: Colors.grey),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Masukkan Email",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Email tidak boleh kosong';
                          }
                          if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                            return 'Email tidak valid';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 15),

                      // Input Password
                      TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.lock, color: grey400),
                          suffixIcon:
                              const Icon(Icons.visibility, color: grey400),
                          filled: true,
                          fillColor: Colors.white,
                          hintText: "Masukkan Password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Password tidak boleh kosong';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 1),

                      // Forgot Password
                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Lupapw()));
                          },
                          child: const Text(
                            "Forgot Password?",
                            style: TextStyle(
                              color: Color(0xFF6EE7B7),
                              fontSize: 14,
                              fontWeight: FontWeight.w300,
                              decoration: TextDecoration.underline,
                              decorationColor: Color(0xFF6EE7B7),
                            ),
                          ),
                        ),
                      ),

                      const SizedBox(height: 35),

                      // Tombol Login
                      SizedBox(
                        width: double.infinity,
                        height: 60,
                        child: ElevatedButton(
                          onPressed: _login,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: blueTombol,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                          child: const Text(
                            "Login",
                            style:
                                TextStyle(fontSize: 18, color: Colors.white),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),

                      
                      if (_errorMessage.isNotEmpty)
                        Text(
                          _errorMessage ='Maaf, email atau kata sandi salah atau mungkin akun anda belum terdartar',
                          style: const TextStyle(color: Colors.red),
                        ),

                      const SizedBox(height: 5),

                      
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Create an Account?",
                            style: GoogleFonts.inter(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Register()));
                            },
                            child: const Text(
                              "Register",
                              style: TextStyle(
                                color: Color(0xFF6EE7B7),
                                fontSize: 16,
                                fontWeight: FontWeight.w300,
                                decoration: TextDecoration.underline,
                                decorationColor: Color(0xFF6EE7B7),
                              ),
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
    );
  }
}
