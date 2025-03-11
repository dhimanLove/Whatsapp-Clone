import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:whatsapp/Settings/Chats/Wallpaper/colour.dart';
import 'package:whatsapp/Settings/Chats/Wallpaper/preview.dart';

class WallpaperPage extends StatefulWidget {
  @override
  State<WallpaperPage> createState() => _WallpaperPageState();
}

class _WallpaperPageState extends State<WallpaperPage> {
  final List imageUrls = List.generate(
    30,
    (index) => 'https://picsum.photos/200/300?random=$index',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0B1014),
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: Text(
          'Wallpapers',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xff0B1014),
        actions: [
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
      endDrawer: Padding(
        padding: const EdgeInsets.only(top: 70),
        child: Align(
          alignment: Alignment.topRight,
          child: Container(
            width: Get.width * 0.66,
            height: Get.height * 0.09,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xff171e1e),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 13),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      onPressed: () {},
                      child: ListTile(
                        title: Text(
                          "Reset Wallpaper",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w200,
                              fontSize: 16),
                        ),
                        leading: Icon(Icons.history,color: Colors.white70,size: 20,),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate([
              ListTile(
                onTap: () {},
                leading: IconButton(
                  onPressed: () {},
                  icon:
                      Icon(Icons.image_search_outlined, color: Colors.white70),
                ),
                title: Text(
                  "Choose From Gallery",
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                ),
              ),
              ListTile(
                onTap: () {
                  Get.to(Colour());
                },
                leading: IconButton(
                  onPressed: () {
                  },
                  icon: Icon(FontAwesomeIcons.droplet, color: Colors.white70),
                ),
                title: Text(
                  "Set a Colour",
                  style: TextStyle(
                    color: Colors.white70,
                  ),
                ),
              ),
            ]),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 20,
              mainAxisSpacing: 14,
              childAspectRatio: 0.7,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: InkWell(
                    onTap: (){
                      Get.to(Preview());
                    },
                    child: Image.network(
                      imageUrls[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
              childCount: imageUrls.length,
            ),
          ),
        ],
      ),
    );
  }
}
