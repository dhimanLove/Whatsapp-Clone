import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Lastseenonl extends StatefulWidget {
  const Lastseenonl({super.key});

  @override
  State<Lastseenonl> createState() => _LastseenonlState();
}

class _LastseenonlState extends State<Lastseenonl> {
  String _selectedOption = "Off";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: Text("Last seen and Online", style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff0e1717),
      ),
      backgroundColor: Color(0xff0e1717),
      body:
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Text("Update Settings", style: TextStyle(color: Colors.white54)),
          ),
          ListTile(
            leading: Radio<String>(
              value: "Off",
              groupValue: _selectedOption,
              onChanged: (value) {
                setState(() {
                  _selectedOption = value!;
                });
              },
              activeColor: Colors.green,
            ),
            title: Text("Everyone", style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w300)),
            onTap: () {
              setState(() {
                _selectedOption = "Off";
              });
            },
          ),
          ListTile(
            leading: Radio<String>(
              value: "On",
              groupValue: _selectedOption,
              onChanged: (value) {
                setState(() {
                  _selectedOption = value!;
                });
              },
              activeColor: Colors.green,
            ),
            title: Text("My contacts", style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w300)),
            onTap: () {
              setState(() {
                _selectedOption = "On";
              });
            },
          ),
          ListTile(
            leading: Radio<String>(
              value: "1 hour",
              groupValue: _selectedOption,
              onChanged: (value) {
                setState(() {
                  _selectedOption = value!;
                });
              },
              activeColor: Colors.green,
            ),
            title: Text("My cintacts except..", style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w300)),
            onTap: () {
              setState(() {
                _selectedOption = "1 hour";
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Column(
                children: [
                  Text("When turned on , all new individuals can your ONLINE OR LASTSEEN INFO ", style: TextStyle(color: Colors.white54)),
                  Text("Learn more", style: TextStyle(color: Colors.blue)),
                ]
            ),
          ),
        ],
      ),
    );
  }
}
