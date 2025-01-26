import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:whatsapp/chats/group.dart';

class Selectconntact extends StatefulWidget {
  const Selectconntact({super.key});

  @override
  State<Selectconntact> createState() => _SelectconntactState();
}

class _SelectconntactState extends State<Selectconntact> {

  List contacts = [
    {
      'name': 'John Doe',
      'subtitle': 'Living my best life 🌟',
    },
    {
      'name': 'Jane Smith',
      'subtitle': 'Just keep swimming 🐠',
    },
    {
      'name': 'Michael Johnson',
      'subtitle': 'Hustle in silence, let success make the noise 🔥',
    },
    {
      'name': 'Emily Davis',
      'subtitle': 'On a journey of self-discovery ✨',
    },
    {
      'name': 'David Brown',
      'subtitle': 'Coffee first, work later ☕️',
    },
    {
      'name': 'Sophia Wilson',
      'subtitle': 'Exploring new adventures 🌍',
    },
    {
      'name': 'James Lee',
      'subtitle': 'Dream big, work hard 💪',
    },
    {
      'name': 'Olivia Clark',
      'subtitle': 'Grateful for today 🙏',
    },
    {
      'name': 'William Walker',
      'subtitle': 'Do more of what makes you happy ❤️',
    },
    {
      'name': 'Charlotte Young',
      'subtitle': 'Chasing dreams, not people 💭',
    },
  ];

  List pfp = [
    CircleAvatar(backgroundImage: NetworkImage('https://randomuser.me/api/portraits/men/1.jpg')),
    CircleAvatar(backgroundImage: NetworkImage('https://randomuser.me/api/portraits/women/2.jpg')),
    CircleAvatar(backgroundImage: NetworkImage('https://randomuser.me/api/portraits/men/3.jpg')),
    CircleAvatar(backgroundImage: NetworkImage('https://randomuser.me/api/portraits/women/4.jpg')),
    CircleAvatar(backgroundImage: NetworkImage('https://randomuser.me/api/portraits/men/5.jpg')),
    CircleAvatar(backgroundImage: NetworkImage('https://randomuser.me/api/portraits/women/6.jpg')),
    CircleAvatar(backgroundImage: NetworkImage('https://randomuser.me/api/portraits/men/7.jpg')),
    CircleAvatar(backgroundImage: NetworkImage('https://randomuser.me/api/portraits/women/8.jpg')),
    CircleAvatar(backgroundImage: NetworkImage('https://randomuser.me/api/portraits/men/9.jpg')),
    CircleAvatar(backgroundImage: NetworkImage('https://randomuser.me/api/portraits/women/10.jpg')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0B1014),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Select Contact",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
            ),
            Text(
              "256 contacts",
              style: TextStyle(color: Colors.white54, fontSize: 12),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: Colors.white),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert, color: Colors.white),
          ),
        ],
        backgroundColor: const Color(0xff0B1014),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Icon(
                    Icons.group_add,
                    color: Color(0xff0B1014),
                  ),
                ),
                title: Text(
                  "New group",
                  style: TextStyle(color: Colors.white),
                ),
                onTap: (){
                  Group();
                },
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Icon(
                    Icons.person_add,
                    color: Color(0xff0B1014),
                  ),
                ),
                title: Text(
                  "New contact",
                  style: TextStyle(color: Colors.white),
                ),
                trailing: IconButton(onPressed: () {}, icon: Icon(Icons.qr_code, color: Colors.white)),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Icon(
                    Icons.groups,
                    color: Color(0xff0B1014),
                  ),
                ),
                title: Text(
                  "New Community",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Icon(
                    Icons.pattern,
                    color: Color(0xff0B1014),
                  ),
                ),
                title: Text(
                  "Chat with AIs",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Text("Contacts on WhatsApp", style: TextStyle(color: Colors.white54)),
              ),
              SizedBox(height: 3),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: contacts.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: pfp[index],
                    title: Text(
                      contacts[index]['name']!,
                      style: TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      contacts[index]['subtitle']!,
                      style: TextStyle(color: Colors.white54),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
