import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:get/get.dart';
//import 'package:whatsapp/Calls/Delete.dart';
import 'package:whatsapp/Calls/Selectcalls.dart';
import 'package:whatsapp/chats/Settings.dart';

class Calls extends StatelessWidget {
  const Calls({super.key});

  @override
  Widget build(BuildContext context) {
    var scrw = MediaQuery.of(context).size.width;
    var scrh = MediaQuery.of(context).size.height;

    List<String> arrdrawer = [
      'New Group',
      'New Broadcast',
      'Linked devices',
      'Calls Messages',
      'Calls',
      'Settings'
    ];
    void _makePhoneCall(String phoneNumber) async {
      final Uri url = Uri.parse("tel:$phoneNumber");
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      } else {
        throw "Could not launch $url";
      }
    }

    var arrfavtitle = ['Favourites'];
    var arrLeading = [
      CircleAvatar(backgroundImage: NetworkImage("https://cdn2.iconfinder.com/data/icons/famous-people-2/256/Princess_Diana.png"), backgroundColor: Colors.transparent),
      CircleAvatar(backgroundImage: NetworkImage("https://cdn2.iconfinder.com/data/icons/male-avatars/256/avatars_accounts___man_male_people_person_hoodie_boy_child.png"), backgroundColor: Colors.transparent),
      CircleAvatar(backgroundImage: NetworkImage("https://cdn2.iconfinder.com/data/icons/male-avatars/256/avatars_accounts___man_male_people_person_shirt_hairstyle.png"), backgroundColor: Colors.transparent),
      CircleAvatar(backgroundImage: NetworkImage("https://cdn2.iconfinder.com/data/icons/male-avatars/512/avatars_accounts___man_male_people_person_scarf.png"), backgroundColor: Colors.transparent),
      CircleAvatar(backgroundImage: NetworkImage("https://cdn2.iconfinder.com/data/icons/male-avatars/256/avatars_accounts___man_male_people_person_cowboy_hat.png"), backgroundColor: Colors.transparent),
      CircleAvatar(backgroundImage: NetworkImage("https://cdn2.iconfinder.com/data/icons/male-avatars/256/avatars_accounts___man_male_people_person_turtleneck_sunglasses_beard_wavy_hair.png"), backgroundColor: Colors.transparent),
      CircleAvatar(backgroundImage: NetworkImage("https://cdn2.iconfinder.com/data/icons/male-avatars/256/avatars_accounts___man_male_people_person_hat_cap_baseball_cap_necklace_shirtless.png"), backgroundColor: Colors.transparent),
      CircleAvatar(backgroundImage: NetworkImage("https://cdn2.iconfinder.com/data/icons/male-avatars/256/avatars_accounts___man_male_people_person_broken_glasses_thick_beard_beard_tie_shirt_glasses.png"), backgroundColor: Colors.transparent),
    ];

    var arrNames = ['Sameeksha', 'Papa', 'Dhruv', 'Kartik', 'Yash', 'Tinku Jiya', 'Project wala', 'Maqsood'];
    var arrSubtitle = ['Today', 'Yesterday', '13/11/2024', '12/11/2024', '5/11/2024', '1/10/2024', '19/10/2024', '1/01/2024'];
    var arrTrailing = [
      GestureDetector(
        child: Icon(Icons.call, color: Colors.white70),
        onTap: () => _makePhoneCall("8053645063"),
      ),
      GestureDetector(
        child: Icon(Icons.call, color: Color(0xB3DDDBDB)),
        onTap: () => _makePhoneCall("9876543210"),
      ),
      GestureDetector(
        child: Icon(Icons.phone_missed, color: Colors.redAccent),
        onTap: () => _makePhoneCall("9876543210"),
      ),
      GestureDetector(
        child: Icon(Icons.call, color: Colors.white70),
        onTap: () => _makePhoneCall("9876543210"),
      ),
      GestureDetector(
        child: Icon(Icons.missed_video_call_rounded, color: Colors.redAccent),
        onTap: () => _makePhoneCall("9876543210"),
      ),
      GestureDetector(
        child: Icon(Icons.video_call, color: Colors.white70),
        onTap: () => _makePhoneCall("9876543210"),
      ),
      GestureDetector(
        child: Icon(Icons.call, color: Colors.white70),
        onTap: () => _makePhoneCall("9876543210"),
      ),
      GestureDetector(
        child: Icon(Icons.call, color: Colors.white70),
        onTap: () => _makePhoneCall("9876543210"),
      ),
    ];


