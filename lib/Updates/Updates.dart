import 'package:flutter/material.dart';
import 'package:get/get.dart';
//import 'package:gradient_icon/gradient_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:google_fonts/google_fonts.dart';
//import 'package:badges/badges.dart' ;
import 'package:image_picker/image_picker.dart';
import 'package:whatsapp/Updates/Channels/Explore/Channelsexplore.dart';
import 'package:whatsapp/Updates/Status/Video/Sameekshavid.dart';
import 'package:whatsapp/Updates/Status/Video/Vid3.dart';
import 'package:whatsapp/Updates/Status/Video/vid2.dart';
import 'package:whatsapp/Updates/Status/Video/videofive.dart';
import 'package:whatsapp/Updates/Status/Video/videofour.dart';
import 'package:whatsapp/Updates/edit.dart';
import 'package:whatsapp/Updates/statusprivacy.dart';
import 'package:whatsapp/chats/Settings.dart';

class Updates extends StatefulWidget {
  const Updates({super.key});

  @override
  State<Updates> createState() => ChatsState();
}

class ChatsState extends State<Updates> {
  Future<void> _takePicture() async {
    Future<void> _takePicture() async {
      final ImagePicker picker = ImagePicker();
      final XFile? image = await picker.pickImage(source: ImageSource.camera);

      if (image != null) {
        setState(() {
// Store the image file
        });
      }
    }
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.camera);

