import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DeleteAccount extends StatefulWidget {
  const DeleteAccount({super.key});

  @override
  State<DeleteAccount> createState() => _DeleteAccountState();
}

class _DeleteAccountState extends State<DeleteAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff0B1014),
      appBar: AppBar(
        backgroundColor: const Color(0xff0B1014),
        title: const Text(
          "Delete this account",
          style: TextStyle(color: Colors.white),
        ),
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: const Icon(Icons.arrow_back, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ListTile(
              leading: Icon(Icons.warning_amber, color: Colors.red),
              title: Text(
                "If you delete this account:",
                style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                '''- The account will be deleted from WhatsApp and all your devices.\n
- Your message history will be erased.\n
- You will be removed from all your WhatsApp groups.\n
- Your Google storage backup will be deleted.\n
- Your payment info will be deleted.\n
- Any channels you created will be deleted.''',
                style: TextStyle(fontSize: 16, color: Colors.white54),
              ),
            ),
            const Divider(color: Colors.white54, thickness: 0.5),
            const SizedBox(height: 16),
            const ListTile(
              leading: Icon(Icons.phone_iphone_outlined, color: Colors.white70),
              title: Text(
                "Change number instead?",
                style: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 8),
            Center(
              child: GestureDetector(
                onTap: () {
                  Get.dialog(
                    Dialog(
                      backgroundColor: const Color(0xff0B1014),
                      child: SizedBox(
                        height: 200,
                        width: 300,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Done, Please Verify...",
                              style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300),
                            ),
                            SizedBox(height: 10),
                            Icon(Icons.fingerprint_rounded,
                                color: Colors.white54, size: 80),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                child: Container(
                  height: 45,
                  width: 180,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Center(
                    child: Text(
                      "Change Number",
                      style: TextStyle(
                          color: Color(0xff0B1014),
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Divider(color: Colors.white54, thickness: 0.5),
            const SizedBox(height: 16),
            const Text(
              "To delete your account, confirm your country code and enter your phone number.",
              style: TextStyle(color: Colors.white54, fontWeight: FontWeight.w300),
            ),
            const SizedBox(height: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Country",
                  style: TextStyle(color: Colors.white54, fontSize: 14),
                ),
                TextField(
                  style: const TextStyle(color: Colors.white70),
                  decoration: InputDecoration(
                    hintText: 'India',
                    hintStyle: const TextStyle(color: Colors.white70),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white54),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                const Text(
                  "Phone",
                  style: TextStyle(color: Colors.white54, fontSize: 14),
                ),
                TextField(
                  style: const TextStyle(color: Colors.white70),
                  decoration: InputDecoration(
                    hintText: 'Phone number',
                    hintStyle: const TextStyle(color: Colors.white70),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white54),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.green),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            Center(
              child: GestureDetector(
                onTap: () {
                  Get.dialog(
                    Dialog(
                      backgroundColor: const Color(0xff0B1014),
                      child: SizedBox(
                        height: 200,
                        width: 300,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Text(
                              "Done, Please Verify...",
                              style: TextStyle(
                                  color: Colors.white54,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300),
                            ),
                            SizedBox(height: 10),
                            Icon(Icons.fingerprint_rounded,
                                color: Colors.white54, size: 80),
                          ],
                        ),
                      ),
                    ),
                  );
                },
                child: Container(
                  height: 45,
                  width: 180,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: const Center(
                    child: Text(
                      "Delete Account",
                      style: TextStyle(
                          color: Color(0xff0B1014),
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
