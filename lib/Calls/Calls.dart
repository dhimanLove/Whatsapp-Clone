import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:get/get.dart';
import 'package:whatsapp/Calls/Selectcalls.dart';
import 'package:whatsapp/chats/Settings.dart';

class Calls extends StatelessWidget {
  const Calls({super.key});

  // Function to make a phone call
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri url = Uri.parse("tel:$phoneNumber");
    if (await canLaunchUrl(url)) {
      await launchUrl(url);
    } else {
      throw "Could not launch $url";
    }
  }

  @override
  Widget build(BuildContext context) {
    // Drawer menu items
    const List<String> arrDrawer = [
      'Clear call logs',
      'Settings',
    ];

    // Call log data
    final List<Map<String, dynamic>> callLogs = [
      {
        'leading': const CircleAvatar(
          backgroundImage: NetworkImage(
              "https://cdn2.iconfinder.com/data/icons/famous-people-2/256/Princess_Diana.png"),
          backgroundColor: Colors.transparent,
        ),
        'name': 'Sameeksha',
        'subtitle': 'Today',
        'trailing': GestureDetector(
          child: const Icon(Icons.call, color: Colors.white70),
          onTap: () => _makePhoneCall("8053645063"),
        ),
        'titleColor': Colors.white,
      },
      {
        'leading': const CircleAvatar(
          backgroundImage: NetworkImage(
              "https://cdn2.iconfinder.com/data/icons/male-avatars/256/avatars_accounts___man_male_people_person_hoodie_boy_child.png"),
          backgroundColor: Colors.transparent,
        ),
        'name': 'Papa',
        'subtitle': 'Yesterday',
        'trailing': GestureDetector(
          child: const Icon(Icons.call, color: Color(0xB3DDDBDB)),
          onTap: () => _makePhoneCall("9876543210"),
        ),
        'titleColor': Colors.white,
      },
      {
        'leading': const CircleAvatar(
          backgroundImage: NetworkImage(
              "https://cdn2.iconfinder.com/data/icons/male-avatars/256/avatars_accounts___man_male_people_person_shirt_hairstyle.png"),
          backgroundColor: Colors.transparent,
        ),
        'name': 'Dhruv',
        'subtitle': '13/11/2024',
        'trailing': GestureDetector(
          child: const Icon(Icons.phone_missed, color: Colors.redAccent),
          onTap: () => _makePhoneCall("9876543210"),
        ),
        'titleColor': Colors.red,
      },
      {
        'leading': const CircleAvatar(
          backgroundImage: NetworkImage(
              "https://cdn2.iconfinder.com/data/icons/male-avatars/512/avatars_accounts___man_male_people_person_scarf.png"),
          backgroundColor: Colors.transparent,
        ),
        'name': 'Kartik',
        'subtitle': '12/11/2024',
        'trailing': GestureDetector(
          child: const Icon(Icons.call, color: Colors.white70),
          onTap: () => _makePhoneCall("9876543210"),
        ),
        'titleColor': Colors.white,
      },
      {
        'leading': const CircleAvatar(
          backgroundImage: NetworkImage(
              "https://cdn2.iconfinder.com/data/icons/male-avatars/256/avatars_accounts___man_male_people_person_cowboy_hat.png"),
          backgroundColor: Colors.transparent,
        ),
        'name': 'Yash',
        'subtitle': '5/11/2024',
        'trailing': GestureDetector(
          child: const Icon(Icons.missed_video_call_rounded,
              color: Colors.redAccent),
          onTap: () => _makePhoneCall("9876543210"),
        ),
        'titleColor': Colors.red,
      },
      {
        'leading': const CircleAvatar(
          backgroundImage: NetworkImage(
              "https://cdn2.iconfinder.com/data/icons/male-avatars/256/avatars_accounts___man_male_people_person_turtleneck_sunglasses_beard_wavy_hair.png"),
          backgroundColor: Colors.transparent,
        ),
        'name': 'Tinku Jiya',
        'subtitle': '1/10/2024',
        'trailing': GestureDetector(
          child: const Icon(Icons.video_call, color: Colors.white70),
          onTap: () => _makePhoneCall("9876543210"),
        ),
        'titleColor': Colors.white,
      },
      {
        'leading': const CircleAvatar(
          backgroundImage: NetworkImage(
              "https://cdn2.iconfinder.com/data/icons/male-avatars/256/avatars_accounts___man_male_people_person_hat_cap_baseball_cap_necklace_shirtless.png"),
          backgroundColor: Colors.transparent,
        ),
        'name': 'Project wala',
        'subtitle': '19/10/2024',
        'trailing': GestureDetector(
          child: const Icon(Icons.call, color: Colors.white70),
          onTap: () => _makePhoneCall("9876543210"),
        ),
        'titleColor': Colors.white,
      },
      {
        'leading': const CircleAvatar(
          backgroundImage: NetworkImage(
              "https://cdn2.iconfinder.com/data/icons/male-avatars/256/avatars_accounts___man_male_people_person_broken_glasses_thick_beard_beard_tie_shirt_glasses.png"),
          backgroundColor: Colors.transparent,
        ),
        'name': 'Maqsood',
        'subtitle': '1/01/2024',
        'trailing': GestureDetector(
          child: const Icon(Icons.call, color: Colors.white70),
          onTap: () => _makePhoneCall("9876543210"),
        ),
        'titleColor': Colors.white,
      },
    ];

    // Screen dimensions
    final double scrw = MediaQuery.of(context).size.width;
    final double scrh = MediaQuery.of(context).size.height;

    // Colors
    final Color color = Colors.grey[300]!;

    return Scaffold(
      backgroundColor: const Color(0xff0B1014),
      appBar: AppBar(
        backgroundColor: const Color(0xff0B1014),
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
            icon: const Icon(Icons.qr_code),
            color: color,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
            color: color,
          ),
          PopupMenuButton<String>(
            icon: const Icon(Icons.more_vert, color: Colors.white),
            onSelected: (String value) {
              if (value == 'Settings') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Settings()),
                );
              } else if (value == 'Clear call logs') {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return Dialog(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Container(
                        width: 300,
                        height: scrh * 0.17,
                        decoration: BoxDecoration(
                          color: const Color(0xff2e3638),
                          borderRadius: BorderRadius.circular(26),
                        ),
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 22, vertical: 18),
                              child: Text(
                                "Do you want to clear your entire call logs?",
                                style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w200,
                                ),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text(
                                    "Cancel",
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.w200,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                    // Add clear logic here if needed
                                  },
                                  child: const Text(
                                    "OK",
                                    style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.w200,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              }
            },
            itemBuilder: (BuildContext context) {
              return arrDrawer.map((String choice) {
                return PopupMenuItem<String>(
                  value: choice,
                  child: Text(
                    choice,
                    style: const TextStyle(color: Colors.white),
                  ),
                );
              }).toList();
            },
            color: const Color(0xff171e1e),
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(
          decelerationRate: ScrollDecelerationRate.fast
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Favourites Section
            const Padding(
              padding: EdgeInsets.only(left: 16, top: 16),
              child: Text(
                "Favourites",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            const SizedBox(height: 20),
           ListTile(
              leading: Container(
                height: scrh * 0.05,
                width: scrh * 0.05,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Center(
                  child: FaIcon(
                    FontAwesomeIcons.solidHeart,
                    color: Colors.black,
                  ),
                ),
              ),
              title: const Text(
                "Add Favourite",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),

            // Recents Section
            const Padding(
              padding: EdgeInsets.only(left: 16, top: 20),
              child: Text(
                "Recents",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: callLogs.length,
              itemBuilder: (context, index) {
                final item = callLogs[index];
                return ListTile(
                  leading: item['leading'],
                  title: Text(
                    item['name'],
                    style: TextStyle(
                        color: item['titleColor'], fontWeight: FontWeight.w200),
                  ),
                  subtitle: Text(
                    item['subtitle'],
                    style: const TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w200),
                  ),
                  trailing: item['trailing'],
                );
              },
            ),

            // Bottom padding to ensure last item is visible
            SizedBox(height: scrh * 0.1),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        onPressed: () {
          Get.to(ContactUI());
        },
        child: const Icon(
          Icons.add_ic_call_rounded,
          color: Colors.black,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}