import 'package:aplikasi_kedua/Profil/profil.dart';
import 'package:aplikasi_kedua/themes/colors_theme.dart';
import 'package:aplikasi_kedua/themes/fonts_theme.dart';
import 'package:flutter/material.dart';

class Pengaturan extends StatefulWidget {
  const Pengaturan({super.key});

  @override
  State<Pengaturan> createState() => _PengaturanState();
}

class _PengaturanState extends State<Pengaturan> {
  bool isNotifExpanded = false;
  bool isPasswordExpanded = false;
  bool emailNotif = true;
  bool chatNotif = true;
  bool smsNotif = false;
  bool showOldPassword = false;
  bool showNewPassword = false;
  bool showConfirmPassword = false;

  void _toggleNotif() {
    setState(() {
      isNotifExpanded = !isNotifExpanded;
    });
  }

  void _togglePassword() {
    setState(() {
      isPasswordExpanded = !isPasswordExpanded;
    });
  }

  void _showSuccessNotification() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Password berhasil diubah")),
    );
  }

  void _showSuccessNotification2() {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Berhasil diubah")),
    );
  }

  void _showHapusDialog(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return Container(
          height: 300,
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Yakin ingin hapus akun Pemilik di KostGo?",
                style: blacktext.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Text(
                "Semua data Anda akan dihapus. Daftar dengan nomor telepon yang sama dapat Anda lakukan setelah 2x24 jam.",
                style: regular1BlackText.copyWith(fontSize: 14),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                        // Menampilkan notifikasi akun berhasil dihapus
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("Akun berhasil dihapus"),
                            backgroundColor: Colors.red,
                          ),
                        );
                      },
                      style: OutlinedButton.styleFrom(
                        side: const BorderSide(color: Color(0xFF002855)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        "Hapus Akun",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF002855),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: const Text(
                        "Batalkan",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  top: 40,
                  left: 20,
                  right: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => profil()),
                            );
                          },
                          child: const Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                            size: 30,
                          ),
                        ),
                        const SizedBox(width: 10),
                        Text(
                          "Pengaturan",
                          style: blacktext.copyWith(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Container(
                width: 300,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: bluenavy,
                    width: 1.5,
                  ),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 17),
                child: Column(
                  children: [
                    InkWell(
                      onTap: _toggleNotif,
                      child: Row(
                        children: [
                          Icon(Icons.notifications, color: bluenavy, size: 24),
                          SizedBox(width: 10),
                          Text("Notifikasi",
                              style: regblackText.copyWith(fontSize: 14)),
                          Spacer(),
                          Icon(
                            isNotifExpanded
                                ? Icons.expand_less
                                : Icons.chevron_right,
                            color: blackColor,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                    if (isNotifExpanded)
                      Column(
                        children: [
                          CheckboxListTile(
                            value: emailNotif,
                            onChanged: (value) {
                              setState(() {
                                emailNotif = value!;
                              });
                            },
                            title: Text("Rekomendasi via email"),
                          ),
                          CheckboxListTile(
                            value: chatNotif,
                            onChanged: (value) {
                              setState(() {
                                chatNotif = value!;
                              });
                            },
                            title: Text("Notifikasi via chat"),
                          ),
                          CheckboxListTile(
                            value: smsNotif,
                            onChanged: (value) {
                              setState(() {
                                smsNotif = value!;
                              });
                            },
                            title: Text("Notifikasi kos via SMS"),
                          ),
                          SizedBox(height: 10),
                          ElevatedButton(
                            onPressed: _showSuccessNotification2,
                            child: Text("Simpan Perubahan"),
                          ),
                        ],
                      ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 300,
                decoration: BoxDecoration(
                  color: whiteColor,
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(
                    color: bluenavy,
                    width: 1.5,
                  ),
                ),
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: [
                    InkWell(
                      onTap: _togglePassword,
                      child: Row(
                        children: [
                          Icon(Icons.lock, color: bluenavy, size: 24),
                          SizedBox(
                            width: 10,
                            height: 45,
                          ),
                          Text("Ubah Password",
                              style: regblackText.copyWith(fontSize: 14)),
                          Spacer(),
                          Icon(
                            isPasswordExpanded
                                ? Icons.expand_less
                                : Icons.chevron_right,
                            color: blackColor,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                    if (isPasswordExpanded)
                      Column(
                        children: [
                          TextField(
                            obscureText: !showOldPassword,
                            decoration: InputDecoration(
                              labelText: "Password Lama",
                              suffixIcon: IconButton(
                                icon: Icon(
                                  showOldPassword
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                                onPressed: () {
                                  setState(() {
                                    showOldPassword = !showOldPassword;
                                  });
                                },
                              ),
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(height: 20),
                          TextField(
                            obscureText: !showNewPassword,
                            decoration: InputDecoration(
                              labelText: "Password Baru",
                              suffixIcon: IconButton(
                                icon: Icon(
                                  showNewPassword
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                                onPressed: () {
                                  setState(() {
                                    showNewPassword = !showNewPassword;
                                  });
                                },
                              ),
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(height: 20),
                          TextField(
                            obscureText: !showConfirmPassword,
                            decoration: InputDecoration(
                              labelText: "Konfirmasi Password Baru",
                              suffixIcon: IconButton(
                                icon: Icon(
                                  showConfirmPassword
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                                onPressed: () {
                                  setState(() {
                                    showConfirmPassword = !showConfirmPassword;
                                  });
                                },
                              ),
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(height: 10),
                          ElevatedButton(
                            onPressed: _showSuccessNotification,
                            child: Text("Simpan Perubahan"),
                          ),
                        ],
                      ),
                  ],
                ),
              ),
              SizedBox(height: 50),
              InkWell(
                onTap: () {
                  _showHapusDialog(context);
                },
                child: Container(
                  height: 63,
                  width: 300,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      color: bluenavy,
                      width: 1.5,
                    ),
                  ),
                  padding: const EdgeInsets.only(
                    right: 100,
                    left: 12,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: Icon(
                          Icons.delete,
                          color: bluenavy,
                          size: 24,
                        ),
                      ),
                      Text(
                        "Logout Akun",
                        style: regblackText.copyWith(
                          fontSize: 14,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
