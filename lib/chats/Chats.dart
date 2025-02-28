import 'dart:io';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
//import 'package:whatsapp/chats/Starred.dart';
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
  Future<void> _takePicture() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.camera);

    if (image != null) {
      setState(() {
        _imageFile = File(image.path); // Store the image file
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
      backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTU0vMJn9NTpca8c7waspkH6MoWdoWDqbEi4BtZxMPqs41YTzdBihpSh8Az5n0ORMQwz5Y&usqp=CAU"),
      backgroundColor: Colors.transparent,
    ),
    const CircleAvatar(
      backgroundImage: NetworkImage("https://images.unsplash.com/photo-1572647678520-ebef18aa78cc?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
      backgroundColor: Colors.transparent,
    ),
    const CircleAvatar(
      backgroundImage: NetworkImage("https://images.unsplash.com/photo-1662306616121-34a330735f2c?q=80&w=1965&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
      backgroundColor: Colors.transparent,
    ),
    const CircleAvatar(
      backgroundImage: NetworkImage("https://images.unsplash.com/photo-1533473359331-0135ef1b58bf?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
      backgroundColor: Colors.transparent,
    ),
    const CircleAvatar(
      backgroundImage: NetworkImage('https://images.unsplash.com/photo-1531386151447-fd76ad50012f?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
      backgroundColor: Colors.transparent,
    ),
    const CircleAvatar(
      backgroundImage: NetworkImage('https://images.unsplash.com/photo-1437502920657-db9708bfe2ef?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
      backgroundColor: Colors.transparent,
    ),
    const CircleAvatar(
      backgroundImage: NetworkImage("https://images.unsplash.com/photo-1453396450673-3fe83d2db2c4?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
      backgroundColor: Colors.transparent,
    ),
    const CircleAvatar(
      backgroundImage: NetworkImage('https://images.unsplash.com/photo-1610926597998-fc7f2c1b89b0?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
      backgroundColor: Colors.transparent,
    ),
    const CircleAvatar(
      backgroundImage: NetworkImage('https://images.unsplash.com/photo-1725902380927-081e7400b920?q=80&w=1915&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
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

  @override
  Widget build(BuildContext context) {
    TextEditingController metta =TextEditingController();
    var scrH = MediaQuery.of(context).size.height;
    var scrW = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff0B1014),
        title:
        Text("WhatsApp",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w600,fontSize: 26),),
        actions: [
          IconButton(
            onPressed: () {_takePicture();},
            icon: const Icon(Icons.photo_camera_outlined),
            color: Colors.white,
          ),
          Builder(
            builder: (context) => IconButton(
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
              icon: const Icon(Icons.more_vert),
              color: Colors.white,
            ),
          ),
        ],
      ),
      endDrawer: Padding(
        padding: const EdgeInsets.only(top: 70),
        child: Align(
          alignment: Alignment.topRight,
          child: Container(
            width: scrW * 0.5,
            height: scrH * 0.39,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xff171e1e),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 13),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  Align(
                    alignment: Alignment.centerLeft,
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Group(),
                          ),
                        );
                      },
                      child:SizedBox(
                        width: scrW*0.4,
                        height: scrH*0.03,
                        //color: Colors.red,
                        child: Text(
                          "New Group",
                          style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w300),
                        ),
                      )
                    ),
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Broad(),
                            ),
                          );
                        },
                        child:SizedBox(
                          width: scrW*0.4,
                          height: scrH*0.03,
                          //color: Colors.red,
                          child:  Text(
                            "New Broadcast",
                            style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w300),
                          ),
                        )
                    ),
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Linkeddev(),
                            ),
                          );
                        },
                        child:SizedBox(
                          width: scrW*0.4,
                          height: scrH*0.03,
                          //color: Colors.red,
                          child:  const Text(
                            "Linked Devices",
                            style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w300),
                          ),
                        )
                    ),
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Starred(),
                            ),
                          );
                        },
                        child:SizedBox(
                          width: scrW*0.4,
                          height: scrH*0.03,
                          //color: Colors.red,
                          child:  const Text(
                            "Starred messages",
                            style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w300),
                          ),
                        )
                    ),
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const Payments(),
                            ),
                          );
                        },
                        child:SizedBox(
                          width: scrW*0.4,
                          height: scrH*0.03,
                          //color: Colors.red,
                          child:  const Text(
                            "Payments",
                            style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w300),
                          ),
                        )
                    ),
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Settings(),
                            )
                          );
                        },
                        child:SizedBox(
                          width: scrW*0.4,
                          height: scrH*0.03,
                          //color: Colors.red,
                          child:  const Text(
                            "Settings",
                            style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w300),
                          ),
                        )
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),

      body: Container(
        decoration: const BoxDecoration(color: Color(0xff0B1014)),
        child: Column(
          children: [

            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: arrTrailing.length,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return Column(
                      children: [
                        Container(
                          height: scrH * .06,
                          width: scrW * .90,
                          decoration: BoxDecoration(
                            color: Colors.white10,
                            borderRadius: BorderRadius.circular(45),
                          ),
                          child: Row(
                            children: [
                              SizedBox(width: 20),
                              Padding(
                                padding: EdgeInsets.only(bottom: 16),
                                child: Row(
                                  children: [
                                    GradientIcon(
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
                                      size: 25,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 13, left: 10),
                                      child: Text("Ask Meta ai or search",style: TextStyle(color: Colors.white38,fontWeight: FontWeight.w200,
                                      fontSize: 18),)

                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: scrH * 0.02),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 21, vertical: 0),
                            child: Row(
                              children: [
                                ChoiceChip(
                                  label: Text("All"),
                                  selected: true,
                                  selectedColor: Color(0xff1A3A2D),
                                  backgroundColor: Colors.grey[800],
                                  labelStyle: TextStyle(color: Colors.green),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                  onSelected: (bool selected) {},
                                ),
                                SizedBox(width: scrW * 0.01),
                                ChoiceChip(
                                  label: Text("Unread"),
                                  selected: false,
                                  selectedColor: Colors.green,
                                  backgroundColor: Color(0xff20292f),
                                  labelStyle: TextStyle(color: Colors.white38),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                  onSelected: (bool selected) {},
                                ),
                                SizedBox(width: scrW * 0.01),
                                ChoiceChip(
                                  label: Text("Favourites"),
                                  selected: false,
                                  selectedColor: Colors.green,
                                  backgroundColor: Color(0xff20292f),
                                  labelStyle: TextStyle(color: Colors.white38),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                  onSelected: (bool selected) {},
                                ),
                                SizedBox(width: scrW * 0.01),
                                ChoiceChip(
                                  label: Text("Groups"),
                                  selected: false,
                                  selectedColor: Colors.green,
                                  backgroundColor: Color(0xff20292f),
                                  labelStyle: TextStyle(color: Colors.white38),
                                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                  onSelected: (bool selected) {},
                                ),
                                SizedBox(width: scrW * 0.01),
                                GestureDetector(
                                  onTap: () {}, // Implement functionality to add a new chip
                                  child: Container(
                                    height: scrH * 0.038,
                                    width: scrW * 0.12,
                                    decoration: BoxDecoration(
                                      color: Color(0xff20292f),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(child: Icon(Icons.add, color: Colors.white38)),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: scrH * 0.02),
                        ListTile(
                          leading: SizedBox(
                            height: scrH * 0.13,
                            width: scrW * 0.122,
                            child: Stack(
                              children: [
                                CircleAvatar(
                                  backgroundImage: NetworkImage('https://images.unsplash.com/photo-1506968695017-764f86a9f9ec?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                                  backgroundColor: Colors.white,
                                  radius: 20,
                                ),
                                Positioned(
                                  bottom: 0,
                                  top: 12,
                                  left: 12,
                                  child: Container(
                                    decoration: BoxDecoration(),
                                    child: CircleAvatar(
                                      backgroundImage: NetworkImage(
                                          'https://w7.pngwing.com/pngs/22/444/png-transparent-messenger-facebook-messenger-messenger-logo-social-media-icon-thumbnail.png'),
                                      radius: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          title: Text(
                            "GDSC Volunteer 2024",
                            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w200),
                          ),
                          subtitle: Text(
                            "Everyone Join Fast",
                            style: TextStyle(color: Colors.white38, fontWeight: FontWeight.w200),
                          ),
                          trailing: Text(
                            "10:15 am",
                            style: TextStyle(color: Colors.white60, fontWeight: FontWeight.w200),
                          ),
                        ),
                      ],
                    );
                  } else {
                    return ListTile(
                      leading: InkWell(
                        onTap: () {
                          String imageUrl = (arrLeading[index] as CircleAvatar).backgroundImage.toString().split('"')[1];
                          String name = arrNames[index];

                          Get.dialog(
                            Dialog(
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
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(0),
                                          ),
                                          child: Hero(
                                            tag: 'bg',
                                            child: ClipRRect(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(0),
                                                  topRight: Radius.circular(0)),
                                              child: Image.network(
                                                imageUrl,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                          ),
                                        ),
                                        // Text on top of image
                                        Positioned(
                                          top: 10,
                                          child: Text(
                                            name,
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 22,
                                              shadows: [Shadow(blurRadius: 10, color: Colors.black87, offset: Offset(2, 2))],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                   // SizedBox(height: 10),
                                    Container(
                                      width: 249,
                                      height: 38,
                                      decoration: BoxDecoration(
                                        color: Color(0xff0B1014),
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(2),
                                          bottomRight: Radius.circular(2),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          IconButton(onPressed: (){
                                            Get.to(ChatScreen());
                                          }, icon: Icon(Icons.chat_outlined, color: Colors.green)),
                                          Icon(Icons.call_outlined, color: Colors.green),
                                          IconButton(onPressed: (){
                                            _takePicture();
                                          }, icon: Icon(Icons.videocam_outlined, color: Colors.green)),
                                         IconButton(onPressed: (){
                                           Get.to(ProfileScreen());
                                         }, icon:  Icon(Icons.info_outline, color: Colors.green),)
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          );

                        },
                        child: arrLeading[index],
                      ),
                      title: GestureDetector(
                        child: Text(
                          arrNames[index],
                          style: const TextStyle(color: Color(0xffEFEFEF), fontWeight: FontWeight.w200),
                        ),
                        onTap: () {
                          Get.to(() => ChatScreen());
                        },
                      ),
                      subtitle: GestureDetector(
                        child: Row(
                          children: [
                            Icon(FontAwesomeIcons.checkDouble, color: Colors.lightBlue, size: 13),
                            SizedBox(width: scrW * 0.005),
                            Text(
                              arrSubtitle[index],
                              style: TextStyle(color: Color(0xc3919191), fontWeight: FontWeight.w200),
                            ),
                          ],
                        ),
                        onTap: () {
                          Get.to(() => ChatScreen());
                        },
                      ),
                      trailing: Text(
                        arrTrailing[index],
                        style: const TextStyle(color: Color(0xc3d5d5d5), fontWeight: FontWeight.w200),
                      ),
                    );
                  }
                },
              ),
            ),

          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
            height: scrH*0.055,
            width: scrW*0.12,
            child: FloatingActionButton(
              backgroundColor: Color(0xff1b262f),
              onPressed: () {
                Get.to(ai());
              },
              child:const Padding(
                padding: EdgeInsets.only(bottom: 17),
                child: GradientIcon(
                  icon: Icons.circle_outlined,
                  gradient: LinearGradient(
                    colors:
                    [
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
            child: Icon(Icons.message_rounded,color: Colors.black,),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}