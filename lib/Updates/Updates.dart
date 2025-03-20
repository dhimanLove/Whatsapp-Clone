import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsapp/Updates/Channels/Explore/Channelsexplore.dart';
import 'package:whatsapp/Updates/Status/Video/Sameekshavid.dart';
import 'package:whatsapp/Updates/Status/Video/Vid3.dart';
import 'package:whatsapp/Updates/Status/Video/vid2.dart';
import 'package:whatsapp/Updates/Status/Video/videofive.dart';
import 'package:whatsapp/Updates/Status/Video/videofour.dart';
import 'package:whatsapp/Updates/edit.dart';
import 'package:whatsapp/Updates/statusprivacy.dart';
import 'package:whatsapp/chats/Settings.dart';
import 'package:whatsapp/searchdelegatee.dart';

class Updates extends StatefulWidget {
  const Updates({super.key});

  @override
  State<Updates> createState() => _UpdatesState();
}

class _UpdatesState extends State<Updates> {
  // Function to take a picture using the camera
  Future<void> _takePicture() async {
    final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: ImageSource.camera);

    if (image != null) {
      setState(() {
        // Add logic to store or use the image if needed
      });
    }
  }

  // Data for statuses
  final List<Map<String, dynamic>> statuses = [
    {
      'name': 'Sameeksha',
      'image':
      'https://images.unsplash.com/photo-1607454317530-68f30190f520?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'route': const Videoscreen(),
    },
    {
      'name': 'Krishna',
      'image':
      'https://images.unsplash.com/photo-1506968695017-764f86a9f9ec?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'route': const Videotwo(),
    },
    {
      'name': 'Dhruv',
      'image':
      'https://a.storyblok.com/f/112937/568x464/884e373bca/travel_pic_unsplash1-568x464.jpg/m/620x0/filters:quality(70)/',
      'route': const Vidthree(),
    },
    {
      'name': 'Krish',
      'image':
      'https://plus.unsplash.com/premium_photo-1716312742751-d1ca46aa9a0e?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'route': const Videofour(),
    },
    {
      'name': 'Rudra',
      'image':
      'https://images.unsplash.com/photo-1510712582399-2fbf760892ae?q=80&w=2009&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'route': const Videofive(),
    },
  ];

  // Data for channels
  final List channels = [
    {
      'leading': const CircleAvatar(
        backgroundImage: NetworkImage(
            "https://cdn3.iconfinder.com/data/icons/3d-applications/256/app_icons_social_media_search___logo_google_engine_software.png"),
        backgroundColor: Colors.transparent,
      ),
      'title': 'App Mentoring',
      'subtitle': "You: Meeting kab h sir ?..",
      'trailing': "10:17 am",
    },
    {
      'leading': const CircleAvatar(
        backgroundImage: NetworkImage(
            "https://cdn2.iconfinder.com/data/icons/season-7/340/family_car_travel_vacation_trip_vehicle_happy-256.png"),
        backgroundColor: Colors.transparent,
      ),
      'title': 'Travel Venture',
      'subtitle': 'Travel Ticket to Thai..',
      'trailing': '11:12 am',
    },
    {
      'leading': const CircleAvatar(
        backgroundImage: NetworkImage(
            "https://cdn4.iconfinder.com/data/icons/kitchen-and-food-6/256/Doughnut.png"),
        backgroundColor: Colors.transparent,
      ),
      'title': 'Khazana',
      'subtitle': 'Khao Pet bhar ke..',
      'trailing': '11:12 am',
    },
  ];

  @override
  Widget build(BuildContext context) {
    // Screen dimensions
    final double scrh = MediaQuery.of(context).size.height;
    final double scrw = MediaQuery.of(context).size.width;

    // Colors
    const Color colr = Color(0xffEFEFEF);

    return Scaffold(
      backgroundColor: const Color(0xff0B1014),
      appBar: AppBar(
        backgroundColor: const Color(0xff0B1014),
        title: const Text(
          'Updates',
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.qr_code_2,color: Colors.white,),
            color: colr,
          ),
          IconButton(
            onPressed: () =>
                showSearch(context: context, delegate: PremiumSearchDelegate()),
            icon: Icon(Icons.search, color: Colors.white),
          ),
          PopupMenuButton(
            icon: const Icon(Icons.more_vert, color: Colors.white),
            onSelected: (String value) {
              if (value == 'Status Privacy') {
                Get.to(statusp());
              } else if (value == 'Create Channel') {
                showModalBottomSheet(
                  context: context,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  backgroundColor: const Color(0xff0B131A),
                  builder: (context) {
                    return Container(
                      padding: const EdgeInsets.all(16.0),
                      height: scrh * 0.9,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: SizedBox(
                              height: scrh * 0.16,
                              width: scrw * 0.6,
                              child: Image.asset(
                                'lib/assets/Channels.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          const Text(
                            "Create a channel to reach unlimited followers",
                            style: TextStyle(fontSize: 25, color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                          ListTile(
                            leading: const FaIcon(
                              FontAwesomeIcons.globe,
                              color: Colors.white,
                              size: 17,
                            ),
                            title: const Text(
                              "Anyone can discover your channel",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w200,
                                  fontSize: 15),
                            ),
                            subtitle: const Text(
                              "Channels are public, so anyone can find them and see 30 days of history",
                              style: TextStyle(
                                  color: Colors.white54,
                                  fontWeight: FontWeight.w200,
                                  fontSize: 13),
                            ),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            leading: const FaIcon(
                              FontAwesomeIcons.eyeSlash,
                              color: Colors.white,
                              size: 17,
                            ),
                            title: const Text(
                              'People see your channel, not you',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w200,
                                  fontSize: 15),
                            ),
                            subtitle: const Text(
                              "Followers can't see your phone number just you can see.",
                              style: TextStyle(
                                  color: Colors.white54,
                                  fontWeight: FontWeight.w200,
                                  fontSize: 13),
                            ),
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    );
                  },
                );
              } else if (value == 'Settings') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Settings()),
                );
              }
            },
            itemBuilder: (BuildContext context) {
              return const [
                PopupMenuItem<String>(
                  value: 'Status Privacy',
                  child: Text(
                    'Status Privacy',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                PopupMenuItem<String>(
                  value: 'Create Channel',
                  child: Text(
                    'Create Channel',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                PopupMenuItem<String>(
                  value: 'Settings',
                  child: Text(
                    'Settings',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ];
            },
            color: const Color(0xff171e1e),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          color: Color(0xff0B1014),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Status Section
              Padding(
                padding: const EdgeInsets.only(bottom: 15, top: 15),
                child: Container(
                  decoration: const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(width: 0.1, color: colr),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding:
                        EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                        child: Text(
                          "Status",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 23,
                              fontWeight: FontWeight.w200),
                        ),
                      ),
                      Padding(
                        padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              // My Status
                              Column(
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        height: scrh * 0.085,
                                        width: scrw * 0.19,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          gradient: LinearGradient(
                                            colors: [
                                              Colors.grey,
                                              Colors.grey,
                                            ],
                                            begin: Alignment.topLeft,
                                            end: Alignment.bottomRight,
                                          ),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(2.0),
                                          child: CircleAvatar(
                                            radius: 34,
                                            backgroundImage: const NetworkImage(
                                                'https://images.unsplash.com/photo-1491555103944-7c647fd857e6?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                                            backgroundColor: Colors.transparent,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        bottom: 0,
                                        right: 0,
                                        child: GestureDetector(
                                          onTap: _takePicture,
                                          child: Container(
                                            height: 24,
                                            width: 24,
                                            decoration: const BoxDecoration(
                                              color: Colors.green,
                                              shape: BoxShape.circle,
                                              border: Border.fromBorderSide(
                                                BorderSide(
                                                    color: Color(0xff0B1014),
                                                    width: 2),
                                              ),
                                            ),
                                            child: const Icon(
                                              Icons.add,
                                              size: 16,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: scrh * 0.01),
                                  const Text(
                                    "My Status",
                                    style: TextStyle(
                                        color: colr,
                                        fontWeight: FontWeight.w200,
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                              SizedBox(width: scrw * 0.04),
                              // Other Statuses
                              ...statuses.map((status) {
                                return Padding(
                                  padding: const EdgeInsets.only(right: 16),
                                  child: Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {
                                          Get.to(status['route']);
                                        },
                                        child: Container(
                                          height: scrh * 0.085,
                                          width: scrw * 0.19,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,color: Colors.green
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: CircleAvatar(
                                              backgroundImage: NetworkImage(
                                                  status['image']),
                                              backgroundColor: Colors.transparent,
                                            ),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: scrh * 0.01),
                                      Text(
                                        status['name'],
                                        style: const TextStyle(
                                            color: colr,
                                            fontWeight: FontWeight.w200,
                                            fontSize: 12),
                                      ),
                                    ],
                                  ),
                                );
                              }).toList(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Channels Section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Channels",
                          style: TextStyle(color: colr, fontSize: 25),
                        ),
                        InkWell(
                          onTap: () {
                            Get.to(const Channelsexplore());
                          },
                          child: const Row(
                            children: [
                              Text(
                                "Explore",
                                style: TextStyle(color: Colors.green),
                              ),
                              SizedBox(width: 4),
                              FaIcon(
                                FontAwesomeIcons.angleRight,
                                color: Colors.green,
                                size: 12,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: scrh * 0.02),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: channels.length,
                      itemBuilder: (context, index) {
                        final channel = channels[index];
                        return ListTile(
                          leading: channel['leading'],
                          title: Text(
                            channel['title'],
                            style: const TextStyle(
                                color: Colors.white, fontWeight: FontWeight.w200),
                          ),
                          subtitle: Text(
                            channel['subtitle'],
                            style: const TextStyle(
                                color: Colors.white60,
                                fontWeight: FontWeight.w200),
                          ),
                          trailing: Text(
                            channel['trailing'],
                            style: const TextStyle(
                                color: Colors.white54,
                                fontWeight: FontWeight.w200),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),

              // Bottom padding to ensure last item is visible
              SizedBox(height: scrh * 0.1),
            ],
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            height: scrh * 0.055,
            width: scrw * 0.12,
            child: FloatingActionButton(
              backgroundColor: const Color(0xff1b262f),
              onPressed: () {
                Get.to( Colorpage());
              },
              tooltip: 'Edit Status',
              child: const Icon(
                Icons.edit,
                color: Colors.white70,
              ),
            ),
          ),
          const SizedBox(height: 16),
          FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: _takePicture,
            tooltip: 'Add Status',
            child: const Icon(
              Icons.camera_alt,
              color: Colors.black,
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}