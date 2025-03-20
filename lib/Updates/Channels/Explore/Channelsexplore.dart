import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Channelsexplore extends StatefulWidget {
  const Channelsexplore({super.key});

  @override
  State<Channelsexplore> createState() => _ChannelsexploreState();
}

class _ChannelsexploreState extends State<Channelsexplore> {
  final List  channels = [
    {
      'name': 'Savita Ki Rasoi',
      'stories': '972K stories',
      'followers': '8M followers',
      'image': 'https://plus.unsplash.com/premium_photo-1681483534373-2d9250d3e1e9?q=80&w=2016&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'isFollowing': false,
    },
    {
      'name': 'Corn Prices',
      'stories': '621K stories',
      'followers': '120M followers',
      'image': 'https://images.unsplash.com/photo-1531171491537-435164f3d486?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'isFollowing': false,
    },
    {
      'name': 'Hungry People',
      'stories': '414K stories',
      'followers': '110M followers',
      'image': 'https://images.unsplash.com/photo-1509099836639-18ba1795216d?q=80&w=1931&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      'isFollowing': false,
    },
    {
      'name': 'Sanskari Balika',
      'stories': '602K stories',
      'followers': '8M followers',
      'image': 'https://i.pinimg.com/736x/85/a5/34/85a534777b97fa0004ee6022a41615cf.jpg',
      'isFollowing': false,
    },
    {
      'name': 'Tech World',
      'stories': '413K stories',
      'followers': '50M followers',
      'image': 'https://images.unsplash.com/photo-1580894894513-86121a2ffcd5?q=80&w=1920&auto=format&fit=crop',
      'isFollowing': false,
    },
    {
      'name': 'Daily Motivation',
      'stories': '823K stories',
      'followers': '25M followers',
      'image': 'https://images.unsplash.com/photo-1562564055-71e051d33c19?q=80&w=1920&auto=format&fit=crop',
      'isFollowing': false,
    },
    {
      'name': 'Fitness Freaks',
      'stories': '853K stories',
      'followers': '65M followers',
      'image': 'https://images.unsplash.com/photo-1581009146145-b5ef050c2e1f?q=80&w=1920&auto=format&fit=crop',
      'isFollowing': false,
    },
    {
      'name': 'Crypto Insights',
      'stories': '500K stories',
      'followers': '40M followers',
      'image': 'https://images.unsplash.com/photo-1636103846759-90ef46915f66?q=80&w=1920&auto=format&fit=crop',
      'isFollowing': false,
    },
  ];


