import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gradient_icon/gradient_icon.dart';
//import 'package:google_fonts/google_fonts.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    var scrh=MediaQuery.of(context).size.height;
    var scrw=MediaQuery.of(context).size.width;
    var color = Color(0xc3d5d5d5);
    var rng = Color(0xc3919191);
    var colr =Color(0xffEFEFEF);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0B1014),
        title: Text(
          'WhatsApp',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color:Colors.white,
          ),
          textAlign: TextAlign.left,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.photo_camera_outlined),
            color:Colors.white,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_vert),
            color:Colors.white,
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(color:Color(0xff0B1014)),
        child: Column(
          children: [
            Container(
              height: scrh*.066,
              width: scrw*.90,
              decoration: BoxDecoration(color:Colors.white24,borderRadius: BorderRadius.circular(40)),
              child: Row(
                children: [
                  SizedBox(width: 20,),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 16),
                    child: GradientIcon(
                      icon: Icons.circle_outlined,
                      gradient: LinearGradient(
                        colors: [Colors.deepPurpleAccent,Colors.deepPurple, Colors.blue,Colors.cyan],
                        begin: Alignment.centerLeft,
                        end: Alignment.bottomRight,
                      ),
                      size: 30,
                    ),
                  ),
                  SizedBox(width: 20,),
                  Text("Ask anything or Search..",style: TextStyle(fontSize: 18,color:color),)
                  //Text("Search...",style: TextStyle(fontSize: 20),),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left:2, right: 2),
                child: ListView(
                  children: [
                    ListTile(
                    leading: CircleAvatar(backgroundImage: NetworkImage("https://cdn2.iconfinder.com/data/icons/male-avatars/256/avatars_accounts___man_male_people_person_turtleneck_expression_emotion.png"),backgroundColor: rng,),
                    title: Text("Me",style: TextStyle(fontSize: 17,color:Colors.white),),
                    subtitle:Row(
                      children: [FaIcon(FontAwesomeIcons.video,size: 13,color: rng,),SizedBox(width: scrw*0.02,),Text("Video",style:TextStyle(color:rng,),)],
                    ),
                    trailing:Text("12:17 pm",style: TextStyle(color: rng)),
                  ),
                    ListTile(
                      leading: CircleAvatar(backgroundImage: NetworkImage("https://as1.ftcdn.net/v2/jpg/09/66/02/54/1000_F_966025484_SVFZJ9vLSNFYxPyG013LUIBA1ygWGgT6.jpg"),backgroundColor:rng,),
                      title: Text("Sameeksha",style: TextStyle(fontSize: 17,color:Colors.white),),
                      subtitle:Text("Let's Go for the Concert",style: TextStyle(fontSize: 13,color:rng),) ,
                      trailing:Text("11:10 pm",style: TextStyle(color: rng),),
                    ),
                    ListTile(
                      leading: CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTU0vMJn9NTpca8c7waspkH6MoWdoWDqbEi4BtZxMPqs41YTzdBihpSh8Az5n0ORMQwz5Y&usqp=CAU"),backgroundColor: rng,),
                      title: Text("App Mentoring",style: TextStyle(fontSize: 17,color:Colors.white),),
                      subtitle:Text("Krish : Meeting kab h sir ?",style: TextStyle(fontSize: 13,color: rng),) ,
                      trailing:Text("10:17 am",style: TextStyle(color: rng),),
                    ),
                    ListTile(
                      leading: CircleAvatar(backgroundImage: NetworkImage("https://cdn2.iconfinder.com/data/icons/male-avatars/256/avatars_accounts___man_male_people_person_hat_cap_baseball_cap_necklace_shirtless.png"),backgroundColor: rng,),
                      title: Text("Kartik",style: TextStyle(fontSize: 17,color:Colors.white),),
                      subtitle:Text("Chal Bahr chlte hai !!",style: TextStyle(fontSize: 13,color: rng),) ,
                      trailing:Text("10:16 am",style: TextStyle(color: rng),),),
                    ListTile(
                      leading: CircleAvatar(backgroundImage: NetworkImage("https://cdn2.iconfinder.com/data/icons/male-avatars/256/avatars_accounts___man_male_people_person_shirt_headphone_headset_music_listen.png"),backgroundColor: rng,),
                      title: Text("Krish",style: TextStyle(fontSize: 17,color:Colors.white),),
                      subtitle:Text("Bhandara Khane Chlega ?",style: TextStyle(fontSize: 13,color: rng),) ,
                      trailing:Text("Yesterday",style: TextStyle(color: rng),),),
                    ListTile(
                      leading: CircleAvatar(backgroundImage: NetworkImage("https://cdn2.iconfinder.com/data/icons/male-avatars/512/avatars_accounts___man_male_people_person_shirt_formal_office_tie.png"),backgroundColor: rng,),
                      title: Text("Ajay Bhaiya GDG",style: TextStyle(fontSize: 17,color:Colors.white),),
                      subtitle:Text("Progress Dikhao Loveraj.. ",style: TextStyle(fontSize: 13,color: rng),) ,
                      trailing:Text("Yesterday",style: TextStyle(color: rng),),
                    ),
                    ListTile(
                      leading: CircleAvatar(backgroundImage: NetworkImage("https://cdn2.iconfinder.com/data/icons/male-avatars/256/avatars_accounts___man_male_people_person_sunglasses_curly_hair_fashion_style.png"),backgroundColor: rng,),
                      title: Text("Kartik Bhaiya GDG",style: TextStyle(fontSize: 17,color:Colors.white),),
                      subtitle:Text("Awaz ni a rahi ??",style: TextStyle(fontSize: 13,color: rng),) ,
                      trailing:Text("Yesterday",style: TextStyle(color: rng),),
                    ),
                    ListTile(
                      leading: CircleAvatar(backgroundImage: NetworkImage("https://cdn2.iconfinder.com/data/icons/male-avatars/256/avatars_accounts___man_male_people_person_broken_glasses_glasses_curly_hair_sweater.png"),backgroundColor: rng,),
                      title: Text("Parag Bhaiya GDG",style: TextStyle(fontSize: 17,color:Colors.white),),
                      subtitle:Text("Join the Meet Fast !",style: TextStyle(fontSize: 13,color: rng),) ,
                      trailing:Text("Yesterday",style: TextStyle(color: rng),),
                    ),
                    ListTile(
                      leading: CircleAvatar(backgroundImage: NetworkImage("https://cdn2.iconfinder.com/data/icons/male-avatars/256/avatars_accounts___man_male_people_person_beard_thick_beard_broken_glasses_glasses_shirt.png"),backgroundColor: rng,),
                      title: Text("Rashid Al Maqsood ",style: TextStyle(fontSize: 17,color:Colors.white),),
                      subtitle:Text("Jacket tick-tick kr rhi hai ?",style: TextStyle(fontSize: 13,color: rng),) ,
                      trailing:Text("Yesterday",style: TextStyle(color: rng),),
                    ),
                    ListTile(
                      leading: CircleAvatar(backgroundImage: NetworkImage("https://cdn2.iconfinder.com/data/icons/female-avatars-4/256/avatars_accounts___woman_female_person_people_sunglasses_necklace_short_hair_earring.png"),backgroundColor: rng,),
                      title: Text("Vanshika Didi GDG",style: TextStyle(fontSize: 17,color:Colors.white),),
                      subtitle:Text("Daant Khani h ?",style: TextStyle(fontSize: 13,color: rng),) ,
                      trailing:Text("Yesterday",style: TextStyle(color: rng),),
                    ),
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