import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BottomNavBarExample(),
    );
  }
}

class BottomNavBarExample extends StatefulWidget {
  const BottomNavBarExample({super.key});

  @override
  _BottomNavBarExampleState createState() => _BottomNavBarExampleState();
}

class _BottomNavBarExampleState extends State<BottomNavBarExample> {
  int _selectedIndex = 0;

  // List of screens
  final List<Widget> _screens = [
    Center(child: Text('Home Screen')),
    Center(child: Text('Search Screen')),
    Center(child: Text('Profile Screen')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bottom Navigation')),
      body: _screens[_selectedIndex],  // Display the selected screen
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Profile'),
        ],
      ),
    );
  }
}
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

/*List<Map<String, dynamic>> callsData = [
  {
    "name": "Favorites",
    "image":
    "https://img.freepik.com/free-photo/green-heart-inside-eco-friendly-brown-paperboard_53876-104830.jpg",
    "isFavorite": true,
  },
  {
    "name": "Pinokio",
    "image":
    "https://cdn2.iconfinder.com/data/icons/male-avatars/256/avatars_accounts___man_male_people_person_turtleneck_expression_emotion.png",
    "callTime": "Today 12:45 am",
    "iconColor": color,
  },
  {
    "name": "Sameeksha",
    "image":
    "https://as1.ftcdn.net/v2/jpg/09/66/02/54/1000_F_966025484_SVFZJ9vLSNFYxPyG013LUIBA1ygWGgT6.jpg",
    "callTime": "Today 12:45 am",
    "iconColor": Colors.red,
  },
  {
    "name": "App Mentoring",
    "image":
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTU0vMJn9NTpca8c7waspkH6MoWdoWDqbEi4BtZxMPqs41YTzdBihpSh8Az5n0ORMQwz5Y&usqp=CAU",
    "callTime": "Today 12:45 am",
    "iconColor": color,
  },
  {
    "name": "Kartik",
    "image":
    "https://cdn2.iconfinder.com/data/icons/male-avatars/256/avatars_accounts___man_male_people_person_hat_cap_baseball_cap_necklace_shirtless.png",
    "callTime": "Today 12:45 am",
    "iconColor": color,
  },
];


// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:whatsapp/Calls/Calls.dart';
import 'package:whatsapp/Updates/Updates.dart';

class Community extends StatefulWidget {
  const Community({super.key});

  @override
  State<Community> createState() => _chatsState();
}

class _chatsState extends State<Community> {
  @override
  Widget build(BuildContext context) {
    var scrh=MediaQuery.of(context).size.height;
    var scrw=MediaQuery.of(context).size.width;
    var color = Color(0xc3d5d5d5);
    var rng = Color(0xc3919191);
    var colr =Color(0xffEFEFEF);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0b1010),
        title: Text(
          'Communities',
                    style: TextStyle(
            fontWeight: FontWeight.normal,
            fontSize: 25,
            color: Colors.white,
          ),
          textAlign: TextAlign.left,
        ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.qr_code),color: Colors.white,),
          IconButton(onPressed: () {}, icon: Icon(Icons.photo_camera_outlined),color: Colors.white,),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_vert),color: Colors.white,),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(color: Color(0xff0B1014)),
        child: Column(
          children: [
            // First ListView
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 2),
                child: ListView(
                  children: [
                    Container(
                      height: scrh*0.1,
                      decoration: BoxDecoration(  border: Border(bottom: BorderSide(color: Colors.black,width: 8)),),
                      //color: Colors.red,
                      child:
                      ListTile(
                        leading: Container(
                          height: scrh*0.09,
                          width: scrw*0.16,
                         decoration: BoxDecoration(
                           color: rng,
                           borderRadius: BorderRadius.circular(10),
                         ),
                          child:Row(children: [ Image.network("https://cdn3.iconfinder.com/data/icons/leto-user-group/64/__company_group_people-512.png"),],),
                        ),
                        title: Text("New Community",style: TextStyle(fontSize: 23,color: Colors.white),),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 13,top: 10),
                      child: Text("Recents",style: TextStyle(fontSize: 20,color: Colors.white)),
                    ),
                Container(
                  height: scrh*0.1,
                  decoration: BoxDecoration(  border: Border(bottom: BorderSide(color: Colors.white54,width: 2)),),
                  //color: Colors.red,
                  child:
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: ListTile(
                      leading:CircleAvatar(backgroundImage: NetworkImage("https://undergrad.cs.umd.edu/sites/undergrad.cs.umd.edu/files/GDSC_Logo_White_Background_0.png"),radius: 25,),
                      title: Text("GDG - Volunnteers 2024",style: TextStyle(fontSize: 20,color: Colors.white),),
                    ),
                  ),),
                    Padding(
                      padding: const EdgeInsets.only(top:8.0),
                      child: Container(
                        height: scrh*0.1,
                        //color: Colors.red,
                        child:
                        ListTile(
                          leading: Container(
                            height: scrh*0.05,
                            width: scrw*0.12,
                            decoration: BoxDecoration(
                              color: rng,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child:Center(child: FaIcon(FontAwesomeIcons.radio,color: Colors.green,)),
                          ),
                          title: Text("Announcements",style: TextStyle(color: Colors.white),),
                        ),
                      ),
                    ),
                    ListTile(
                      leading: CircleAvatar(backgroundImage: NetworkImage("https://cdn1.iconfinder.com/data/icons/mockupy/256/2._iPhone_Pro_Vertical_Tapping__Hodling.png",scale: 10),backgroundColor:rng,),
                      title: Text("App Mentoring",style: TextStyle(fontSize: 15,color: Colors.white),),
                      subtitle:Text("Dhruv: Good evening sir....",style: TextStyle(color: Colors.white54)),
                      trailing:IconButton(onPressed: (){}, icon:Icon(Icons.phone,color: Colors.white,)),),
                    ListTile(
                      leading: CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTU0vMJn9NTpca8c7waspkH6MoWdoWDqbEi4BtZxMPqs41YTzdBihpSh8Az5n0ORMQwz5Y&usqp=CAU"),backgroundColor: rng,),
                      title: Text("Farewell",style: TextStyle(fontSize: 15,color: Colors.white),),
                      subtitle: Text("Vaishnavi Didi: Guys monday..",style: TextStyle(color: Colors.white54)) ,
                      trailing:IconButton(onPressed: (){}, icon:Icon(Icons.phone,color: Colors.white,)),),
                    Padding(
                      padding: const EdgeInsets.only(left:15),
                      child: Row(children: [Text("See more",style: TextStyle(color: Colors.white),),Icon(Icons.keyboard_arrow_right_sharp,color: Colors.white54,)],),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
 Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left:2, right: 2),
                child: ListView(
                  children: [
                    ListTile(
                    leading: CircleAvatar(backgroundImage: const NetworkImage("https://cdn2.iconfinder.com/data/icons/male-avatars/256/avatars_accounts___man_male_people_person_turtleneck_expression_emotion.png"),backgroundColor: rng,),
                    title: const Text("Me",style: TextStyle(fontSize: 17,color:Colors.white),),
                    subtitle:Row(
                      children: [FaIcon(FontAwesomeIcons.video,size: 13,color: rng,),SizedBox(width: scrw*0.02,),Text("Video",style:TextStyle(color:rng,),)],
                    ),
                    trailing:Text("12:17 pm",style: TextStyle(color: rng)),
                  ),
                    ListTile(
                      leading: CircleAvatar(backgroundImage: const NetworkImage("https://as1.ftcdn.net/v2/jpg/09/66/02/54/1000_F_966025484_SVFZJ9vLSNFYxPyG013LUIBA1ygWGgT6.jpg"),backgroundColor:rng,),
                      title: const Text("Sameeksha",style: TextStyle(fontSize: 17,color:Colors.white),),
                      subtitle:Text("Let's Go for the Concert",style: TextStyle(fontSize: 13,color:rng),) ,
                      trailing:Text("11:10 pm",style: TextStyle(color: rng),),
                    ),
                    ListTile(
                      leading: CircleAvatar(backgroundImage: const NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTU0vMJn9NTpca8c7waspkH6MoWdoWDqbEi4BtZxMPqs41YTzdBihpSh8Az5n0ORMQwz5Y&usqp=CAU"),backgroundColor: rng,),
                      title: const Text("App Mentoring",style: TextStyle(fontSize: 17,color:Colors.white),),
                      subtitle:Text("Krish : Meeting kab h sir ?",style: TextStyle(fontSize: 13,color: rng),) ,
                      trailing:Text("10:17 am",style: TextStyle(color: rng),),
                    ),
                    ListTile(
                      leading: CircleAvatar(backgroundImage: const NetworkImage("https://cdn2.iconfinder.com/data/icons/male-avatars/256/avatars_accounts___man_male_people_person_hat_cap_baseball_cap_necklace_shirtless.png"),backgroundColor: rng,),
                      title: const Text("Kartik",style: TextStyle(fontSize: 17,color:Colors.white),),
                      subtitle:Text("Chal Bahr chlte hai !!",style: TextStyle(fontSize: 13,color: rng),) ,
                      trailing:Text("10:16 am",style: TextStyle(color: rng),),),
                    ListTile(
                      leading: CircleAvatar(backgroundImage: const NetworkImage("https://cdn2.iconfinder.com/data/icons/male-avatars/256/avatars_accounts___man_male_people_person_shirt_headphone_headset_music_listen.png"),backgroundColor: rng,),
                      title: const Text("Krish",style: TextStyle(fontSize: 17,color:Colors.white),),
                      subtitle:Text("Bhandara Khane Chlega ?",style: TextStyle(fontSize: 13,color: rng),) ,
                      trailing:Text("Yesterday",style: TextStyle(color: rng),),),
                    ListTile(
                      leading: CircleAvatar(backgroundImage: const NetworkImage("https://cdn2.iconfinder.com/data/icons/male-avatars/512/avatars_accounts___man_male_people_person_shirt_formal_office_tie.png"),backgroundColor: rng,),
                      title: const Text("Ajay Bhaiya GDG",style: TextStyle(fontSize: 17,color:Colors.white),),
                      subtitle:Text("Progress Dikhao Loveraj.. ",style: TextStyle(fontSize: 13,color: rng),) ,
                      trailing:Text("Yesterday",style: TextStyle(color: rng),),
                    ),
                    ListTile(
                      leading: CircleAvatar(backgroundImage: const NetworkImage("https://cdn2.iconfinder.com/data/icons/male-avatars/256/avatars_accounts___man_male_people_person_sunglasses_curly_hair_fashion_style.png"),backgroundColor: rng,),
                      title: const Text("Kartik Bhaiya GDG",style: TextStyle(fontSize: 17,color:Colors.white),),
                      subtitle:Text("Awaz bnd kr Loveraj !",style: TextStyle(fontSize: 13,color: rng),) ,
                      trailing:Text("Yesterday",style: TextStyle(color: rng),),
                    ),
                    ListTile(
                      leading: CircleAvatar(backgroundImage: const NetworkImage("https://cdn2.iconfinder.com/data/icons/male-avatars/256/avatars_accounts___man_male_people_person_broken_glasses_glasses_curly_hair_sweater.png"),backgroundColor: rng,),
                      title: const Text("Parag Bhaiya GDG",style: TextStyle(fontSize: 17,color:Colors.white),),
                      subtitle:Text("Join the Meet Fast !",style: TextStyle(fontSize: 13,color: rng),) ,
                      trailing:Text("Yesterday",style: TextStyle(color: rng),),
                    ),
                    ListTile(
                      leading: CircleAvatar(backgroundImage: const NetworkImage("https://cdn2.iconfinder.com/data/icons/male-avatars/256/avatars_accounts___man_male_people_person_beard_thick_beard_broken_glasses_glasses_shirt.png"),backgroundColor: rng,),
                      title: const Text("Rashid Al Maqsood ",style: TextStyle(fontSize: 17,color:Colors.white),),
                      subtitle:Text("Jacket tick-tick kr rhi hai ?",style: TextStyle(fontSize: 13,color: rng),) ,
                      trailing:Text("Yesterday",style: TextStyle(color: rng),),
                    ),
                    ListTile(
                      leading: CircleAvatar(backgroundImage: const NetworkImage("https://cdn2.iconfinder.com/data/icons/female-avatars-4/256/avatars_accounts___woman_female_person_people_sunglasses_necklace_short_hair_earring.png"),backgroundColor: rng,),
                      title: const Text("Vanshika Didi GDG",style: TextStyle(fontSize: 17,color:Colors.white),),
                      subtitle:Text("Daant Khani h ?",style: TextStyle(fontSize: 13,color: rng),) ,
                      trailing:Text("Yesterday",style: TextStyle(color: rng),),
                    ),
                  ],
                ),
              ),
            ),
             ListTile(
                      leading: CircleAvatar(backgroundImage: NetworkImage("https://cdn1.iconfinder.com/data/icons/mockupy/256/2._iPhone_Pro_Vertical_Tapping__Hodling.png",scale: 10),backgroundColor:rng,),
                      title: Text("App Mentoring",style: TextStyle(fontSize: 15,color: Colors.white),),
                      subtitle:Text("Dhruv: Good evening sir....",style: TextStyle(color: Colors.white54)),
                      trailing:IconButton(onPressed: (){}, icon:Icon(Icons.phone,color: Colors.white,)),),
                    ListTile(
                      leading: CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTU0vMJn9NTpca8c7waspkH6MoWdoWDqbEi4BtZxMPqs41YTzdBihpSh8Az5n0ORMQwz5Y&usqp=CAU"),backgroundColor: rng,),
                      title: Text("Farewell",style: TextStyle(fontSize: 15,color: Colors.white),),
                      subtitle: Text("Vaishnavi Didi: Guys monday..",style: TextStyle(color: Colors.white54)) ,
                      trailing:IconButton(onPressed: (){}, icon:Icon(Icons.phone,color: Colors.white,)),),
                    ListTile(
                      leading: CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTU0vMJn9NTpca8c7waspkH6MoWdoWDqbEi4BtZxMPqs41YTzdBihpSh8Az5n0ORMQwz5Y&usqp=CAU"),backgroundColor: rng,),
                      title: Text("Farewell",style: TextStyle(fontSize: 15,color: Colors.white),),
                      subtitle: Text("Vaishnavi Didi: Guys monday..",style: TextStyle(color: Colors.white54)) ,
                      trailing:IconButton(onPressed: (){}, icon:Icon(Icons.phone,color: Colors.white,)),),
 */

/*

 */