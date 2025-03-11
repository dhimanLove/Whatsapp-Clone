import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AvatarProfilePhoto extends StatefulWidget {
  const AvatarProfilePhoto({super.key});

  @override
  State<AvatarProfilePhoto> createState() => _AvatarProfilePhotoState();
}

class _AvatarProfilePhotoState extends State<AvatarProfilePhoto> {

  int selectedAvatarIndex = 0;
  int selectedBackgroundIndex = 0;

  final List avatarImages = [
    "https://api.dicebear.com/7.x/lorelei/png?seed=1&size=512",
    "https://api.dicebear.com/7.x/lorelei/png?seed=2&size=512",
    "https://api.dicebear.com/7.x/lorelei/png?seed=3&size=512",
    "https://api.dicebear.com/7.x/lorelei/png?seed=4&size=512",
    "https://api.dicebear.com/7.x/lorelei/png?seed=5&size=512",
    "https://api.dicebear.com/7.x/lorelei/png?seed=6&size=512",
    "https://api.dicebear.com/7.x/lorelei/png?seed=7&size=512",
    "https://api.dicebear.com/7.x/lorelei/png?seed=8&size=512",
    "https://api.dicebear.com/7.x/lorelei/png?seed=9&size=512",
    "https://api.dicebear.com/7.x/lorelei/png?seed=10&size=512",
  ];

  final List backgroundColors = [
    Color(0xFF4B4B4B),
    Color(0xFF333333),
    Color(0xDF333B86),
    Color(0xC5261672),
    Color(0xFF004D40),
    Color(0xFF720B0B),
    Color(0xFF1B5E20),
    Color(0xFF4E342E),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0B1014),
      appBar: AppBar(
        backgroundColor: const Color(0xff0B1014),
        elevation: 0,
        title: Text(
          'Avatar profile photo',
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
            },
            icon: Icon(
              Icons.check,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.3,
            alignment: Alignment.center,
            child: Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: backgroundColors[selectedBackgroundIndex],
              ),
              child: ClipOval(
                child: Image.network(
                  avatarImages[selectedAvatarIndex],
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),


          Divider(
            color: Colors.grey[800],
            height: 1,
          ),


          Padding(
            padding: const EdgeInsets.only(left: 16, top: 16, bottom: 8),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Avatar',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
            ),
          ),


          SizedBox(
            height: 70,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 12),
              itemCount: avatarImages.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedAvatarIndex = index;
                    });
                  },
                  child: Container(
                    width: 60,
                    height: 60,
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: selectedAvatarIndex == index
                          ? Border.all(color: Colors.purple, width: 2)
                          : null,
                    ),
                    child: ClipOval(
                      child: Image.network(
                        avatarImages[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          // Background selection section
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 16, bottom: 8),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Background',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
            ),
          ),

          SizedBox(
            height: 70,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 12),
              itemCount: backgroundColors.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedBackgroundIndex = index;
                    });
                  },
                  child: Container(
                    width: 60,
                    height: 60,
                    margin: EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: backgroundColors[index],
                      border: selectedBackgroundIndex == index
                          ? Border.all(color: Colors.purple, width: 2)
                          : null,
                    ),
                  ),
                );
              },
            ),
          ),

          // Spacer to push button to bottom
          Spacer(),

          // Bottom button
          Container(
            margin: EdgeInsets.all(16),
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                  side: BorderSide(color: Colors.grey[800]!, width: 1),
                ),
              ),
              child: Text(
                'Get avatar',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 16,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}