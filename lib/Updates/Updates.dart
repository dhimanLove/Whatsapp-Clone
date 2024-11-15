import 'package:flutter/material.dart';
import 'package:gradient_icon/gradient_icon.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
//import 'package:google_fonts/google_fonts.dart';
import 'package:badges/badges.dart' as badges;

class Updates extends StatefulWidget {
  const Updates({super.key});

  @override
  State<Updates> createState() => _chatsState();
}

class _chatsState extends State<Updates> {
  @override
  Widget build(BuildContext context) {
    var arrNames=['Status Privacy','Create Channel','Settings'];
    var color = const Color(0xc3d5d5d5);
    var rng = const Color(0xc3919191);
    var colr =const Color(0xffEFEFEF);
    var scrh=MediaQuery.of(context).size.height;
    var scrw=MediaQuery.of(context).size.width;

    var arrLeading = [

    CircleAvatar(backgroundImage: NetworkImage("https://cdn3.iconfinder.com/data/icons/3d-applications/256/app_icons_social_media_search___logo_google_engine_software.png"), backgroundColor: Colors.transparent),
    CircleAvatar(backgroundImage: NetworkImage("https://cdn2.iconfinder.com/data/icons/season-7/340/family_car_travel_vacation_trip_vehicle_happy-256.png"), backgroundColor: Colors.transparent),
    CircleAvatar(backgroundImage: NetworkImage("https://cdn4.iconfinder.com/data/icons/kitchen-and-food-6/256/Doughnut.png"), backgroundColor: Colors.transparent),];
    var arrte = ['App Mentoring','Travel Venture','Khazana'];
    var arrSubtitle = ["You: Meeting kab h sir ?..",'Travel Ticket to Thai..','Khao Pet bhar ke..'];
    var arrTrailing = ["10:17 am",'11:12 am','11:12 am'];

    return Scaffold(
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
          padding: const EdgeInsets.only(top:70),
          child: Align(
            alignment: Alignment.topRight,
            child: Container(
              width: scrw * 0.5,
              height: scrh * 0.26,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Color(0xff171e1e),
              ),
              child: ListView.builder(
                itemCount: arrNames.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(arrNames[index],style: TextStyle(color: Colors.white70),),
                  );
                },
              ),
            ),
          ),
        ),
        body:
        Container(
            decoration:const BoxDecoration(
                color: Color(0xff0B1014)
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
                                              //border: Border.all(color: Colors.green, width: 2), // Green border around the avatar
                                            ),
                                            child: const CircleAvatar(
                                              radius: 34, // Slightly smaller than container to fit within the border
                                              backgroundImage: NetworkImage("https://cdn2.iconfinder.com/data/icons/male-avatars/256/avatars_accounts___man_male_people_person_turtleneck_expression_emotion.png"),
                                              backgroundColor: Colors.transparent,
                                            ),
                                          ),
                                          Positioned(
                                            bottom: 0,
                                            right: 0,
                                            child: Container(
                                              height: 18,
                                              width: 18,
                                              decoration: BoxDecoration(
                                                color: Colors.green, // Green color for the badge
                                                shape: BoxShape.circle,
                                              ),
                                              child: Icon(
                                                Icons.add,
                                                size: 12,
                                                color: Colors.white, // White "+" symbol in the badge
                                              ),
                                            ),
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
                                      Container(
                                          height: scrh*0.085,
                                          width: scrw*0.19,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(36),
                                            border: Border.all(color: Colors.green,width: 2),
                                          ),
                                          child: const CircleAvatar(backgroundImage: NetworkImage("https://a.storyblok.com/f/112937/568x464/884e373bca/travel_pic_unsplash1-568x464.jpg/m/620x0/filters:quality(70)/"),backgroundColor:Colors.transparent,)),
                                      SizedBox(height:scrh*0.01,),
                                      Text("Sameeksha",style: TextStyle(color: colr,fontWeight: FontWeight.w200,fontSize: 10),)
                                    ],
                                  ),
                                  SizedBox(width: scrw*0.04,),
                                  Column(
                                    children: [
                                      Container(
                                          height: scrh*0.085,
                                          width: scrw*0.19,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(36),
                                            border: Border.all(color: Colors.green,width: 2),
                                          ),
                                          child: const CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1571566882372-1598d88abd90?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),backgroundColor: Colors.transparent,)),
                                      SizedBox(height:scrh*0.01,),
                                      Text("Kartik",style: TextStyle(color: colr,fontWeight: FontWeight.w200,fontSize: 10),)
                                    ],
                                  ),
                                  SizedBox(width: scrw*0.04,),
                                  Column(
                                    children: [
                                      Container(
                                          height: scrh*0.085,
                                          width: scrw*0.19,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(36),
                                            border: Border.all(color: Colors.green,width: 2),
                                          ),
                                          child: const CircleAvatar(backgroundImage: NetworkImage("https://images.unsplash.com/photo-1730470577490-40dd6677623a?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),)),
                                      SizedBox(height:scrh*0.01,),
                                      Text("Dhruv",style: TextStyle(color: colr,fontWeight: FontWeight.w200,fontSize: 10),)
                                    ],
                                  ),
                                  SizedBox(width: scrw*0.04,),
                                  Column(
                                    children: [
                                      Container(
                                          height: scrh*0.085,
                                          width: scrw*0.19,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(36),
                                            border: Border.all(color: Colors.green,width: 2),
                                          ),
                                          child: const CircleAvatar(backgroundImage: NetworkImage("https://plus.unsplash.com/premium_photo-1664971411943-cfb3d0778c82?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),)),
                                      SizedBox(height:scrh*0.01,),
                                      Text("Krish",style: TextStyle(color: colr,fontWeight: FontWeight.w200,fontSize: 10),)
                                    ],
                                  ),
                                  SizedBox(width: scrw*0.04,),
                                  Column(
                                    children: [
                                      Container(
                                          height: scrh*0.085,
                                          width: scrw*0.19,
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(36),
                                            border: Border.all(color: Colors.green,width: 2),
                                          ),
                                          child: const CircleAvatar(backgroundImage: NetworkImage("https://plus.unsplash.com/premium_photo-1664527008854-90773bcc6d53?q=80&w=1887&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),)),
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
                  Container(
                    height: scrh*0.27,
                    child: ListView.builder(
                      itemCount: arrte.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: arrLeading[index],
                          title: Text(arrte[index],style: TextStyle(color: Colors.white),),
                          subtitle: Text(arrSubtitle[index],style: TextStyle(color: Colors.white60),),
                          trailing: Text(arrTrailing[index],style: TextStyle(color: Colors.white54),),
                        );
                      },
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
                            Row(
                              children: [
                                const Text("Explore",style: TextStyle(color: Colors.green),),
                                SizedBox(
                                  width: scrw*0.01,
                                ),
                                const FaIcon(FontAwesomeIcons.angleRight,color: Colors.green,size: 12,)
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: scrh*0.02,),
                      ],
                    ),
                  ),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Card(
                            color: Colors.transparent,
                            elevation: 20,
                            child: Container(
                              height: scrh*0.18,
                              width: scrw*0.35,
                              decoration: BoxDecoration(
                                borderRadius:BorderRadius.circular(10),
                                border: Border.all(color: Colors.white60,width: 0.4),
                                color: Colors.transparent,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  const CircleAvatar(backgroundImage: NetworkImage("https://cdn3.iconfinder.com/data/icons/product-management-26/256/Creativity.png"),),
                                  Text("Hello",style: TextStyle(color: colr),),
                                  SizedBox(
                                    height: scrh*0.04,
                                    width: scrw*0.22,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => const Updates()),
                                        );
                                      },
                                      style:
                                      ElevatedButton.styleFrom(
                                        foregroundColor: Colors.white, backgroundColor: Colors.green,),
                                      child: const Text('Join'),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: scrw*0.02,),
                          Card(
                            color: Colors.transparent,
                            elevation: 20,
                            child: Container(
                              height: scrh*0.18,
                              width: scrw*0.35,
                              decoration: BoxDecoration(
                                borderRadius:BorderRadius.circular(10),
                                border: Border.all(color: Colors.white60,width: 0.4),
                                color: Colors.transparent,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  const CircleAvatar(backgroundImage: NetworkImage("https://cdn3.iconfinder.com/data/icons/product-management-26/256/Creativity.png"),),
                                  Text("Hello",style: TextStyle(color: colr),),
                                  SizedBox(
                                    height: scrh*0.04,
                                    width: scrw*0.22,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => const Updates()),
                                        );
                                      },
                                      style:
                                      ElevatedButton.styleFrom(
                                        foregroundColor: Colors.white, backgroundColor: Colors.green,),
                                      child: const Text('Join'),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: scrw*0.02,),
                          Card(
                            color: Colors.transparent,
                            elevation: 20,
                            child: Container(
                              height: scrh*0.18,
                              width: scrw*0.35,
                              decoration: BoxDecoration(
                                borderRadius:BorderRadius.circular(10),
                                border: Border.all(color: Colors.white60,width: 0.4),
                                color: Colors.transparent,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  const CircleAvatar(backgroundImage: NetworkImage("https://cdn3.iconfinder.com/data/icons/product-management-26/256/Creativity.png"),),
                                  Text("Hello",style: TextStyle(color: colr),),
                                  SizedBox(
                                    height: scrh*0.04,
                                    width: scrw*0.22,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => const Updates()),
                                        );
                                      },
                                      style:
                                      ElevatedButton.styleFrom(
                                        foregroundColor: Colors.white, backgroundColor: Colors.green,),
                                      child: const Text('Join'),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: scrw*0.02,),
                          Card(
                            color: Colors.transparent,
                            elevation: 20,
                            child: Container(
                              height: scrh*0.18,
                              width: scrw*0.35,
                              decoration: BoxDecoration(
                                borderRadius:BorderRadius.circular(10),
                                border: Border.all(color: Colors.white60,width: 0.4),
                                color: Colors.transparent,
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  const CircleAvatar(backgroundImage: NetworkImage("https://cdn3.iconfinder.com/data/icons/product-management-26/256/Creativity.png"),),
                                  Text("Hello",style: TextStyle(color: colr),),
                                  SizedBox(
                                    height: scrh*0.04,
                                    width: scrw*0.22,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => const Updates()),
                                        );
                                      },
                                      style:
                                      ElevatedButton.styleFrom(
                                        foregroundColor: Colors.white, backgroundColor: Colors.green,),
                                      child: const Text('Join'),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),)])));
  }
}