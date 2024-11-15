import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      'Starred Messages',
      'Payments',
      'Settings'
    ];

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
      Icon(Icons.call, color: Colors.white70),
      Icon(Icons.call, color: Colors.white70),
      Icon(Icons.phone_missed, color: Colors.redAccent),
      Icon(Icons.call, color: Colors.white70),
      Icon(Icons.missed_video_call_rounded, color: Colors.redAccent),
      Icon(Icons.video_call, color: Colors.white70),
      Icon(Icons.call, color: Colors.white70),
      Icon(Icons.call, color: Colors.white70),
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
                    style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w400),
                  ),
                );
              },
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
                    style: TextStyle(color: color),
                  ),
                  subtitle: Text(arrSubtitle[index], style: TextStyle(color: Colors.grey)),
                  trailing: arrTrailing[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
