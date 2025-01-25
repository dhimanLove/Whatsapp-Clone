// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class Appinfo extends StatelessWidget {
  const Appinfo({super.key});

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
        title: Text(
          "App info",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
        ),
        backgroundColor: const Color(0xff0B1014),
      ),
      backgroundColor: const Color(0xff0B1014),
      body: Center(
        child: Column(
          children: [
            Text("Whatsapp Messenger", style: TextStyle(color: Colors.white, fontSize: 30)),
            Text("Version 2.24.25.77", style: TextStyle(color: Colors.white54)),
            SizedBox(height: 20),
            Icon(FontAwesomeIcons.whatsapp, color: Colors.grey, size: 100),
            SizedBox(height: 20),
            Text("@ 2010-2024 WhatsApp Inc. All rights reserved ", style: TextStyle(color: Colors.white54)),
            ElevatedButton(
              onPressed: () {
                Get.snackbar(
                    "title",
                    "message"
                );
              },
              child: Text(
                "Licenses",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                foregroundColor: Color(0xff0B1014),
                backgroundColor: Colors.green,
              ),
            )

          ],
        ),
      ),
    );
  }
}