  void _toggleFollow(int index) {
    setState(() {
      channels[index]['isFollowing'] = !channels[index]['isFollowing'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        backgroundColor: const Color(0xff0B1014),
        elevation: 0,
        title: const Text(
          "Channels",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search_outlined, color: Colors.white),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.filter_list_sharp, color: Colors.white),
            onPressed: () {
              Get.bottomSheet(
                Container(
                  height: Get.height * 0.8,
                  width: Get.width,
                  decoration: const BoxDecoration(
                    color: Color(0xff0B1014),
                    borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      Container(
                        width: 40,
                        height: 5,
                        decoration: BoxDecoration(
                          color: Colors.white54,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: Container(
                          height: 50,
                          width: MediaQuery.of(context).size.width * 0.88,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 48, 48, 48),
                            borderRadius: BorderRadius.circular(50),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                blurRadius: 5,
                                offset: const Offset(0, 2),
                              ),
                            ],
                          ),
                          child: const Row(
                            children: [
                              SizedBox(width: 10),
                              Icon(Icons.search, color: Colors.white),
                              SizedBox(width: 10),
                              Text(
                                'Search for Region',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 224, 224, 224),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(30),
                              topRight: Radius.circular(30),
                            ),
                          ),
                          child: ListView(
                            children: [
                              ListTile(
                                title: const Text(
                                  'All Regions',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                onTap: () {
                                  Get.back();
                                  Get.snackbar(
                                    'Region Selected',
                                    'Showing channels from All Regions',
                                    snackPosition: SnackPosition.TOP,
                                    backgroundColor: Colors.green,
                                    colorText: Colors.white,
                                  );
                                },
                              ),
                              ListTile(
                                title: const Text(
                                  'North America',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                onTap: () {
                                  Get.back();
                                  Get.snackbar(
                                    'Region Selected',
                                    'Showing channels from North America',
                                    snackPosition: SnackPosition.TOP,
                                    backgroundColor: Colors.green,
                                    colorText: Colors.white,
                                  );
                                },
                              ),
                              ListTile(
                                title: const Text(
                                  'Europe',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                onTap: () {
                                  Get.back();
                                  Get.snackbar(
                                    'Region Selected',
                                    'Showing channels from Europe',
                                    snackPosition: SnackPosition.TOP,
                                    backgroundColor: Colors.green,
                                    colorText: Colors.white,
                                  );
                                },
                              ),
                              ListTile(
                                title: const Text(
                                  'Asia',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                onTap: () {
                                  Get.back();
                                  Get.snackbar(
                                    'Region Selected',
                                    'Showing channels from Asia',
                                    snackPosition: SnackPosition.TOP,
                                    backgroundColor: Colors.green,
                                    colorText: Colors.white,
                                  );
                                },
                              ),
                              ListTile(
                                title: const Text(
                                  'Africa',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                onTap: () {
                                  Get.back();
                                  Get.snackbar(
                                    'Region Selected',
                                    'Showing channels from Africa',
                                    snackPosition: SnackPosition.TOP,
                                    backgroundColor: Colors.green,
                                    colorText: Colors.white,
                                  );
                                },
                              ),
                              ListTile(
                                title: const Text(
                                  'South America',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                onTap: () {
                                  Get.back();
                                  Get.snackbar(
                                    'Region Selected',
                                    'Showing channels from South America',
                                    snackPosition: SnackPosition.TOP,
                                    backgroundColor: Colors.green,
                                    colorText: Colors.white,
                                  );
                                },
                              ),
                              ListTile(
                                title: const Text(
                                  'Australia',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                onTap: () {
                                  Get.back();
                                  Get.snackbar(
                                    'Region Selected',
                                    'Showing channels from Australia',
                                    snackPosition: SnackPosition.TOP,
                                    backgroundColor: Colors.green,
                                    colorText: Colors.white,
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                isScrollControlled: true,
              );
            },
          ),
        ],
      ),
      backgroundColor: const Color(0xff0B1014),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    "Explore Channels",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 18,
                    ),
                  ),
                ),
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: channels.length,
                  separatorBuilder: (context, index) => SizedBox(
                    height: 5,
                  ),
                  itemBuilder: (context, index) {
                    final channel = channels[index];
                    return Card(
                      color: const Color(0xff1A1F24),
                      margin: const EdgeInsets.symmetric(vertical: 6),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: ListTile(
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 8.0,
                          horizontal: 12.0,
                        ),
                        leading: CircleAvatar(
                          radius: 24,
                          backgroundColor: Colors.transparent,
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              gradient: LinearGradient(
                                colors: [
                                  Colors.green.shade600,
                                  Colors.green.shade400,
                                ],
                                begin: Alignment.topLeft,
                                end: Alignment.bottomRight,
                              ),
                              image: DecorationImage(
                                image: NetworkImage(channel['image']),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        title: Text(
                          channel['name'],
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        subtitle: Padding(
                          padding: const EdgeInsets.only(top: 4.0),
                          child: Text(
                            '${channel['stories']} • ${channel['followers']}',
                            style: const TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ),
                        trailing: ElevatedButton(
                          onPressed: () => _toggleFollow(index),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: channel['isFollowing']
                                ? Colors.green
                                : const Color(0xff1A3A2D),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            padding: const EdgeInsets.symmetric(
                              horizontal: 20,
                              vertical: 8,
                            ),
                          ),
                          child: Text(
                            channel['isFollowing'] ? 'Following' : 'Follow',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}