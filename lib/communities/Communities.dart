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

                    ListTile(
                      leading: CircleAvatar(backgroundImage: NetworkImage("https://as1.ftcdn.net/v2/jpg/09/66/02/54/1000_F_966025484_SVFZJ9vLSNFYxPyG013LUIBA1ygWGgT6.jpg"),backgroundColor:rng,),
                      title: Text("Sameeksha",style: TextStyle(fontSize: 15,color: Colors.red),),
                      subtitle: Row(children: [FaIcon(FontAwesomeIcons.arrowDown,size: 14,color: Colors.red,),SizedBox(width: scrw*0.03,), Text("Today 12:45 am",style: TextStyle(color: Colors.white54),)],),
                      trailing:IconButton(onPressed: (){}, icon:Icon(Icons.phone,color: Colors.white,)),),
                    ListTile(
                      leading: CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTU0vMJn9NTpca8c7waspkH6MoWdoWDqbEi4BtZxMPqs41YTzdBihpSh8Az5n0ORMQwz5Y&usqp=CAU"),backgroundColor: rng,),
                      title: Text("App Mentoring",style: TextStyle(fontSize: 15,color: color),),
                      subtitle:Row(children: [FaIcon(FontAwesomeIcons.arrowDown,size: 14,color: color,),SizedBox(width: scrw*0.03,), Text("Today 12:45 am",style: TextStyle(color: Colors.white54),)],) ,
                      trailing:IconButton(onPressed: (){}, icon:Icon(Icons.phone,color: Colors.white,)),),
                    ListTile(
                      leading: CircleAvatar(backgroundImage: NetworkImage("https://cdn2.iconfinder.com/data/icons/male-avatars/256/avatars_accounts___man_male_people_person_hat_cap_baseball_cap_necklace_shirtless.png"),backgroundColor: rng,),
                      title: Text("Kartik",style: TextStyle(fontSize: 15,color: color),),
                      subtitle:Row(children: [FaIcon(FontAwesomeIcons.arrowDown,size: 14,color: color,),SizedBox(width: scrw*0.03,), Text("Today 12:45 am",style: TextStyle(color: Colors.white54),)],),
                      trailing:IconButton(onPressed: (){}, icon:Icon(Icons.phone,color: Colors.white,)),),
                    ListTile(
                      leading: CircleAvatar(backgroundImage: NetworkImage("https://cdn2.iconfinder.com/data/icons/male-avatars/256/avatars_accounts___man_male_people_person_turtleneck_expression_emotion.png"),backgroundColor: rng,),
                      title: Text("Pinokio",style: TextStyle(fontSize: 15,color: Colors.white),),
                      subtitle:Row(children: [FaIcon(FontAwesomeIcons.arrowUp,size: 14,color: color,),SizedBox(width: scrw*0.03,), Text("Today 12:45 am",style: TextStyle(color: Colors.white54),)],),
                      trailing:IconButton(onPressed: (){}, icon:Icon(Icons.phone,color: Colors.white,)),),
                    ListTile(
                      leading: CircleAvatar(backgroundImage: NetworkImage("https://as1.ftcdn.net/v2/jpg/09/66/02/54/1000_F_966025484_SVFZJ9vLSNFYxPyG013LUIBA1ygWGgT6.jpg"),backgroundColor:rng,),
                      title: Text("Sameeksha",style: TextStyle(fontSize: 15,color: Colors.red),),
                      subtitle: Row(children: [FaIcon(FontAwesomeIcons.arrowDown,size: 14,color: Colors.red,),SizedBox(width: scrw*0.03,), Text("Today 12:45 am",style: TextStyle(color: Colors.white54),)],),
                      trailing:IconButton(onPressed: (){}, icon:Icon(Icons.phone,color: Colors.white,)),),
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
