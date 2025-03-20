import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp/chats/Settings.dart';

class ContactUI extends StatefulWidget {
  const ContactUI({super.key});

  @override
  State<ContactUI> createState() => _ContactUIState();
}

class _ContactUIState extends State<ContactUI> {
  // TextEditingController for the search field
  final TextEditingController _searchController = TextEditingController();

  // Data for frequently contacted
  final List<Map<String, dynamic>> frequentlyContacted = [
    {
      'name': 'Krish GDG MMU',
      'image': 'https://randomuser.me/api/portraits/men/1.jpg',
    },
    {
      'name': 'Sameeksha',
      'image': 'https://randomuser.me/api/portraits/women/2.jpg',
    },
    {
      'name': 'Mata Shree 🧸 ❤️',
      'image': 'https://randomuser.me/api/portraits/women/3.jpg',
    },
    {
      'name': 'Lakshya MMU 2',
      'image': 'https://randomuser.me/api/portraits/men/4.jpg',
    },
    {
      'name': 'Rudra MMU',
      'image': 'https://randomuser.me/api/portraits/men/5.jpg',
    },
  ];

  // Data for WhatsApp contacts
  final List<Map<String, String>> whatsappContacts = [
    {'name': 'Varish', 'image': 'https://randomuser.me/api/portraits/men/6.jpg'},
    {'name': 'Aarav', 'image': 'https://randomuser.me/api/portraits/men/7.jpg'},
    {'name': 'Anaya', 'image': 'https://randomuser.me/api/portraits/women/8.jpg'},
    {'name': 'Vihaan', 'image': 'https://randomuser.me/api/portraits/men/9.jpg'},
    {'name': 'Ishita', 'image': 'https://randomuser.me/api/portraits/women/10.jpg'},
    {'name': 'Kabir', 'image': 'https://randomuser.me/api/portraits/men/11.jpg'},
    {'name': 'Meera', 'image': 'https://randomuser.me/api/portraits/women/12.jpg'},
    {'name': 'Aryan', 'image': 'https://randomuser.me/api/portraits/men/13.jpg'},
    {'name': 'Kiara', 'image': 'https://randomuser.me/api/portraits/women/14.jpg'},
    {'name': 'Vivaan', 'image': 'https://randomuser.me/api/portraits/men/15.jpg'},
    {'name': 'Pihu', 'image': 'https://randomuser.me/api/portraits/women/16.jpg'},
    {'name': 'Aditya', 'image': 'https://randomuser.me/api/portraits/men/17.jpg'},
    {'name': 'Riya', 'image': 'https://randomuser.me/api/portraits/women/18.jpg'},
    {'name': 'Karthik', 'image': 'https://randomuser.me/api/portraits/men/19.jpg'},
    {'name': 'Simran', 'image': 'https://randomuser.me/api/portraits/women/20.jpg'},
    {'name': 'Rahul', 'image': 'https://randomuser.me/api/portraits/men/21.jpg'},
    {'name': 'Tanya', 'image': 'https://randomuser.me/api/portraits/women/22.jpg'},
    {'name': 'Raj', 'image': 'https://randomuser.me/api/portraits/men/23.jpg'},
    {'name': 'Sneha', 'image': 'https://randomuser.me/api/portraits/women/24.jpg'},
    {'name': 'Arjun', 'image': 'https://randomuser.me/api/portraits/men/25.jpg'},
    {'name': 'Priya', 'image': 'https://randomuser.me/api/portraits/women/26.jpg'},
  ];

  // Filtered lists for search functionality
  List<Map<String, dynamic>> filteredFrequentlyContacted = [];
  List<Map<String, String>> filteredWhatsappContacts = [];

  @override
  void initState() {
    super.initState();
    // Initialize filtered lists with all contacts
    filteredFrequentlyContacted = List.from(frequentlyContacted);
    filteredWhatsappContacts = List.from(whatsappContacts);

    // Add listener to search controller for filtering
    _searchController.addListener(_filterContacts);
  }

  // Filter contacts based on search query
  void _filterContacts() {
    final query = _searchController.text.toLowerCase();
    setState(() {
      filteredFrequentlyContacted = frequentlyContacted
          .where((contact) =>
          contact['name'].toString().toLowerCase().contains(query))
          .toList();
      filteredWhatsappContacts = whatsappContacts
          .where((contact) =>
          contact['name']!.toLowerCase().contains(query))
          .toList();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Screen dimensions
    final double scrH = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xff0B1014),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        backgroundColor: const Color(0xff0B1014),
        elevation: 0,
        title: TextField(
          controller: _searchController,
          style: const TextStyle(color: Colors.white),
          cursorColor: Colors.green,
          decoration: const InputDecoration(
            hintText: 'Search name or number...',
            hintStyle: TextStyle(color: Colors.grey),
            border: InputBorder.none,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.dialpad, color: Colors.white),
            onPressed: () {},
          ),
          PopupMenuButton<String>(
            icon: const Icon(Icons.more_vert, color: Colors.white),
            onSelected: (String value) {

              if (value == 'Settings') {
                Get.to(Settings());
              }
            },
            itemBuilder: (BuildContext context) {
              return const [
                PopupMenuItem<String>(
                  value: 'New Group',
                  child: Text(
                    'New Group',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                PopupMenuItem<String>(
                  value: 'Settings',
                  child: Text(
                    'Settings',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ];
            },
            color: const Color(0xff171e1e),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // New Call Link
            const ListTile(
              leading: Icon(Icons.link, color: Colors.green),
              title: Text(
                'New call link',
                style: TextStyle(color: Colors.white),
              ),
            ),

            // Call a Number
            const ListTile(
              leading: Icon(Icons.dialpad, color: Colors.green),
              title: Text(
                'Call a number',
                style: TextStyle(color: Colors.white),
              ),
            ),

            // New Contact
            const ListTile(
              leading: Icon(Icons.person_add, color: Colors.green),
              title: Text(
                'New contact',
                style: TextStyle(color: Colors.white),
              ),
              trailing: Icon(Icons.qr_code, color: Colors.green),
            ),

            // Frequently Contacted Section
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Frequently contacted',
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: filteredFrequentlyContacted.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      filteredFrequentlyContacted[index]['image'],
                    ),
                  ),
                  title: Text(
                    filteredFrequentlyContacted[index]['name'],
                    style: const TextStyle(color: Colors.white),
                  ),
                );
              },
            ),

            // Contacts on WhatsApp Section
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                'Contacts on WhatsApp',
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: filteredWhatsappContacts.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      filteredWhatsappContacts[index]['image']!,
                    ),
                  ),
                  title: Text(
                    filteredWhatsappContacts[index]['name']!,
                    style: const TextStyle(color: Colors.white),
                  ),
                );
              },
            ),

            // Bottom padding to ensure last item is visible
            SizedBox(height: scrH * 0.1),
          ],
        ),
      ),
    );
  }
}