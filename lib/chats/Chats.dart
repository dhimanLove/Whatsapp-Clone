import 'dart:io';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:gradient_icon/gradient_icon.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsapp/chats/Chats/Chatscreeen.dart';
import 'package:whatsapp/chats/Chats/infochatclickphoto.dart';
import 'package:whatsapp/chats/Chats/meta.dart';
import 'package:whatsapp/chats/Linkeddev.dart';
import 'package:whatsapp/chats/New_broadcast.dart';
import 'package:whatsapp/chats/Payments.dart';
import 'package:whatsapp/chats/Settings.dart';
import 'package:whatsapp/chats/Starred.dart';
import 'package:whatsapp/chats/details.dart';
import 'package:whatsapp/chats/group.dart';
import 'Chats/Selectconntact.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  File? _imageFile;
  String _selectedFilter = 'All';
  final TextEditingController _metaController = TextEditingController();

  Future _takePicture() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.camera);

    if (image != null) {
      setState(() {
        _imageFile = File(image.path);
      });
    }
  }

  List<String> arrDrawer = [
    'New Group',
    'New Broadcast',
    'Linked devices',
    'Starred Messages',
    'Payments',
    'Settings'
  ];

  List<Widget> arrLeading = [
    const CircleAvatar(
      backgroundImage: NetworkImage(
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTU0vMJn9NTpca8c7waspkH6MoWdoWDqbEi4BtZxMPqs41YTzdBihpSh8Az5n0ORMQwz5Y&usqp=CAU"),
      backgroundColor: Colors.transparent,
    ),
    const CircleAvatar(
      backgroundImage: NetworkImage(
          "https://images.unsplash.com/photo-1572647678520-ebef18aa78cc?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
      backgroundColor: Colors.transparent,
    ),
    const CircleAvatar(
      backgroundImage: NetworkImage(
          "https://images.unsplash.com/photo-1662306616121-34a330735f2c?q=80&w=1965&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
      backgroundColor: Colors.transparent,
    ),
    const CircleAvatar(
      backgroundImage: NetworkImage(
          "https://images.unsplash.com/photo-1533473359331-0135ef1b58bf?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
      backgroundColor: Colors.transparent,
    ),
    const CircleAvatar(
      backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1531386151447-fd76ad50012f?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
      backgroundColor: Colors.transparent,
    ),
    const CircleAvatar(
      backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1437502920657-db9708bfe2ef?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
      backgroundColor: Colors.transparent,
    ),
    const CircleAvatar(
      backgroundImage: NetworkImage(
          "https://images.unsplash.com/photo-1453396450673-3fe83d2db2c4?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
      backgroundColor: Colors.transparent,
    ),
    const CircleAvatar(
      backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1610926597998-fc7f2c1b89b0?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
      backgroundColor: Colors.transparent,
    ),
    const CircleAvatar(
      backgroundImage: NetworkImage(
          'https://images.unsplash.com/photo-1725902380927-081e7400b920?q=80&w=1915&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
      backgroundColor: Colors.transparent,
    ),
  ];

  List<String> arrNames = [
    'App Mentoring',
    'Sukhi',
    'Krishna',
    'Dhruv',
    'Kungsu',
    'Ajay Bhaiya GDG',
    'Tinku Jiya',
    'Project wala',
    'Project wala'
  ];

  List<String> arrSubtitle = [
    "You: Meeting kab h sir?",
    "Praa Friday hai...",
    "Bahr chalte hai",
    "Join the Meet Fast!",
    "Awaz bnd kr!",
    "Awaz bnd kr!",
    "Progress Dikhao...",
    "Jacket tick-tick kr...",
    "Chal Bahr chlte hai!",
  ];

  List<String> arrTrailing = [
    "10:17 am",
    "11:10 pm",
    "12:17 pm",
    "Yesterday",
    "12/11/2024",
    "11/11/2024",
    "19/10/2024",
    "2/02/2024",
    "2/02/2024"
  ];

  List _filterData(String filter) {
    List filteredData = [];
    for (int i = 0; i < arrNames.length; i++) {
      filteredData.add({
        'leading': arrLeading[i],
        'name': arrNames[i],
        'subtitle': arrSubtitle[i],
        'trailing': arrTrailing[i],
      });
    }
    if (filter == 'Unread') {
      return filteredData
          .where((item) => item['subtitle'].contains('!'))
          .toList();
    } else if (filter == 'Groups') {
      return filteredData
          .where((item) => item['name'].contains('GDG'))
          .toList();
    } else if (filter == 'Favourites') {
      return filteredData
          .where((item) => item['name'].contains('Sukhi'))
          .toList();
    }
    return filteredData;
  }

  @override
  Widget build(BuildContext context) {
    var scrH = Get.height;
    var scrW = Get.width;
    List filteredList = _filterData(_selectedFilter);

    return Scaffold(
      backgroundColor: const Color(0xff0B1014),
      appBar: AppBar(
        backgroundColor: const Color(0xff0B1014),
        title: Text(
          "WhatsApp",
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w600, fontSize: 26),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.qr_code_2,color: Colors.white,)),
          IconButton(
            onPressed: _takePicture,
            icon: const Icon(Icons.photo_camera_outlined),
            color: Colors.white,
          ),
          PopupMenuButton<String>(
            icon: const Icon(Icons.more_vert, color: Colors.white),
            onSelected: (String value) {
              switch (value) {
                case 'New Group':
                  Get.to(() => Group());
                  break;
                case 'New Broadcast':
                  Get.to(() => Broad());
                  break;
                case 'Linked devices':
                  Get.to(() => const Linkeddev());
                  break;
                case 'Starred Messages':
                  Get.to(() => const Starred());
                  break;
                case 'Payments':
                  Get.to(() => const Payments());
                  break;
                case 'Settings':
                  Get.to(() => Settings());
                  break;
              }
            },
            itemBuilder: (BuildContext context) {
              return arrDrawer.map((String choice) {
                return PopupMenuItem(
                  value: choice,
                  child: Text(
                    choice,
                    style: const TextStyle(color: Colors.white),
                  ),
                );
              }).toList();
            },
            color: const Color(0xff171e1e),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(
            decelerationRate: ScrollDecelerationRate.fast),
        child: Column(
          children: [
            Container(
              height: scrH * .06,
              width: scrW * .90,
              margin: const EdgeInsets.only(top: 0),
              decoration: BoxDecoration(
                color: Colors.white10,
                borderRadius: BorderRadius.circular(45),
              ),
              child: Row(
                children: [
                  const SizedBox(width: 10),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: GradientIcon(
                      icon: Icons.circle_outlined,
                      gradient: LinearGradient(
                        colors: [
                          Colors.deepPurpleAccent,
                          Colors.pinkAccent,
                          Colors.deepPurple,
                          Colors.blue,
                          Colors.cyan
                        ],
                        begin: Alignment.centerLeft,
                        end: Alignment.bottomRight,
                      ),
                      size: 30,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: TextField(
                        controller: _metaController,
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                          hintText: "Ask Meta AI or search",
                          hintStyle: TextStyle(
                            color: Colors.white38,
                            fontWeight: FontWeight.w200,
                          ),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: scrH * 0.02),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: SingleChildScrollView(
                keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 0),
                  child: Row(
                    children: [
                      FilterChip(
                        label: const Text("All"),
                        selected: _selectedFilter == 'All',
                        selectedColor: const Color(0xff1A3A2D),
                        backgroundColor: Colors.grey[800],
                        labelStyle: TextStyle(
                            color: _selectedFilter == 'All'
                                ? Colors.white54
                                : Colors.white38),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide.none), // Remove border
                        onSelected: (bool selected) {
                          setState(() {
                            _selectedFilter = 'All';
                          });
                        },
                        showCheckmark: false,
                        pressElevation: 0, // Remove shadow when pressed
                      ),
                      SizedBox(width: scrW * 0.01),
                      FilterChip( // Changed to FilterChip for consistency
                        showCheckmark: false,
                        label: const Text("Unread"),
                        selected: _selectedFilter == 'Unread',
                        selectedColor: const Color(0xff1A3A2D),
                        backgroundColor: Colors.grey[800],
                        labelStyle: TextStyle(
                            color: _selectedFilter == 'Unread'
                                ? Colors.green
                                : Colors.white38),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide.none), // Remove border
                        onSelected: (bool selected) {
                          setState(() {
                            _selectedFilter = 'Unread';
                          });
                        },
                        pressElevation: 0, // Remove shadow when pressed
                      ),
                      SizedBox(width: scrW * 0.01),
                      FilterChip( // Changed to FilterChip for consistency
                        showCheckmark: false,
                        label: const Text("Favourites"),
                        selected: _selectedFilter == 'Favourites',
                        selectedColor: const Color(0xff1A3A2D),
                        backgroundColor: Colors.grey[800],
                        labelStyle: TextStyle(
                            color: _selectedFilter == 'Favourites'
                                ? Colors.green
                                : Colors.white38),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide.none), // Remove border
                        onSelected: (bool selected) {
                          setState(() {
                            _selectedFilter = 'Favourites';
                          });
                        },
                        pressElevation: 0, // Remove shadow when pressed
                      ),
                      SizedBox(width: scrW * 0.01),
                      FilterChip( // Changed to FilterChip for consistency
                        showCheckmark: false,
                        label: const Text("Groups"),
                        selected: _selectedFilter == 'Groups',
                        selectedColor: const Color(0xff1A3A2D),
                        backgroundColor: Colors.grey[800],
                        labelStyle: TextStyle(
                            color: _selectedFilter == 'Groups'
                                ? Colors.green
                                : Colors.white38),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide.none), // Remove border
                        onSelected: (bool selected) {
                          setState(() {
                            _selectedFilter = 'Groups';
                          });
                        },
                        pressElevation: 0, // Remove shadow when pressed
                      ),
                    ],
                  ),
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: filteredList.isEmpty ? 1 : filteredList.length + 1,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return Column(
                    children: [
                      SizedBox(height: scrH * 0.02),
                      ListTile(
                        leading: SizedBox(
                          height: scrH * 0.13,
                          width: scrW * 0.122,
                          child: Stack(
                            children: [
                              const CircleAvatar(
                                backgroundImage: NetworkImage(
                                    'https://images.unsplash.com/photo-1506968695017-764f86a9f9ec?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                                backgroundColor: Colors.white,
                                radius: 20,
                              ),
                              Positioned(
                                bottom: 0,
                                top: 12,
                                left: 12,
                                child: Container(
                                  child: const CircleAvatar(
                                    backgroundImage: NetworkImage(
                                        'https://w7.pngwing.com/pngs/22/444/png-transparent-messenger-facebook-messenger-messenger-logo-social-media-icon-thumbnail.png'),
                                    radius: 15,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        title: const Text(
                          "GDSC Volunteer 2024",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w200),
                        ),
                        subtitle: const Text(
                          "Everyone Join Fast",
                          style: TextStyle(
                              color: Colors.white38,
                              fontWeight: FontWeight.w200),
                        ),
                        trailing: const Text(
                          "10:15 am",
                          style: TextStyle(
                              color: Colors.white60,
                              fontWeight: FontWeight.w200),
                        ),
                      ),
                    ],
                  );
                } else if (filteredList.isEmpty) {
                  return const Center(
                    child: Text(
                      "No chats found",
                      style: TextStyle(color: Colors.white38),
                    ),
                  );
                } else {
                  final item = filteredList[index - 1];
                  return ListTile(
                    leading: InkWell(
                      onTap: () {
                        String imageUrl = (item['leading'] as CircleAvatar)
                            .backgroundImage
                            .toString()
                            .split('"')[1];
                        String name = item['name'];

                        showDialog(
                          context: context,
                          builder: (context) => Dialog(
                            backgroundColor: Colors.transparent,
                            child: SizedBox(
                              height: 330,
                              width: double.infinity,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Container(
                                        height: 250,
                                        width: 250,
                                        child: ClipRRect(
                                          child: Image.network(
                                            imageUrl,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        top: 10,
                                        child: Text(
                                          name,
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 22,
                                            shadows: [
                                              Shadow(
                                                  blurRadius: 10,
                                                  color: Colors.black87,
                                                  offset: Offset(2, 2))
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width: 249,
                                    height: 38,
                                    decoration: const BoxDecoration(
                                      color: Color(0xff0B1014),
                                      borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(2),
                                        bottomRight: Radius.circular(2),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        IconButton(
                                            onPressed: () {
                                              Get.to(() => ChatScreen());
                                            },
                                            icon: const Icon(
                                                Icons.chat_outlined,
                                                color: Colors.green)),
                                        const Icon(Icons.call_outlined,
                                            color: Colors.green),
                                        IconButton(
                                            onPressed: _takePicture,
                                            icon: const Icon(
                                                Icons.videocam_outlined,
                                                color: Colors.green)),
                                        IconButton(
                                          onPressed: () {
                                            Get.to(() => ProfileScreen());
                                          },
                                          icon: const Icon(Icons.info_outline,
                                              color: Colors.green),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                      child: item['leading'],
                    ),
                    title: GestureDetector(
                      onTap: () => Get.to(() => ChatScreen()),
                      child: Text(
                        item['name'],
                        style: const TextStyle(
                            color: Color(0xffEFEFEF),
                            fontWeight: FontWeight.w200),
                      ),
                    ),
                    subtitle: GestureDetector(
                      onTap: () => Get.to(() => ChatScreen()),
                      child: Row(
                        children: [
                          const Icon(FontAwesomeIcons.checkDouble,
                              color: Colors.lightBlue, size: 13),
                          SizedBox(width: scrW * 0.005),
                          Text(
                            item['subtitle'],
                            style: const TextStyle(
                                color: Color(0xc3919191),
                                fontWeight: FontWeight.w200),
                          ),
                        ],
                      ),
                    ),
                    trailing: Text(
                      item['trailing'],
                      style: const TextStyle(
                          color: Color(0xc3d5d5d5),
                          fontWeight: FontWeight.w200),
                    ),
                  );
                }
              },
            ),
            SizedBox(height: scrH * 0.1),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: scrH * 0.055,
            width: scrW * 0.12,
            child: FloatingActionButton(
              backgroundColor: Color(0xff1b262f),
              onPressed: () {
                Get.to(ai());
              },
              child: const Padding(
                padding: EdgeInsets.only(bottom: 17),
                child: GradientIcon(
                  icon: Icons.circle_outlined,
                  gradient: LinearGradient(
                    colors: [
                      Colors.deepPurpleAccent,
                      Colors.pinkAccent,
                      Colors.deepPurple,
                      Colors.blue,
                      Colors.cyan
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.bottomRight,
                  ),
                  size: 30,
                ),
              ),
            ),
          ),
          SizedBox(height: 16),
          FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: () {
              Get.to(Selectconntact());
            },
            child: Icon(
              Icons.message_rounded,
              color: Colors.black,
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
