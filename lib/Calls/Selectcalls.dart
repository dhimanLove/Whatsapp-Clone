import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContactUI extends StatelessWidget {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0B1014),
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Get.back();
        }, icon:Icon(Icons.arrow_back,color: Colors.white,)),
        backgroundColor:Color(0xff0B1014) ,
        elevation: 0,
        title: TextField(
          style: TextStyle(color: Colors.white),
          cursorColor: Colors.green,
          decoration: InputDecoration(
            hintText: 'Search name or number...',
            hintStyle: TextStyle(color: Colors.grey),
            border: InputBorder.none,
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.dialpad, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(
              leading: Icon(Icons.link, color: Colors.green),
              title: Text(
                'New call link',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(Icons.dialpad, color: Colors.green),
              title: Text(
                'Call a number',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person_add, color: Colors.green),
              title: Text(
                'New contact',
                style: TextStyle(color: Colors.white),
              ),
              trailing: Icon(Icons.qr_code, color: Colors.green),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Frequently contacted',
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: frequentlyContacted.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      frequentlyContacted[index]['image'],
                    ),
                  ),
                  title: Text(
                    frequentlyContacted[index]['name'],
                    style: TextStyle(color: Colors.white),
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Contacts on WhatsApp',
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: whatsappContacts.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                      whatsappContacts[index]['image']!,
                    ),
                  ),
                  title: Text(
                    whatsappContacts[index]['name']!,
                    style: TextStyle(color: Colors.white),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
