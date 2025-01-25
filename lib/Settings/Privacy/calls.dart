import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Clmanage extends StatefulWidget {
  const Clmanage({super.key});

  @override
  State<Clmanage> createState() => _ClmanageState();
}

class _ClmanageState extends State<Clmanage> {
  bool swtch = false;

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
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: const Text(
          'Call Management',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
        ),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text("Silence Unknown Calls", style: TextStyle(color: Colors.white70)),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("The cat quickly jumped over the fence, chasing a ball while barking dogs ran past excitedly Kuch aur random sentences chahiye", style: TextStyle(color: Colors.white38,fontSize: 13)),
                Text("Learn more",style: TextStyle(color: Colors.blue),),
              ],
            ),
            trailing: Switch(
              value: swtch,
              onChanged: (value) {
                setState(() {
                  swtch = value;
                });
              },
              activeColor: Colors.green,
              activeTrackColor: Colors.green.withOpacity(0.4),
              inactiveThumbColor: Colors.grey,
              inactiveTrackColor: Colors.grey.withOpacity(0.4),
            ),
          ),
        ],
      ),
    );
  }
}
