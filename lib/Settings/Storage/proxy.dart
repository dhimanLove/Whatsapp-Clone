import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp/Settings/Storage/Setupproxy.dart';

class Proxy extends StatelessWidget {
  const Proxy({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff0B1014),
      appBar: AppBar(
          backgroundColor: const Color(0xff0B1014),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: Text('Proxy', style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Use Proxy",style: TextStyle(color: Colors.white,fontSize: 16),),
              Text("Proxy ek third-party server ke zariye network traffic route karta hai, privacy badhata hai, IP address hide karta hai aur security ensure karta hai.",style: TextStyle(color: Colors.white54,fontSize: 13),),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => const Setupproxy());
              },
              child: ListTile(
                title: Text("Set-up proxy",style: TextStyle(color: Colors.white70,fontSize: 16),),
                subtitle: Text("Customize proxy settings",style: TextStyle(color: Colors.white54,fontSize: 13),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
