import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Setupproxy extends StatefulWidget {
  const Setupproxy({super.key});

  @override
  State<Setupproxy> createState() => _SetupproxyState();
}

class _SetupproxyState extends State<Setupproxy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0B1014),
      appBar: AppBar(
        backgroundColor: Color(0xff0B1014),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: Text('Set-up proxy', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'Proxy host',
                hintStyle: TextStyle(color: Colors.white54),
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
              ),
            ),
            Divider(color: Colors.white54, thickness: 0.2),
            Text("Ports (Optional)", style: TextStyle(color: Colors.white54)),
            ListTile(
              title: Text("Chat port", style: TextStyle(color: Colors.white70)),
              subtitle: Text("8080", style: TextStyle(color: Colors.white54)),
            ),
            ListTile(
              title: Text("Media Port", style: TextStyle(color: Colors.white70)),
              subtitle: Text("8080", style: TextStyle(color: Colors.white54)),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.back();
        },
        backgroundColor: Colors.green,
        child: Icon(Icons.done,color: Color(0xff0B1014)),
      ),
    );
  }
}
