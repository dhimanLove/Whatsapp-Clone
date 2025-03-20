import 'package:flutter/material.dart';
import 'package:whatsapp/chats/Settings.dart';

class Community extends StatefulWidget {
  Community({super.key});

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  // Data for the first community section (GDG - Volunteers 2024)
  final List<Map<String, dynamic>> gdgVolunteersData = [
    {
      'leading': CircleAvatar(
        backgroundImage: NetworkImage(
            "https://images.unsplash.com/photo-1673229266976-dc96966314fb?q=80&w=1854&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
      ),
      'title': 'Unofficial',
      'subtitle': 'Meet at 9:30',
      'trailing': '9:30 pm',
    },
    {
      'leading': CircleAvatar(
        backgroundImage: NetworkImage(
            "https://images.unsplash.com/photo-1709884735626-63e92727d8b6?q=80&w=928&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
      ),
      'title': 'App Mentoring',
      'subtitle': 'Submit the tasks',
      'trailing': '4:45 pm',
    },
  ];

  // Data for the second community section (General)
  final List<Map<String, dynamic>> generalData = [
    {
      'leading': CircleAvatar(
        backgroundImage: NetworkImage(
            "https://cdn2.iconfinder.com/data/icons/famous-people-2/512/Mahatma_Gandhi.png"),
        backgroundColor: Colors.transparent,
      ),
      'title': 'Gandhiji Ki Yojna',
      'subtitle': 'Meet at 9:30...',
      'trailing': '9:30 pm',
    },
    {
      'leading': CircleAvatar(
        backgroundImage: NetworkImage(
            "https://cdn1.iconfinder.com/data/icons/food-1372/256/orange_fruit_citrus_healthy_vitamin_C_nutrition_fresh.png"),
        backgroundColor: Colors.transparent,
      ),
      'title': 'Santra Khalo',
      'subtitle': 'Santre - 12 Rs/Kg lo...',
      'trailing': '4:45 pm',
    },
  ];

  @override
  Widget build(BuildContext context) {
    // Drawer menu items
    List<String> arrDrawer = [
      'Settings'
    ];

    // Screen dimensions
    final double scrH = MediaQuery.of(context).size.height;
    final double scrW = MediaQuery.of(context).size.width;

    // Colors
    Color color = Color(0xc3d5d5d5);
    Color rng = Color(0xc3919191);
    Color colr = Color(0xffEFEFEF);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff0B1014),
        title: Text(
          'Communities',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.qr_code),
            color: colr,
          ),
          PopupMenuButton(
            icon: Icon(Icons.more_vert, color: Colors.white),
            onSelected: (String value) {
              if (value == 'Settings') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Settings()),
                );
              }
              // Add navigation for other menu items if needed
            },
            itemBuilder: (BuildContext context) {
              return arrDrawer.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(
                    choice,
                    style: TextStyle(color: Colors.white),
                  ),
                );
              }).toList();
            },
            color: Color(0xff171e1e),
          ),
        ],
      ),
      body: Container(
        decoration: BoxDecoration(color: Color(0xff0B1014)),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 3),
            child: Column(
              children: [
                // New Community Section
                Container(
                  height: scrH * 0.1,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.black, width: 8),
                    ),
                  ),
                  child: ListTile(
                    leading: Stack(
                      children: [
                        Container(
                          height: scrH * 0.06,
                          width: scrW * 0.14,
                          decoration: BoxDecoration(
                            color: Colors.grey[800],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.people,
                              size: 30,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 2,
                          right: 2,
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
                        ),
                      ],
                    ),
                    title: Text(
                      "New Community",
                      style: TextStyle(fontSize: 23, color: Colors.white),
                    ),
                  ),
                ),

                // GDG - Volunteers 2024 Section
                Container(
                  height: scrH * 0.1,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.white24, width: 0.3),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: ListTile(
                      leading: Container(
                        height: scrH * 0.06,
                        width: scrW * 0.14,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.red,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.network(
                            "https://undergrad.cs.umd.edu/sites/undergrad.cs.umd.edu/files/GDSC_Logo_White_Background_0.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      title: Text(
                        "GDG - Volunteers 2024",
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.w300),
                      ),
                    ),
                  ),
                ),

                // Announcements for GDG - Volunteers
                Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: SizedBox(
                    height: scrH * 0.1,
                    child: Padding(
                      padding:
                      EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      child: ListTile(
                        leading:  Container(
                          height: scrH * 0.05,
                          width: scrW * 0.11,
                          decoration: BoxDecoration(
                              color: Color(0xff1A3A2D),
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Icon(
                            Icons.campaign,
                            color: Color(0xFFA5D6A7),
                          ),
                        ),
                        title: Text(
                          "Announcements",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ),

                // Chat List for GDG - Volunteers
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: gdgVolunteersData.length,
                    itemBuilder: (context, index) {
                      final item = gdgVolunteersData[index];
                      return ListTile(
                        leading: item['leading'],
                        title: Text(
                          item['title'],
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w200),
                        ),
                        subtitle: Text(
                          item['subtitle'],
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w200),
                        ),
                        trailing: Text(
                          item['trailing'],
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w200),
                        ),
                      );
                    },
                  ),
                ),

                // View More for GDG - Volunteers
                Padding(
                  padding: EdgeInsets.only(left: 32, top: 20),
                  child: Row(
                    children: [
                      Icon(
                        Icons.keyboard_arrow_right_sharp,
                        size: 22,
                        color: Colors.white54,
                      ),
                      SizedBox(width: 40),
                      Text(
                        "View more",
                        style: TextStyle(
                            color: Colors.white60,
                            fontWeight: FontWeight.w300,
                            fontSize: 17),
                      ),
                    ],
                  ),
                ),

                // Divider
                Padding(
                  padding: EdgeInsets.only(top: 17),
                  child: Container(
                    height: scrH * 0.01,
                    width: scrW * 0.8,
                    color: Colors.black,
                  ),
                ),

                // General Section
                Container(
                  height: scrH * 0.089,
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: Colors.white24, width: 0.3),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 2),
                    child: ListTile(
                      leading: Container(
                        height: scrH * 0.06,
                        width: scrW * 0.14,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.red,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(12),
                          child: Image.network(
                            "https://rukminim2.flixcart.com/image/850/1000/l1pc3gw0/poster/a/j/0/small-mahatma-gandhi-photopaper-print-poster-mahatma-gandhi-original-imagd7zgwqceksp8.jpeg?q=90&crop=false",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      title: Text(
                        "General",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ),
                ),

                // Announcements for General
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 8),
                  child: SizedBox(
                    height: scrH * 0.1,
                    child: ListTile(
                      leading: Container(
                        height: scrH * 0.05,
                        width: scrW * 0.11,
                        decoration: BoxDecoration(
                          color: Color(0xff1A3A2D),
                        ),
                        child: Icon(
                          Icons.campaign,
                          color: Color(0xFFA5D6A7),
                        ),
                      ),
                      title: Text(
                        "Announcements",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),

                // Chat List for General
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: generalData.length,
                    itemBuilder: (context, index) {
                      final item = generalData[index];
                      return ListTile(
                        leading: item['leading'],
                        title: Text(
                          item['title'],
                          style: TextStyle(color: Colors.white),
                        ),
                        subtitle: Text(
                          item['subtitle'],
                          style: TextStyle(color: Colors.grey),
                        ),
                        trailing: Text(
                          item['trailing'],
                          style: TextStyle(color: Colors.grey),
                        ),
                      );
                    },
                  ),
                ),

                // View More for General
                Padding(
                  padding: EdgeInsets.only(left: 32, top: 20, bottom: 20),
                  child: Row(
                    children: [
                      Icon(
                        Icons.keyboard_arrow_right_sharp,
                        size: 22,
                        color: Colors.white54,
                      ),
                      SizedBox(width: 40),
                      Text(
                        "View more",
                        style: TextStyle(
                            color: Colors.white60,
                            fontWeight: FontWeight.w300,
                            fontSize: 17),
                      ),
                    ],
                  ),
                ),

                // Bottom padding to ensure last item is visible
                SizedBox(height: scrH * 0.1),
              ],
            ),
          ),
        ),
      ),
    );
  }
}