import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:whatsapp/Chats/Chats.dart';
import 'package:whatsapp/Settings/Account.dart';
import 'package:whatsapp/Settings/Avatars.dart';
import 'package:whatsapp/Settings/Chat.dart';
import 'package:whatsapp/Settings/Privacy.dart';
import 'package:whatsapp/Settings/help.dart';
import 'package:whatsapp/Settings/invite%20friend.dart';
import 'package:whatsapp/Settings/list.dart';
import 'package:whatsapp/Settings/notifications.dart';
import 'package:whatsapp/Settings/pfpmain.dart';
import 'package:whatsapp/Settings/storage.dart';
import 'package:whatsapp/searchdelegatee.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  String? groupValue = 'Option1';

  @override
  Widget build(BuildContext context) {
    Future<void> launchURL(String url) async {
      final Uri uri = Uri.parse(url);
      if (await canLaunchUrl(uri)) {
        await launchUrl(uri, mode: LaunchMode.externalApplication);
      } else {
        Get.snackbar("Error", "Could not open $url",
            snackPosition: SnackPosition.BOTTOM);
      }
    }

    var scrw = MediaQuery.of(context).size.width;

    var arrme = [
      CircleAvatar(
        radius: 35,
        backgroundImage: const NetworkImage(
            "https://images.unsplash.com/photo-1491555103944-7c647fd857e6?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D"),
        backgroundColor: Colors.brown,
      )
    ];

    var arrlead = [
      const Icon(Icons.vpn_key_outlined, color: Colors.white54, size: 20),
      const Icon(Icons.lock_outline, color: Colors.white54, size: 20),
      const FaIcon(FontAwesomeIcons.userAstronaut,
          color: Colors.white54, size: 20),
      const FaIcon(FontAwesomeIcons.contactBook,
          color: Colors.white54, size: 20),
      const FaIcon(FontAwesomeIcons.message, color: Colors.white54, size: 20),
      const FaIcon(FontAwesomeIcons.bell, color: Colors.white54, size: 20),
      const FaIcon(FontAwesomeIcons.circle, color: Colors.white54, size: 20),
      const FaIcon(FontAwesomeIcons.globe, color: Colors.white54, size: 20),
      const FaIcon(FontAwesomeIcons.questionCircle,
          color: Colors.white54, size: 20),
    ];

    var arrtitle = [
      'Account',
      'Privacy',
      'Avatar',
      'Lists',
      'Chats',
      'Notifications',
      'Storage and data',
      'App language',
      'Help'
    ];

    var arrsubt = [
      'Security notifications, change number',
      'Block contact, disappearing messages',
      'Create, edit, profile photo',
      'Manage people and groups',
      'Theme, wallpapers, chat history',
      'Message, group & call tones',
      'Network usage, auto-download',
      "English (device's language)",
      'Help center, contact us, privacy policy'
    ];

    var navigateTo = [
      Account(),
      Privacy(),
      Avatars(),
      Listss(),
      Chat(),
      Notifications(),
      Storage(),
      null,
      Help(),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff0B1014),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
        title: const Text(
          "Settings",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
        ),
        actions: [
          IconButton(
            onPressed: () =>
                showSearch(context: context, delegate:PremiumSearchDelegate()),
            icon: Icon(Icons.search, color: Colors.white),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          border: Border(top: BorderSide(color: Colors.white, width: 0.1)),
          color: Color(0xff0B1014),
        ),
        child: ListView(
          children: [
            Container(
              decoration: const BoxDecoration(
                border:
                    Border(bottom: BorderSide(color: Colors.white, width: 0.1)),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: ListTile(
                  leading: arrme.isNotEmpty
                      ? arrme[0]
                      : const Icon(Icons.error, color: Colors.red),
                  title: const Text(
                    "Love Raj",
                    style: TextStyle(
                      fontWeight: FontWeight.w200,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  subtitle: Row(
                    children: [
                      const Text(
                        "Get Set Fly",
                        style: TextStyle(
                          fontWeight: FontWeight.w200,
                          fontSize: 13,
                          color: Colors.white54,
                        ),
                      ),
                      const SizedBox(width: 4),
                      SizedBox(
                        height: 20,
                        width: 20,
                        child: Image.network(
                          "https://cdn3.iconfinder.com/data/icons/leto-space/64/__rocket_spaceship-256.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.qr_code, color: Color(0xff60c054)),
                      SizedBox(width: scrw * 0.05),
                      const Icon(Icons.add_circle_outline_rounded,
                          color: Color(0xff60c054)),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListView.builder(
                shrinkWrap: true,
                keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                physics: BouncingScrollPhysics(
                    decelerationRate: ScrollDecelerationRate.fast
                ),
                itemCount: arrlead.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    leading: arrlead[index],
                    title: Text(
                      arrtitle[index],
                      style: const TextStyle(
                          color: Colors.white70, fontWeight: FontWeight.w300),
                    ),
                    subtitle: Text(
                      arrsubt[index],
                      style: const TextStyle(
                          color: Colors.white38, fontWeight: FontWeight.w200),
                    ),
                    onTap: () {
                      if (navigateTo[index] != null) {
                        Get.to(navigateTo[index]);
                      } else {
                        Get.bottomSheet(
                          Container(
                            height: 500,
                            color: const Color(0xff0B1014),
                            child: Column(
                              children: [
                                Expanded(
                                  child: ListView(
                                    children: [
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Select Language",
                                        style: TextStyle(
                                            color: Colors.white70,
                                            fontSize: 20),
                                        textAlign: TextAlign.center,
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      languageTile("English",
                                          "https://cdn2.iconfinder.com/data/icons/flags/flags/48/united-states-of-america-usa.png"),
                                      languageTile(
                                          "\u0939\u093f\u0902\u0926\u0940",
                                          "https://cdn2.iconfinder.com/data/icons/flags_gosquared/64/India.png"),
                                      languageTile("Fran\u00e7ais",
                                          "https://cdn2.iconfinder.com/data/icons/flags_gosquared/64/France.png"),
                                      languageTile(
                                          "\u0627\u0644\u0639\u0631\u0628\u064a\u0629",
                                          "https://cdn0.iconfinder.com/data/icons/world-flags-13/130/Flag-01-256.png"),
                                      languageTile(
                                          "\u0420\u0443\u0441\u0441\u043a\u0438\u0439",
                                          "https://cdn2.iconfinder.com/data/icons/flags_gosquared/64/Russia.png"),
                                      languageTile("Espa\u00f1ol",
                                          "https://cdn2.iconfinder.com/data/icons/flags_gosquared/64/Spain.png"),
                                      languageTile("Italiano",
                                          "https://cdn2.iconfinder.com/data/icons/flags_gosquared/64/Italy.png"),
                                      languageTile(
                                          "\u0395\u03bb\u03bb\u03b7\u03bd\u03b9\u03ba\u03ac",
                                          "https://cdn2.iconfinder.com/data/icons/flags_gosquared/64/Greece.png"),
                                      languageTile(
                                          "\u05e2\u05d1\u05e8\u05d9\u05ea",
                                          "https://cdn2.iconfinder.com/data/icons/flags_gosquared/64/Israel.png"),
                                      languageTile("\ud55c\uad6d\uc5b4",
                                          "https://cdn2.iconfinder.com/data/icons/flags_gosquared/64/South-Korea.png"),
                                      languageTile("Portugu\u00eas",
                                          "https://cdn2.iconfinder.com/data/icons/flags_gosquared/64/Portugal.png"),
                                      languageTile("\u65e5\u672c\u8a9e",
                                          "https://cdn2.iconfinder.com/data/icons/flags_gosquared/64/Japan.png"),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          isScrollControlled: true,
                          enableDrag: true,
                        );
                      }
                    },
                  );
                },
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: 10),
                child: ListTile(
                  leading:
                      Icon(Icons.people_alt_outlined, color: Colors.white54),
                  title: Text("Invite Friend",
                      style: TextStyle(color: Colors.white54)),
                  onTap: () {
                    Get.to(Invite());
                  },
                )),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 17),
                    child: Text(
                      "Also from Meta",
                      style: TextStyle(
                          color: Colors.white54, fontWeight: FontWeight.w300),
                    ),
                  ),
                  ListTile(
                      leading: FaIcon(FontAwesomeIcons.instagram,
                          color: Colors.white54),
                      title: Text("Open Instagram",
                          style: TextStyle(color: Colors.white54)),
                      onTap: () {
                        launchUrlString(
                            'https://www.instagram.com/accounts/login/?hl=en');
                      }),
                  ListTile(
                    leading: const FaIcon(FontAwesomeIcons.facebookSquare,
                        color: Colors.white54),
                    title: const Text("Open Facebook",
                        style: TextStyle(color: Colors.white54)),
                    onTap: () {
                      launchUrlString('https://www.facebook.com/login/');
                    },
                  ),
                  ListTile(
                    leading: const FaIcon(FontAwesomeIcons.threads,
                        color: Colors.white54),
                    title: const Text("Open Threads",
                        style: TextStyle(color: Colors.white54)),
                    onTap: () {
                      launchUrlString('https://www.threads.net/login');
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget languageTile(String language, String flagUrl) {
    return ListTile(
      leading: SizedBox(
        height: 25,
        width: 30,
        child: Image.network(flagUrl),
      ),
      title: Text(language, style: const TextStyle(color: Colors.white54)),
      onTap: () {
        tapp(language, flagUrl);
      },
    );
  }

  void tapp(String language, String flagUrl) {
    Get.showSnackbar(
      GetSnackBar(
        title: "Language Selected",
        message: language,
        duration: const Duration(seconds: 2),
        snackPosition: SnackPosition.TOP,
        backgroundColor: const Color(0xff0d1a1a),
        borderRadius: 20,
        margin: const EdgeInsets.all(10),
        icon: Image.network(flagUrl, width: 20, height: 20),
      ),
    );
  }
}
