import 'package:flutter/material.dart';
import 'package:get/get.dart';

class pfp extends StatefulWidget {
  const pfp({super.key});

  @override
  State<pfp> createState() => _pfpState();
}

class _pfpState extends State<pfp> {
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
        title: Text("Profile Photo", style: TextStyle(color: Colors.white)),
        backgroundColor: Color(0xff0e1717),
      ),
      backgroundColor: Color(0xff0e1717),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Text("Who Can add me to groups", style: TextStyle(color: Colors.white54)),
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
              title: Text("Everyone", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300)),
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
              title: Text("My Contacts", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300)),
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
              title: Text("My Contacts except..", style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w300)),
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
                    Text("Admins who can't add me to group will have the option of inviting you privately instead .", style: TextStyle(color: Colors.white54,fontSize: 13)),
                    SizedBox(height: 10),
                    Text("Setting ek aisi jagah aur samay hota hai jahan kahani ki ghatnaayein hoti hain. Yeh environment, mood aur character development mein madad karta hai.", style: TextStyle(color: Colors.white54,fontSize: 13)),
                  ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}
