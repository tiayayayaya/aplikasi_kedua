import 'package:aplikasi_kedua/KostKu/kelola.dart';
import 'package:aplikasi_kedua/KostKu/penyewa.dart';
import 'package:aplikasi_kedua/themes/colors_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Tambahdatapenyewa extends StatefulWidget {
  const Tambahdatapenyewa({Key? key}) : super(key: key);

  @override
  State<Tambahdatapenyewa> createState() => _TambahdatapenyewaState();
}

class _TambahdatapenyewaState extends State<Tambahdatapenyewa> {
  TextEditingController namaController = TextEditingController();
  TextEditingController notelpController = TextEditingController();
  TextEditingController nokamarController = TextEditingController();
  TextEditingController alamatController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController namakostController = TextEditingController();

  String? selectedGender;
  String? selectedDurasi;
  DateTime? selectedTanggalMasuk;

  List<String> genderList = ['Laki-laki', 'Perempuan'];

  List<String> generateDurasiList() {
    List<String> durasi = [];
    for (int i = 1; i <= 12; i++) {
      durasi.add(
          '$i bulan, Rp${(i * 500000).toString().replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (m) => '${m[1]}.')}');
    }
    return durasi;
  }

  Future<void> pilihTanggal(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedTanggalMasuk ?? DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2100),
    );
    if (picked != null) {
      setState(() {
        selectedTanggalMasuk = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tambah Data Penyewa"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            TextField(
              controller: namaController,
              decoration: InputDecoration(labelText: "Nama Penyewa"),
            ),
            SizedBox(height: 16),
            DropdownButtonFormField<String>(
              value: selectedGender,
              decoration: InputDecoration(labelText: "Jenis Kelamin"),
              items: genderList.map((String gender) {
                return DropdownMenuItem<String>(
                  value: gender,
                  child: Text(gender),
                );
              }).toList(),
              onChanged: (String? value) {
                setState(() {
                  selectedGender = value;
                });
              },
            ),
            SizedBox(height: 16),
            TextField(
              controller: notelpController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: "Nomor Telepon"),
            ),
            SizedBox(height: 16),
            TextField(
              controller: nokamarController,
              decoration: InputDecoration(labelText: "Email"),
            ),
            SizedBox(height: 16),
            TextField(
              controller: alamatController,
              decoration: InputDecoration(labelText: "Alamat"),
            ),
            SizedBox(height: 16),
            TextField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(labelText: "Nama Kost"),
            ),
            SizedBox(height: 16),
            TextField(
              controller: namakostController,
              decoration: InputDecoration(labelText: "Nomor kamar"),
            ),
            SizedBox(height: 16),
            DropdownButtonFormField<String>(
              value: selectedDurasi,
              decoration: InputDecoration(labelText: "Durasi Sewa"),
              items: generateDurasiList().map((String item) {
                return DropdownMenuItem<String>(
                  value: item,
                  child: Text(item),
                );
              }).toList(),
              onChanged: (String? value) {
                setState(() {
                  selectedDurasi = value;
                });
              },
            ),
            SizedBox(height: 16),
            ListTile(
              title: Text(selectedTanggalMasuk == null
                  ? 'Pilih Tanggal Masuk'
                  : 'Tanggal Masuk: ${selectedTanggalMasuk!.day}/${selectedTanggalMasuk!.month}/${selectedTanggalMasuk!.year}'),
              trailing: Icon(Icons.calendar_today),
              onTap: () => pilihTanggal(context),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Penyewa(),
                  ),
                );
              },
              style: OutlinedButton.styleFrom(
                backgroundColor: blueTombol,
                side: const BorderSide(color: darkBlueColor),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: Text(
                "Simpan",
                style: GoogleFonts.inter(
                  color: whiteColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
