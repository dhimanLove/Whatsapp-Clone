import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Disappear extends StatefulWidget {
  const Disappear({super.key});

  @override
  State<Disappear> createState() => _DisappearState();
}

class _DisappearState extends State<Disappear> {
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
        title: Text("Default message timer", style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff0e1717),
      ),
      backgroundColor: Color(0xff0e1717),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Text("Start a chat with a new contact with a dissapearing message timer set to your timer", style: TextStyle(color: Colors.white54)),
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
            title: Text("24 Hours", style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w300)),
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
            title: Text("7 Days", style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w300)),
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
            title: Text("90 Days", style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w300)),
            onTap: () {
              setState(() {
                _selectedOption = "1 hour";
              });
            },
          ),
          ListTile(
            leading: Radio<String>(
              value: "1 week",
              groupValue: _selectedOption,
              onChanged: (value) {
                setState(() {
                  _selectedOption = value!;
                });
              },
              activeColor: Colors.green,
            ),
            title: Text("Off", style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w300)),
            onTap: () {
              setState(() {
                _selectedOption = "1 week";
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, top: 10),
            child: Column(
              children: [
                Text("When turned on , all new individual chats will have a dissapearing message timer set to your timer", style: TextStyle(color: Colors.white54)),
                Text("Learn more", style: TextStyle(color: Colors.blue)),
              ]
            ),
          ),
        ],
      ),
    );
  }
}
