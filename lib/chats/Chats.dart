import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gradient_icon/gradient_icon.dart';

class Chats extends StatefulWidget {
  const Chats({super.key});

  @override
  State<Chats> createState() => _ChatsState();
}

class _ChatsState extends State<Chats> {
  @override
  Widget build(BuildContext context) {
    List <String> arrdrawer=['New Group','New Broadcast','Linked devices','Starred Messages','Payments','Settings'];
    var arrLeading = [
      CircleAvatar(backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTU0vMJn9NTpca8c7waspkH6MoWdoWDqbEi4BtZxMPqs41YTzdBihpSh8Az5n0ORMQwz5Y&usqp=CAU"), backgroundColor: Colors.transparent),
      CircleAvatar(backgroundImage: NetworkImage("https://cdn2.iconfinder.com/data/icons/male-avatars/256/avatars_accounts___man_male_people_person_turbin_culture.png"), backgroundColor: Colors.transparent),
      CircleAvatar(backgroundImage: NetworkImage("https://cdn2.iconfinder.com/data/icons/male-avatars/256/avatars_accounts___man_male_people_person_hoodie_boy_child.png"), backgroundColor: Colors.transparent),
      CircleAvatar(backgroundImage: NetworkImage("https://cdn2.iconfinder.com/data/icons/male-avatars/256/avatars_accounts___man_male_people_person_shirt_hairstyle.png"), backgroundColor: Colors.transparent),
      CircleAvatar(backgroundImage: NetworkImage("https://cdn2.iconfinder.com/data/icons/male-avatars/512/avatars_accounts___man_male_people_person_scarf.png"), backgroundColor: Colors.transparent),
      CircleAvatar(backgroundImage: NetworkImage("https://cdn2.iconfinder.com/data/icons/male-avatars/256/avatars_accounts___man_male_people_person_cowboy_hat.png"), backgroundColor: Colors.transparent),
      CircleAvatar(backgroundImage: NetworkImage("https://cdn2.iconfinder.com/data/icons/male-avatars/256/avatars_accounts___man_male_people_person_turtleneck_sunglasses_beard_wavy_hair.png"), backgroundColor: Colors.transparent),
      CircleAvatar(backgroundImage: NetworkImage("https://cdn2.iconfinder.com/data/icons/male-avatars/256/avatars_accounts___man_male_people_person_hat_cap_baseball_cap_necklace_shirtless.png"), backgroundColor: Colors.transparent),
      CircleAvatar(backgroundImage: NetworkImage("https://cdn2.iconfinder.com/data/icons/male-avatars/256/avatars_accounts___man_male_people_person_hat_cap_baseball_cap_necklace_shirtless.png"), backgroundColor: Colors.transparent),

    ];

    var arrNames = ['App Mentoring','Sukhi', 'Kartik', 'Dhruv', 'Kungsu', 'Ajay Bhaiya GDG', 'Tinku Jiya', 'Project wala','Project wala'];
    var arrSubtitle = ["You: Meeting kab h sir ?","Praa Friday hai...","Bahr chalte hai ", "Join the Meet Fast !", "Awaz bnd kr !", "Progress Dikhao Loveraj.. ", "Jacket tick-tick kr rhi hai ?", "Chal Bahr chlte hai !!","Chal Bahr chlte hai !!"];
    var arrTrailing = ["10:17 am", '11:10 pm', '12:17 pm', 'Yesterday', '12/11/2024', '11/11/2024', '19/10/2024', '2/02/2024','1/01/2024'];

    var scrh = MediaQuery.of(context).size.height;
    var scrw = MediaQuery.of(context).size.width;
    var color = const Color(0xc3d5d5d5);
    var rng = const Color(0xc3919191);
    var colr = const Color(0xffEFEFEF);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff0B1014),
        title: const Text(
          'WhatsApp',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
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
      endDrawer:
      Padding(
        padding: const EdgeInsets.only(top:70),
        child: Align(
          alignment: Alignment.topRight,
          child: Container(
            width: scrw * 0.5,
            height: scrh * 0.36,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xff171e1e),
            ),
            child: ListView.builder(
              itemCount: arrdrawer.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    arrdrawer[index],
                    style: TextStyle(color: Colors.white70,fontWeight: FontWeight.w400), // You can replace Colors.blue with any color you like
                  ),
                );
              },
            ),
          ),
        ),
      ),

      body: Container(
        decoration: const BoxDecoration(color: Color(0xff0B1014)),
        child: Column(
          children: [
            Container(
              height: scrh * .06,
              width: scrw * .90,
              decoration: BoxDecoration(color: Colors.white24, borderRadius: BorderRadius.circular(40)),
              child: Row(
                children: [
                  const SizedBox(width: 20),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 16),
                    child: Row(
                      children: [
                        GradientIcon(
                          icon: Icons.circle_outlined,
                          gradient: LinearGradient(
                            colors: [Colors.deepPurpleAccent, Colors.deepPurple, Colors.blue, Colors.cyan],
                            begin: Alignment.centerLeft,
                            end: Alignment.bottomRight,
                          ),
                          size: 25,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 13,left: 10),
                          child: Text("Ask Meta AI",style: TextStyle(fontSize: 17,color:Colors.white60 ,fontWeight: FontWeight.w400,),),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: arrNames.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: arrLeading[index],
                    title: Text(arrNames[index], style: TextStyle(color: colr)),
                    subtitle: Text(arrSubtitle[index], style: TextStyle(color: rng)),
                    trailing: Text(arrTrailing[index], style: TextStyle(color: color)),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
