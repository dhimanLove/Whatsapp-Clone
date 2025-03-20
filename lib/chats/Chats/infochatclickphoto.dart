import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0B1014),
      appBar: AppBar(
        backgroundColor: Color(0xff0B1014),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
      ),
      body:
      Padding(padding: EdgeInsets.all(10),
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                height: 330,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.black, width: 10)),
                ),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 60,
                      backgroundImage: NetworkImage(
                          'https://cdnb.artstation.com/p/assets/images/images/001/147/575/large/jason-gaiters-power-ranger-samurai.jpg'),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Sukhi',
                      style: TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      '+91 83989 19452',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white54,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 0.2),
                              borderRadius: BorderRadius.circular(17,)
                          ),
                          height: 70,
                          width: 74,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.chat_outlined, color: Colors.green),
                              Text('Message', style: TextStyle(color: Colors.white54)),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 0.2),
                              borderRadius: BorderRadius.circular(17,)
                          ),
                          height: 70,
                          width: 74,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.call, color: Colors.green),
                              Text('Audio', style: TextStyle(color: Colors.white54)),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 0.2),
                              borderRadius: BorderRadius.circular(17,)
                          ),
                          height: 70,
                          width: 74,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.video_call_outlined, color: Colors.green),
                              Text('Video', style: TextStyle(color: Colors.white54)),
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey, width: 0.2),
                              borderRadius: BorderRadius.circular(17,)
                          ),
                          height: 70,
                          width: 74,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.currency_rupee, color: Colors.green),
                              Text('Message', style: TextStyle(color: Colors.white54)),
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.black, width: 10)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Nature's beauty shines brightly, inspiring peaceful thoughts enjoying the quiet and fresh air.",
                        style: TextStyle(
                          fontSize:15.4 ,
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        )),
                    Text('9 days ago',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white54,
                          fontWeight: FontWeight.w300,
                        )),
                    SizedBox(height: 20),
                  ],
                ),
              ),
              SizedBox(height: 8),
              Column(
                children: [
                  Container(
                    height: 170,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border(bottom: BorderSide(color: Colors.black, width: 10)),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Media, Links, and docs",
                          style: TextStyle(
                            fontSize:15.4 ,
                            color: Colors.white54,
                            fontWeight: FontWeight.w300,
                          ),
                        ),

                        SizedBox(
                          height: 10,
                        ),

                        Padding(padding: EdgeInsets.only(
                          left: 10,
                          right: 10,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13),
                                boxShadow: [BoxShadow(blurRadius: 5, color: Colors.black26)],
                              ),
                              height: 110,
                              width: 90,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(13),
                                child: Image.network(
                                  'https://images.unsplash.com/photo-1578645635737-6a88e706e0f1?q=80&w=1964&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(width: 5,),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(13),
                                boxShadow: [BoxShadow(blurRadius: 5, color: Colors.black26)], // Shadow for better UI
                              ),
                              height: 110,
                              width: 90,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(13),
                                child: Image.network(
                                  'https://images.unsplash.com/photo-1624109267815-5d7d09cd5db6?q=80&w=1935&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        )
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(height: 5),
             Container(
               //height: 130,
               width: double.infinity,
               decoration: BoxDecoration(
                 border: Border(bottom: BorderSide(color: Colors.black, width: 10)),
               ),
               child: Column(
                 children: [
                   ListTile(
                     leading: Icon(Icons.notifications_none, color: Colors.white),
                     title: Text('Notifications',
                       style: TextStyle(color: Colors.white),
                     ),
                   ),
                   ListTile(
                     leading: Icon(Icons.image_outlined, color: Colors.white),
                     title: Text('Media visibility',
                       style: TextStyle(color: Colors.white),
                     ),
                   ),
                 ],
               ),
             ),
              SizedBox(height: 5),
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.black, width: 10),
                  ),
                ),
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.lock_outline_rounded, color: Colors.white),
                      title: Text('Encryption',
                        style: TextStyle(color: Colors.white),
                      ),
                      subtitle: Text('Exploring new places can bring excitement and adventure, offering experiences that open .',
                      style: TextStyle(color: Colors.white54),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      leading: Icon(Icons.access_time_sharp, color: Colors.white),
                      title: Text('Disappearing messages',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      ),
                      subtitle: Text("Off"),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),)
    );
  }
}
