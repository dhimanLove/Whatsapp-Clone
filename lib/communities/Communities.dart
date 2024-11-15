import 'package:flutter/material.dart';

class Community extends StatefulWidget {
  const Community({super.key});

  @override
  State<Community> createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  @override
  Widget build(BuildContext context) {
    List<String> arrDrawer = [
      'New Group',
      'New Broadcast',
      'Linked devices',
      'Starred Messages',
      'Payments',
      'Settings'
    ];
    var arr1 = [
      CircleAvatar(
        backgroundImage: NetworkImage(
            "https://undergrad.cs.umd.edu/sites/undergrad.cs.umd.edu/files/GDSC_Logo_White_Background_0.png"),
      ),
      CircleAvatar(
        backgroundImage: NetworkImage(
            "https://images.unsplash.com/photo-1685062428479-e310b7851de5?q=80&w=1780&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
      ),
      CircleAvatar(
        backgroundImage: NetworkImage(
            "https://cdn0.iconfinder.com/data/icons/3d-learning-and-education-illustrations-set/256/Discussion.png"),backgroundColor: Colors.white38,
      )
    ];
    var arr2 = ['Unofficial', 'Dance', 'General'];
    var arr3 = ['Meet at 9:30', 'Submit the tasks', 'Krish 123445...'];
    var arr4 = ['9:30 pm', '4:45 pm', '2:10 pm'];

    var arrim=[CircleAvatar(
      backgroundImage: NetworkImage(
          "https://images.unsplash.com/photo-1673229266976-dc96966314fb?q=80&w=1854&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
    ),];

    var arrLead = [

      CircleAvatar(
        backgroundImage: NetworkImage(
            "https://cdn2.iconfinder.com/data/icons/famous-people-2/512/Mahatma_Gandhi.png"),backgroundColor: Colors.transparent,
      ),
      CircleAvatar(
        backgroundImage: NetworkImage(
            "https://cdn1.iconfinder.com/data/icons/food-1372/256/orange_fruit_citrus_healthy_vitamin_C_nutrition_fresh.png"),backgroundColor: Colors.transparent,
      ),
      CircleAvatar(
        backgroundImage: NetworkImage(
            "https://undergrad.cs.umd.edu/sites/undergrad.cs.umd.edu/files/GDSC_Logo_White_Background_0.png"),
      ),
    ];
    var arrTitle = ['Gandhiji Ki Yojna', 'Santra Khalo', 'Batcheet'];
    var arrSub = ['Meet at 9:30...', 'Santre - 12 Rs/Kg lo...', 'You : Kaise ho Sab...'];
    var arrTrail = ['9:30 pm', '4:45 pm', '2:10 pm'];

    var scrH = MediaQuery.of(context).size.height;
    var scrW = MediaQuery.of(context).size.width;
    var color = Color(0xc3d5d5d5);
    var rng = Color(0xc3919191);
    var colr = Color(0xffEFEFEF);

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
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.photo_camera_outlined),
            color: color,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            color: color,
          ),
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
            width: scrW * 0.5,
            height: scrH * 0.36,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Color(0xff171e1e),
            ),
            child: ListView.builder(
              itemCount: arrDrawer.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    arrDrawer[index],
                    style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(color: Color(0xff0B1014)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 3),
                child: ListView(
                  children: [
                    Container(
                      height: scrH * 0.1,
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.black, width: 8)),
                      ),
                      child: ListTile(
                        leading: Stack(
                          children: [
                            Container(
                              height: scrH * 0.06,
                              width: scrW * 0.14,
                              decoration: BoxDecoration(
                                color: Colors.grey[800], // Dark grey background color similar to the image
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.people, // Main icon
                                  size: 30,
                                  color: Colors.grey[400], // Lighter grey color for icon
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
                                  color: Colors.green, // Green color for the overlay circle
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.add,
                                  size: 12,
                                  color: Colors.white, // White color for "+" symbol
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
                    Padding(
                      padding: const EdgeInsets.only(left: 15, top: 10),
                      child: Text(
                        "Recents",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    Container(
                      height: scrH * 0.1,
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.white54, width: 2)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: ListTile(
                          leading: arr1[0],
                          title: Text(
                            "GDG - Volunteers 2024",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: SizedBox(
                        height: scrH * 0.1,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 8),
                          child: ListTile(
                            leading: Container(
                              height: scrH * 0.05,
                              width: scrW * 0.11,
                              decoration: BoxDecoration(
                                color: Color(0xff1A3A2D),
                                borderRadius: BorderRadius.circular(10),
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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        itemCount: arrTitle.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: arr1[index],
                            title: Text(
                              arr2[index],
                              style: TextStyle(color: Colors.white),
                            ),
                            subtitle: Text(
                              arr3[index],
                              style: TextStyle(color: Colors.grey),
                            ),
                            trailing: Text(
                              arr4[index],
                              style: TextStyle(color: Colors.grey),
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 32,top: 20),
                      child: Row(
                        children: [
                          Icon(
                            Icons.keyboard_arrow_right_sharp,
                            size: 22,
                            color: Colors.white54,
                          ),
                          SizedBox(width: 40,),
                          Text(
                            "View more",
                            style: TextStyle(color: Colors.white60,fontWeight: FontWeight.w300,fontSize: 17),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: scrW * 1, height: scrH * 0.04),
                    Container(
                      height: scrH * 0.1,
                      decoration: BoxDecoration(
                        border: Border(bottom: BorderSide(color: Colors.white54, width: 2)),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: ListTile(
                          leading: arrim[0],
                          title: Text(
                            "General",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10,left: 8),
                      child: SizedBox(
                        height: scrH * 0.1,
                        child: ListTile(
                          leading: Container(
                            height: scrH * 0.05,
                            width: scrW * 0.11,
                            decoration: BoxDecoration(
                              color: Color(0xff1A3A2D),
                              borderRadius: BorderRadius.circular(10),
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
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: ListView.builder(
                        shrinkWrap: true,
                        itemCount: arrTitle.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            leading: arrLead[index],
                            title: Text(
                              arrTitle[index],
                              style: TextStyle(color: Colors.white),
                            ),
                            subtitle: Text(
                              arrSub[index],
                              style: TextStyle(color: Colors.grey),
                            ),
                            trailing: Text(
                              arrTrail[index],
                              style: TextStyle(color: Colors.grey),
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 32,top: 20,bottom: 20),
                      child: Row(
                        children: [
                          Icon(
                            Icons.keyboard_arrow_right_sharp,
                            size: 22,
                            color: Colors.white54,
                          ),
                          SizedBox(width: 40,),
                          Text(
                            "View more",
                            style: TextStyle(color: Colors.white60,fontWeight: FontWeight.w300,fontSize: 17),
                          ),
                        ],
                      ),
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
