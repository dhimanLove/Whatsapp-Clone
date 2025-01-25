import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp/Settings/Storage/proxy.dart';

class Storage extends StatefulWidget {
  const Storage({super.key});

  @override
  State<Storage> createState() => _StorageState();
}

class _StorageState extends State<Storage> {

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
          'Storage',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              ListTile(
                leading: const Icon(Icons.folder_open_rounded, color: Colors.white70),
                title: const Text("Manage Storage", style: TextStyle(color: Colors.white70)),
                subtitle: const Text("2.8 GB", style: TextStyle(color: Colors.white54)),
              ),
              const Divider(color: Colors.white54, thickness: 0.2),
              ListTile(
                leading: const Icon(Icons.disc_full_outlined, color: Colors.white70),
                title: const Text("Network Usage", style: TextStyle(color: Colors.white70)),
                subtitle: const Text("5.6 GB . 2.8 GB received", style: TextStyle(color: Colors.white54)),
              ),
              ListTile(
                leading: const Text("   "),
                title: const Text("Use Less Data for calls", style: TextStyle(color: Colors.white70)),
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
              ListTile(
                leading: const Text("   "),
                title: const Text("Proxy", style: TextStyle(color: Colors.white70)),
                subtitle: const Text("None", style: TextStyle(color: Colors.white54)),
                onTap: () {
                  Get.to(() => const Proxy());
                },
              ),
              const Divider(color: Colors.white54, thickness: 0.2),
              ListTile(
                leading: const Icon(Icons.hd_outlined, color: Colors.white70),
                title: const Text("Media upload quality", style: TextStyle(color: Colors.white70)),
                subtitle: const Text("Medium", style: TextStyle(color: Colors.white54)),
                onTap: () {},
              ),
              const Divider(color: Colors.white54, thickness: 0.2),
              ListTile(
                title: const Text(
                  "Media auto-download",
                  style: TextStyle(color: Colors.white54),
                ),
                subtitle: const Text(
                  "Voice messages are always automatically downloaded for the best communication experience",
                  style: TextStyle(color: Colors.white54),
                ),
              ),
              ListTile(
                leading: const Text("   "),
                title: const Text("When using mobile data", style: TextStyle(color: Colors.white70)),
                subtitle: const Text("Photos", style: TextStyle(color: Colors.white54)),
              ),
              ListTile(
                leading: const Text("   "),
                title: const Text("When connected on Wi-Fi", style: TextStyle(color: Colors.white70)),
                subtitle: const Text("Photos", style: TextStyle(color: Colors.white54)),
              ),
              ListTile(
                leading: const Text("   "),
                title: const Text("When on Roaming", style: TextStyle(color: Colors.white70)),
                subtitle: const Text("Photos", style: TextStyle(color: Colors.white54)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
