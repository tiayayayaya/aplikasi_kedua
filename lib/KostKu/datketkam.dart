import 'package:aplikasi_kedua/KostKu/ketersediaan_kamar.dart';
import 'package:aplikasi_kedua/KostKu/putihsemua.dart';
import 'package:aplikasi_kedua/themes/colors_theme.dart';
import 'package:flutter/material.dart';

class Datketkam extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RoomAvailabilityScreen(),
    );
  }
}

class RoomAvailabilityScreen extends StatefulWidget {
  @override
  _RoomAvailabilityScreenState createState() => _RoomAvailabilityScreenState();
}

class _RoomAvailabilityScreenState extends State<RoomAvailabilityScreen> {
  List<bool> roomStatus = List.generate(10, (index) => false);

  void _showRoomOptions(int index) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading: Icon(Icons.add, color: Colors.blue),
                title: Text("Tambah Kamar"),
                onTap: () {
                  setState(() {
                    roomStatus.add(false);
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(Icons.delete, color: Colors.red),
                title: Text("Hapus Kamar"),
                onTap: () {
                  setState(() {
                    roomStatus.removeAt(index);
                  });
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Center(
                    child: Text("Tutup", style: TextStyle(color: Colors.blue))),
                onTap: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    int occupiedCount = roomStatus.where((status) => status).length;
    int emptyCount = roomStatus.length - occupiedCount;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkBlueColor,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => KetersediaanKamar()));
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Data ketersediaan kamar",
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: blackColor),
              ),
              SizedBox(height: 5),
              Text(
                "Mohon masukkan keterangan nomor dan lantai pada tiap data kamar",
                style: TextStyle(
                    fontSize: 16,
                    color: blackColor,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FilterButton(label: "Semua", selected: true),
                  FilterButton(label: "Terisi $occupiedCount"),
                  FilterButton(label: "Kosong $emptyCount"),
                ],
              ),
              SizedBox(height: 10),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: roomStatus.length,
                itemBuilder: (context, index) {
                  return RoomCard(
                    roomNumber: index + 1,
                    isChecked: roomStatus[index],
                    onChecked: (value) {
                      setState(() {
                        roomStatus[index] = value;
                      });
                    },
                    onMorePressed: () => _showRoomOptions(index),
                  );
                },
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => KetersediaanKamar()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: blueTombol,
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: Text(
                  "selesai",
                  style: TextStyle(fontSize: 16, color: Colors.white),
                ),
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}

class FilterButton extends StatelessWidget {
  final String label;
  final bool selected;

  FilterButton({required this.label, this.selected = false});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: selected ? blueTombol : Colors.white,
        foregroundColor: selected ? Colors.white : Colors.blue[900],
        side: BorderSide(color: Colors.blue[900]!),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Text(label),
    );
  }
}

class RoomCard extends StatelessWidget {
  final int roomNumber;
  final bool isChecked;
  final ValueChanged<bool> onChecked;
  final VoidCallback onMorePressed;

  RoomCard({
    required this.roomNumber,
    required this.isChecked,
    required this.onChecked,
    required this.onMorePressed,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: 2,
      margin: EdgeInsets.only(bottom: 10),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(color: darkBlueColor!, width: 2),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    roomNumber.toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: darkBlueColor,
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    "Nomor/Nama Kamar?",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.more_vert, color: Colors.black54),
                  onPressed: onMorePressed,
                ),
              ],
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "1",
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Lantai (opsional)",
              style: TextStyle(fontSize: 12, color: Colors.black54),
            ),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: "1",
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Kamar sudah terisi"),
                Checkbox(
                  value: isChecked,
                  onChanged: (value) {
                    onChecked(value ?? false);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