    var color = Colors.grey[300];
    var avatarColor = Colors.grey[400];

    return Scaffold(
      backgroundColor: Color(0xff0B1014),
      appBar: AppBar(
        backgroundColor: Color(0xff0B1014),
        title: const Text(
          'Calls',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),

        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.photo_camera_outlined), color: color),
          IconButton(onPressed: () {}, icon: const Icon(Icons.search), color: color),
          Builder(
            builder: (context) {
              return IconButton(
                onPressed: () {
                  Scaffold.of(context).openEndDrawer();
                },
                icon: const Icon(Icons.more_vert),
                color: color,
              );
            },
          ),
        ],
      ),
      endDrawer: Padding(
        padding: const EdgeInsets.only(top: 70),
        child: Align(
          alignment: Alignment.topRight,
          child: Container(
            width: scrw * 0.5,
            height: scrh * 0.16,
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
                    child: TextButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return Dialog(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: Container(
                                width: 300,
                                height: scrh*0.17,
                                decoration: BoxDecoration(
                                  color: const Color(0xff2e3638), // Background color
                                  borderRadius: BorderRadius.circular(26),
                                ),
                                child: Column(
                                  //mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.symmetric(horizontal: 22,vertical: 18),
                                      child: Text(
                                        "Do you want to clear your entire call logs?",
                                        //textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Colors.white54,
                                          fontSize: 14,
                                          fontWeight: FontWeight.w200,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Text(
                                            "Cancel",
                                            style: TextStyle(
                                              color: Colors.green,
                                              //fontSize: 14,
                                              fontWeight: FontWeight.w200,
                                            ),
                                          ),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                            // Add clear logic here
                                          },
                                          child: Text(
                                            "OK",
                                            style: TextStyle(
                                              color: Colors.green,
                                              //fontSize: 14,
                                              fontWeight: FontWeight.w200,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: const Text("Clear call logs",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w200,fontSize: 16),),
                    ),
                  ),

                  Align(
                    alignment: Alignment.centerLeft,
                    child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Settings(),
                              )
                          );
                        },
                        child:SizedBox(
                          width: scrw*0.4,
                          height: scrh*0.03,
                          //color: Colors.red,
                          child:  const Text(
                            "Settings",
                            style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w200),
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 270),
            child: Text("Favourites", style: TextStyle(color: Colors.white, fontSize: 15)),
          ),
          SizedBox(height: 20),
          ListTile(
            leading: Container(
              height: scrh * 0.05,
              width: scrh * 0.05,
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: FaIcon(FontAwesomeIcons.solidHeart, color: Colors.black),
              ),
            ),
            title: Text("Add Favourite", style: TextStyle(color: Colors.white, fontSize: 15)),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(right: 270),
            child: Text("Recents", style: TextStyle(color: Colors.white, fontSize: 15)),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: arrNames.length,
              itemBuilder: (context, index) {
                Color color = arrNames[index] == 'Dhruv' || arrNames[index]=='Yash'? Colors.red : Colors.white;
                return ListTile(
                  leading: arrLeading[index],
                  title: Text(
                    arrNames[index],
                    style: TextStyle(color: color,fontWeight: FontWeight.w200),
                  ),
                  subtitle: Text(arrSubtitle[index], style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w200)),
                  trailing: arrTrailing[index],
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: 
          FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: () {
              Get.to(ContactUI());
            },
          child: Icon(Icons.add_ic_call_rounded,color: Colors.black,),
          ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
