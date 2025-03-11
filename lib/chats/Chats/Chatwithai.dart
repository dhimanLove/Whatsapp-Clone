import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Aistudio extends StatefulWidget {
  const Aistudio({super.key});

  @override
  State<Aistudio> createState() => _AistudioState();
}

class _AistudioState extends State<Aistudio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0B1014),
      appBar: AppBar(
        backgroundColor: Color(0xff0B1014),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: Text(
          "AI Studio",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.search_outlined, color: Colors.white))
        ],
      ),
      body: Column(
        children: [
          Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                children: [
                  SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 300,
                                width: 320,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        'https://images.unsplash.com/photo-1583647515538-3f4f972971cd?q=80&w=1970&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                  left: 20,
                                  bottom: 20,
                                  child: Container(
                                      width: 200,
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color: Colors.black54,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Hello Flutter Developer I am a developer",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 23,
                                              fontWeight: FontWeight.w200,
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Row(
                                            children: [
                                              Text(
                                                'Explore',
                                                style: TextStyle(
                                                    color: Colors.white54),
                                              ),
                                              SizedBox(width: 5),
                                              Icon(
                                                Icons.arrow_right_alt_rounded,
                                                color: Colors.white54,
                                              )
                                            ],
                                          )
                                        ],
                                      ))),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Stack(
                            children: [
                              Container(
                                height: 300,
                                width: 320,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        'https://images.unsplash.com/photo-1725088819905-058e8dd6a6e5?q=80&w=1936&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                  left: 20,
                                  bottom: 20,
                                  child: Container(
                                      width: 200,
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color: Colors.black38,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Hello Flutter Developer I am a developer",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 23,
                                              fontWeight: FontWeight.w200,
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Row(
                                            children: [
                                              Text(
                                                'Explore',
                                                style: TextStyle(
                                                    color: Colors.white54),
                                              ),
                                              SizedBox(width: 5),
                                              Icon(
                                                Icons.arrow_right_alt_rounded,
                                                color: Colors.white54,
                                              )
                                            ],
                                          )
                                        ],
                                      ))),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Stack(
                            children: [
                              Container(
                                height: 300,
                                width: 320,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: NetworkImage(
                                        'https://images.unsplash.com/photo-1640874627816-6a41362ff36c?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D'),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Positioned(
                                  left: 20,
                                  bottom: 20,
                                  child: Container(
                                      width: 200,
                                      padding: EdgeInsets.all(10),
                                      decoration: BoxDecoration(
                                        color: Colors.black38,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Hello Flutter Developer I am a developer",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 23,
                                              fontWeight: FontWeight.w200,
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Row(
                                            children: [
                                              Text(
                                                'Explore',
                                                style: TextStyle(
                                                    color: Colors.white54),
                                              ),
                                              SizedBox(width: 5),
                                              Icon(
                                                Icons.arrow_right_alt_rounded,
                                                color: Colors.white54,
                                              )
                                            ],
                                          )
                                        ],
                                      ))),
                            ],
                          ),
                        ],
                      )),
                  Text(
                    'Popular AI Characters',
                    style: TextStyle(color: Colors.white),
                  ),
                  ListTile()
                ],
              )),
        ],
      ),
    );
  }
}
