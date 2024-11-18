import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:whatsapp/Chats/Chats.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    var scrw = MediaQuery.of(context).size.width;
    var scrh = MediaQuery.of(context).size.height;

    var arrme = [
      CircleAvatar(
        radius: 35,
        backgroundImage: NetworkImage(
            "https://images.unsplash.com/photo-1491555103944-7c647fd857e6?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"
        ),
        backgroundColor: Colors.brown,
      )
    ];

    var arrlead = [
      Icon(Icons.vpn_key_outlined, color: Colors.white54, size: 20),
      Icon(Icons.lock_outline, color: Colors.white54, size: 20),
      FaIcon(FontAwesomeIcons.userAstronaut, color: Colors.white54, size: 20),
      FaIcon(FontAwesomeIcons.contactBook, color: Colors.white54, size: 20),
      FaIcon(FontAwesomeIcons.message, color: Colors.white54, size: 20),
      FaIcon(FontAwesomeIcons.bell, color: Colors.white54, size: 20),
      FaIcon(FontAwesomeIcons.circle, color: Colors.white54, size: 20),
      FaIcon(FontAwesomeIcons.globe, color: Colors.white54, size: 20),
      FaIcon(FontAwesomeIcons.questionCircle, color: Colors.white54, size: 20)
    ];

    var arrtitle = [
      'Account', 'Privacy', 'Avatar', 'Lists', 'Chats', 'Notifications', 'Storage and data', 'App language', 'Help'
    ];

    var arrsubt = [
      'Security notifications, change number',
      'Block contact, disappearing messages',
      'Create, edit, profile photo',
      'Manage people and groups',
      'Theme, wallpapers, chat history',
      'Message, group & call tones',
      'Network usage, auto-download',
      "English (device's language)",
      'Help center, contact us, privacy policy'
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff0B1014),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) => Chats(),
              ),
            );
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: Text(
          "Settings",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: FaIcon(
              FontAwesomeIcons.search,
              size: 18,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          border: Border(top: BorderSide(color: Colors.white, width: 0.1)),
          color: const Color(0xff0B1014),
        ),
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border(bottom: BorderSide(color: Colors.white, width: 0.1))
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: ListTile(
                  leading: arrme[0],
                  title: Text(
                    "Love Raj",
                    style: TextStyle(fontWeight: FontWeight.w200, fontSize: 20, color: Colors.white),
                  ),
                  subtitle: Row(
                    children: [
                      Text("Get Set Fly", style: TextStyle(fontWeight: FontWeight.w200, fontSize: 13, color: Colors.white54)),
                      SizedBox(width: 4),
                      Container(
                        height: 20,
                        width: 20,
                        child: Image.network(
                          "https://cdn3.iconfinder.com/data/icons/leto-space/64/__rocket_spaceship-256.png",
                          fit: BoxFit.cover, // Ensures proper image scaling
                        ),
                      ),
                    ],
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.qr_code, color: Color(0xff60c054)),
                      SizedBox(width: scrw * 0.05),
                      Icon(Icons.add_circle_outline_rounded, color: Color(0xff60c054)),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: arrlead.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: arrlead[index],
                    title: Text(
                      arrtitle[index],
                      style: TextStyle(color: Colors.white70, fontWeight: FontWeight.w300),
                    ),
                    subtitle: Text(
                      arrsubt[index],
                      style: TextStyle(color: Colors.white38, fontWeight: FontWeight.w200),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:10),
              child: ListTile(
                leading: Icon(Icons.people_alt_outlined,color: Colors.white54,),
                title: Text("Invite Friend",style: TextStyle(color: Colors.white54,),),
              ),
            ),

            Padding(
              padding:const EdgeInsets.only(left: 10, right: 10,top: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left:17),
                    child: Text("Also from Meta",style: TextStyle(color: Colors.white54,fontWeight: FontWeight.w300),),
                  ),
                  ListView(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    children: [
                      ListTile(
                        leading: FaIcon(FontAwesomeIcons.instagram,color: Colors.white54,),
                        title: Text("Open Instagram",style: TextStyle(color: Colors.white54,),),
                      ),
                      ListTile(
                        leading: FaIcon(FontAwesomeIcons.facebookSquare,color: Colors.white54,),
                        title: Text("Open Facebook",style: TextStyle(color: Colors.white54,),),
                      ),
                      ListTile(
                        leading: FaIcon(FontAwesomeIcons.threads,color: Colors.white54,),
                        title: Text("Open Threads",style: TextStyle(color: Colors.white54,),),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