    if (image != null) {
      setState(() {
      });
    }
  }
  @override
  Widget build(BuildContext context) {

    // var arrNames=['Status Privacy','Create Channel','Settings'];
    // var color = const Color(0xc3d5d5d5);
    // var rng = const Color(0xc3919191);

    var colr =const Color(0xffEFEFEF);
    var scrh=MediaQuery.of(context).size.height;
    var scrw=MediaQuery.of(context).size.width;

    var arrLeading = [
    CircleAvatar(
        backgroundImage: NetworkImage("https://cdn3.iconfinder.com/data/icons/3d-applications/256/app_icons_social_media_search___logo_google_engine_software.png"),
        backgroundColor: Colors.transparent
    ),
    CircleAvatar(backgroundImage: NetworkImage("https://cdn2.iconfinder.com/data/icons/season-7/340/family_car_travel_vacation_trip_vehicle_happy-256.png"),
        backgroundColor: Colors.transparent),

    CircleAvatar(backgroundImage: NetworkImage("https://cdn4.iconfinder.com/data/icons/kitchen-and-food-6/256/Doughnut.png"),
        backgroundColor: Colors.transparent),
    ];

    var arrte = [
      'App Mentoring',
      'Travel Venture',
      'Khazana'
    ];
    var arrSubtitle = [
      "You: Meeting kab h sir ?..",
      'Travel Ticket to Thai..',
      'Khao Pet bhar ke..'
    ];
    var arrTrailing = [
      "10:17 am",
      '11:12 am',
      '11:12 am'
    ];

    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff0B1014),
          title: const Text(
            'Updates',
            style: TextStyle(
              fontSize: 25,
              color: Colors.white,
            ),
          ),
          actions: [
            IconButton(onPressed: () {
              _takePicture();
            }, icon: const Icon(Icons.photo_camera_outlined), color: colr),
            IconButton(onPressed: () {}, icon: const Icon(Icons.search), color: colr),
            Builder(
              builder: (context) {
                return IconButton(
                  onPressed: () {
                    Scaffold.of(context).openEndDrawer();
                  },
                  icon: const Icon(Icons.more_vert),
                  color: colr,
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
              height: scrh * 0.22,
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
                                builder: (context) => const statusp(),
                              ),
                            );
                          },
                          child:SizedBox(
                            width: scrw*0.6,
                            height: scrh*0.03,
                            //color: Colors.red,
                            child:  const Text(
                              "Status Privacy",
                              style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.w300),
                            ),
                          )
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: InkWell(
                          onTap: () {
                            showModalBottomSheet(
                              context: context,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                              ),
                              backgroundColor: Color(0xff0B131A),
                              builder: (context) {
                                return Container(
                                  padding: const EdgeInsets.all(16.0),
                                  height: scrh*0.9, // Set height as per requirement
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Center(
                                        child: SizedBox(
                                          //color: Colors.red,
                                          height:scrh*0.16,
                                            width: scrw*0.6,
                                            child: Image.asset('lib/assets/Channels.png',fit: BoxFit.contain,)
                                        ),
                                      ),
                                      const Text(
                                        "Create a channel to reach unlimited followers",
                                        style: TextStyle(fontSize: 25,color: Colors.white),
                                        textAlign: TextAlign.center,
                                      ),
                                       ListTile(
                                        leading: FaIcon(FontAwesomeIcons.globe, color: Colors.white,size: 17,),
                                        title: Text("Anyone can discover your channel",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w200,fontSize: 15),),
                                        subtitle: Text("Channels are public , so anyone can find them and see 30 days of history",style: TextStyle(color: Colors.white54,fontWeight: FontWeight.w200,fontSize: 13),),
                                        onTap: () {
                                          Navigator.pop(context); // Close the bottom sheet
                                        },
                                      ),
                                      ListTile(
                                        leading: const FaIcon(FontAwesomeIcons.eyeSlash, color: Colors.white,size: 17,),
                                        title: const Text('People see your channel, not you ',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w200,fontSize: 15),),
                                        subtitle: Text("Followers can't see your phone number just you can see.",style: TextStyle(color: Colors.white54,fontWeight: FontWeight.w200,fontSize: 13),),
                                        onTap: () {
                                          Navigator.pop(context);
                                        },
                                      ),
                                    ],
                                  ),
                                );
                              },
                            );
                          },
                          child:SizedBox(
                            width: scrw*0.6,
                            height: scrh*0.03,
                            child:  const Text(
                              "Create Channel",
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
                                builder: (context) => const Settings(),
                              ),
                            );
                          },
                          child:SizedBox(
                            width: scrw*0.6,
                            height: scrh*0.03,
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
        body:
        Container(
            decoration:const BoxDecoration(
                color: Color(0xff0B1014),
            ),
            child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15,top: 15),
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(width: 0.1, color:colr),
                        ),
                      ),
                      child: Column(
                        children: [
                          const Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                                child: Text("Status",style: TextStyle(color: Colors.white,fontSize: 23,fontWeight: FontWeight.w200),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 8),
                            child: SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  Column(
                                    children: [
                                      Stack(
                                        children: [
                                          Container(
                                            height: scrh * 0.085,
                                            width: scrw * 0.19,
                                            decoration: BoxDecoration(
                                              shape: BoxShape.circle,
                                              //border: Border.all(color: Colors.green, width: 2),
                                            ),
                                            child: const CircleAvatar(
                                              radius: 34,
                                              backgroundImage: NetworkImage('https://images.unsplash.com/photo-1491555103944-7c647fd857e6?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                                              backgroundColor: Colors.transparent,
                                            ),
                                          ),
                                          Positioned(
                                            bottom: 0,
                                            right: 0,
                                            child:
                                            GestureDetector(
                                              onTap: (){
                                                _takePicture();
                                              },
                                              child: Container(
                                                height: 18,
                                                width: 18,
                                                decoration: BoxDecoration(
                                                  color: Colors.green,
                                                  shape: BoxShape.circle,
                                                ),
                                                child: Icon(
                                                  Icons.add,
                                                  size: 12,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            )
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: scrh * 0.01),
                                      Text("My Status",style: TextStyle(color: colr,fontWeight: FontWeight.w200,fontSize: 10),)
                                    ],
                                  ),
                                  SizedBox(width: scrw*0.04,),
                                  Column(
                                    children: [
                                      GestureDetector(
                                        child: Container(
                                            height: scrh*0.085,
                                            width: scrw*0.19,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(36),
                                              border: Border.all(color: Colors.green,width: 2),
                                            ),
                                            child: const CircleAvatar(backgroundImage: NetworkImage('https://images.unsplash.com/photo-1607454317530-68f30190f520?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),backgroundColor:Colors.transparent,)),
                                      onTap: (){
                                          Get.to(Videoscreen());
                                      }
                                      ),
                                      SizedBox(height:scrh*0.01,),
                                      Text("Sameeksha",style: TextStyle(color: colr,fontWeight: FontWeight.w200,fontSize: 10),)
                                    ],
                                  ),
                                  SizedBox(width: scrw*0.04,),
                                  Column(
                                    children: [
                                      GestureDetector(
                                          child: Container(
                                              height: scrh*0.085,
                                              width: scrw*0.19,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(36),
                                                border: Border.all(color: Colors.green,width: 2),
                                              ),
                                              child: const CircleAvatar(backgroundImage: NetworkImage('https://images.unsplash.com/photo-1506968695017-764f86a9f9ec?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),backgroundColor:Colors.transparent,)),
                                          onTap: (){
                                            Get.to(Videotwo());
                                          }
                                      ),
                                      SizedBox(height:scrh*0.01,),
                                      Text("Krishna",style: TextStyle(color: colr,fontWeight: FontWeight.w200,fontSize: 10),)
                                    ],
                                  ),
                                  SizedBox(width: scrw*0.04,),
                                  Column(
                                    children: [
                                      GestureDetector(
                                          child: Container(
                                              height: scrh*0.085,
                                              width: scrw*0.19,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(36),
                                                border: Border.all(color: Colors.green,width: 2),
                                              ),
                                              child: const CircleAvatar(backgroundImage: NetworkImage("https://a.storyblok.com/f/112937/568x464/884e373bca/travel_pic_unsplash1-568x464.jpg/m/620x0/filters:quality(70)/"),backgroundColor:Colors.transparent,)),
                                          onTap: (){
                                            Get.to(Vidthree());
                                          }
                                      ),
                                      SizedBox(height:scrh*0.01,),
                                      Text("Dhruv",style: TextStyle(color: colr,fontWeight: FontWeight.w200,fontSize: 10),)
                                    ],
                                  ),
                                  SizedBox(width: scrw*0.04,),
                                  Column(
                                    children: [
                                      GestureDetector(
                                          child: Container(
                                              height: scrh*0.085,
                                              width: scrw*0.19,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(36),
                                                border: Border.all(color: Colors.green,width: 2),
                                              ),
                                              child: const CircleAvatar(backgroundImage: NetworkImage('https://plus.unsplash.com/premium_photo-1716312742751-d1ca46aa9a0e?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),backgroundColor:Colors.transparent,)),
                                          onTap: (){
                                            Get.to(Videofour());
                                          }
                                      ),
                                      SizedBox(height:scrh*0.01,),
                                      Text("Krish",style: TextStyle(color: colr,fontWeight: FontWeight.w200,fontSize: 10),)
                                    ],
                                  ),
                                  SizedBox(width: scrw*0.04,),
                                  Column(
                                    children: [
                                      GestureDetector(
                                          child: Container(
                                              height: scrh*0.085,
                                              width: scrw*0.19,
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(36),
                                                border: Border.all(color: Colors.green,width: 2),
                                              ),
                                              child: const CircleAvatar(backgroundImage: NetworkImage('https://images.unsplash.com/photo-1510712582399-2fbf760892ae?q=80&w=2009&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),backgroundColor:Colors.transparent,)),
                                          onTap: (){
                                            Get.to(Videofive());
                                          }
                                      ),
                                      SizedBox(height:scrh*0.01,),
                                      Text("Rudra",style: TextStyle(color: colr,fontWeight: FontWeight.w200,fontSize: 10),)
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],

                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Channels",style: TextStyle(color: colr,fontSize: 25),),
                            InkWell(
                              onTap: () {
                               Get.to(Channelsexplore());
                              },
                              child: Row(
                                children: [
                                  const Text("Explore",style: TextStyle(color: Colors.green),),
                                  SizedBox(width: scrw*0.01,),
                                  const FaIcon(FontAwesomeIcons.angleRight,color: Colors.green,size: 12,)
                                ],
                              )
                            ),
                          ],
                        ),
                        SizedBox(height: scrh*0.02,),
                      ],
                    ),
                  ),
                  Container(
                    height: scrh*0.27,
                    child: ListView.builder(
                      itemCount: arrte.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: arrLeading[index],
                          title: Text(arrte[index],style: TextStyle(color: Colors.white,fontWeight: FontWeight.w200),),
                          subtitle: Text(arrSubtitle[index],style: TextStyle(color: Colors.white60,fontWeight: FontWeight.w200),),
                          trailing: Text(arrTrailing[index],style: TextStyle(color: Colors.white54,fontWeight: FontWeight.w200),),
                        );
                      },
                    ),
                  ),


                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          SizedBox(width: scrw*0.02,),
                        ],
                      ),
                    ),)])),
      floatingActionButton: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: scrh*0.055,
          width: scrw*0.12,
          child: FloatingActionButton(
            backgroundColor: Color(0xff1b262f),
            onPressed: () {
             Get.to(Colorpage());
            },
            child: Padding(
              padding: const EdgeInsets.only(bottom: 0),
              child: Icon(Icons.edit,color: Colors.white70,)
            ),
          ),
        ),
        SizedBox(height: 16),
        FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: () {
            _takePicture();
          },
          child: Icon(Icons.camera_alt,color: Colors.black,),
        ),
      ],
    ),
    floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}