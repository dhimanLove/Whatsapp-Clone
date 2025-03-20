import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Channelsexplore extends StatefulWidget {
  const Channelsexplore({super.key});

  @override
  State<Channelsexplore> createState() => _ChannelsexploreState();
}

class _ChannelsexploreState extends State<Channelsexplore> {
  final List channels = [
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

  String selectedRegion = 'All Regions'; // Track selected region

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
                  height: Get.height * 0.5,
                  width: Get.width,
                  decoration: const BoxDecoration(
                    color: Color(0xff1A1F24),
                    borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 12),
                        width: 40,
                        height: 4,
                        decoration: BoxDecoration(
                          color: Colors.grey[600],
                          borderRadius: BorderRadius.circular(2),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(16),
                        child: Text(
                          'Filter by Region',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Expanded(
                        child: RegionList(
                          onRegionSelected: (region) {
                            setState(() {
                              selectedRegion = region;
                            });
                            Get.back();
                          },
                          selectedRegion: selectedRegion,
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
                  separatorBuilder: (context, index) => const SizedBox(
                    height: 5,
                  ),
                  itemBuilder: (context, index) {
                    final channel = channels[index];
                    return Card(
                      color:const Color(0xff0B1014),
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

// Separate RegionList widget
class RegionList extends StatelessWidget {
  final Function(String) onRegionSelected;
  final String selectedRegion;

  const RegionList({
    required this.onRegionSelected,
    required this.selectedRegion,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final regions = [
      'All Regions',
      'North America',
      'Europe',
      'Asia',
      'Africa',
      'South America',
      'Australia',
    ];

    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: regions.length,
      itemBuilder: (context, index) {
        final region = regions[index];
        final isSelected = region == selectedRegion;

        return GestureDetector(
          onTap: () => onRegionSelected(region),
          child: Container(
            margin: const EdgeInsets.only(bottom: 8),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            decoration: BoxDecoration(
              color: isSelected ? Colors.green.withOpacity(0.1) : Colors.transparent,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: isSelected ? Colors.green : Colors.grey.withOpacity(0.3),
                width: 1,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  region,
                  style: TextStyle(
                    color: isSelected ? Colors.green : Colors.white,
                    fontSize: 16,
                    fontWeight: isSelected ? FontWeight.w600 : FontWeight.w400,
                  ),
                ),
                if (isSelected)
                  const Icon(
                    Icons.check_circle,
                    color: Colors.green,
                    size: 20,
                  ),
              ],
            ),
          ),
        );
      },
    );
  }
}