import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Pfpmain extends StatefulWidget {
  const Pfpmain({super.key});

  @override
  State<Pfpmain> createState() => _PfpmainState();
}

class _PfpmainState extends State<Pfpmain> {
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
          "Profile",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Profile Picture Section
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(
                    radius: 90,
                    backgroundImage: const NetworkImage(
                        "https://images.unsplash.com/photo-1491555103944-7c647fd857e6?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
                  ),
                  CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.green,
                    child: IconButton(
                      icon: const Icon(Icons.camera_alt_outlined,
                          color: Color(0xff0B1014)),
                      onPressed: () {
                        // Add camera functionality
                      },
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Name Input Field
              ListTile(
                leading: const Icon(Icons.person, color: Colors.white54),
                title: const Text(
                  'Name',
                  style: TextStyle(color: Colors.white54, fontSize: 13),
                ),
                subtitle: TextField(
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Loveraj',
                    hintStyle: const TextStyle(color: Colors.white70),
                    border: InputBorder.none,
                  ),
                ),
                trailing: const Icon(Icons.edit, color: Colors.green),
              ),
              const Divider(color: Colors.white54, thickness: 0.5),

              // About Input Field
              ListTile(
                leading: const Icon(Icons.info_outline, color: Colors.white54),
                title: const Text(
                  'About',
                  style: TextStyle(color: Colors.white54, fontSize: 13),
                ),
                subtitle: TextField(
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Software Developer',
                    hintStyle: const TextStyle(color: Colors.white70),
                    border: InputBorder.none,
                  ),
                ),
                trailing: const Icon(Icons.edit, color: Colors.green),
              ),
              const Divider(color: Colors.white54, thickness: 0.5),

              // Phone Input Field
              ListTile(
                leading: const Icon(Icons.call, color: Colors.white54),
                title: const Text(
                  'Phone',
                  style: TextStyle(color: Colors.white54, fontSize: 13),
                ),
                subtitle: TextField(
                  style: const TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                    hintText: '+91 9876543210',
                    hintStyle: const TextStyle(color: Colors.white70),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}
