import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Stickers extends StatefulWidget {
  const Stickers({super.key});

  @override
  State<Stickers> createState() => _StickersState();
}

class _StickersState extends State<Stickers> {
  @override
  Widget build(BuildContext context) {
    final List<String> imageUrls = List.generate(
      25,
          (index) => "https://api.dicebear.com/7.x/avataaars/png?seed=${index + 1}&size=512",
    );
    return Scaffold(
      backgroundColor: const Color(0xff0B1014),
      appBar: AppBar(
        backgroundColor: const Color(0xff0B1014),
        title: Text(
          'Sticker Pack',
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.share_outlined,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: CustomScrollView(slivers: [
        SliverList(
          delegate: SliverChildListDelegate([
            ListTile(
              onTap: () {},
              leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(
                    "https://images.unsplash.com/photo-1491555103944-7c647fd857e6?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  )),
              title: Text(
                "Avatars",
                style: TextStyle(
                  color: Colors.white70,
                ),
              ),
              subtitle: Text(
                'The avatar gracefully navigated Pandora lush, bioluminescent forests with ease.',
                style: TextStyle(
                  color: Colors.white38,
                ),
              ),
            ),
          ]),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 10,
          ),
        ),
        SliverGrid(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            childAspectRatio: 1.25,
          ),
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  imageUrls[index],
                  fit: BoxFit.cover,
                ),
              );
            },
            childCount: imageUrls.length,
          ),
        ),
        SliverToBoxAdapter(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                color: Colors.white,
                width: 0.5,
              )
            ),
            margin: const EdgeInsets.all(20),
            height: Get.height * 0.06,
            //color: Colors.green,
            child: const Center(
              child: Text(
                'Get Sticker',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
