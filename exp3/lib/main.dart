/*
* Exp 3: Profile Page App (stateful)
* */

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String name = "Swaroop Bhagwat";
  String email = "...";
  String phone = "XXXXXXXX75";
  String address = "...";
  Icon visibilityIcon = const Icon(Icons.visibility);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Text("Profile Page", style: TextStyle(color: Colors.white)),
      ),
      backgroundColor: Colors.grey[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 20,
            ),
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  "data:image/jpeg;base64,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"),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              name,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Full-Stack Developer",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400, color: Colors.black54),
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              height: 20,
              thickness: 1,
              indent: 20,
              endIndent: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                padding: const EdgeInsets.all(25),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.grey[100],
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: [
                        Text("Dept.", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: Colors.grey)),
                        SizedBox(
                          height: 5,
                        ),
                        Text("IT", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    Column(
                      children: [
                        Text("Birthday", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: Colors.grey)),
                        SizedBox(
                          height: 5,
                        ),
                        Text("28 May", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    SizedBox(
                      width: 35,
                    ),
                    Column(
                      children: [
                        Text("Age", style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: Colors.grey)),
                        SizedBox(
                          height: 5,
                        ),
                        Text("21 yrs", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Card(
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  color: Colors.grey[100],
                  shadowColor: Colors.grey[50],
                  child: ListTile(
                    leading: const Icon(Icons.email, color: Colors.black),
                    title: Text(email, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                  ),
                ),
                Card(
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  color: Colors.grey[100],
                  shadowColor: Colors.grey[50],
                  child: ListTile(
                    leading: const Icon(Icons.phone, color: Colors.black),
                    title: Text(phone, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                  ),
                ),
                Card(
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  color: Colors.grey[100],
                  shadowColor: Colors.grey[50],
                  child: ListTile(
                    leading: const Icon(Icons.home, color: Colors.black),
                    title: Text(address, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w400)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(()  {
            name = "Swaroop Bhagwat";
            if (email == "...") {
              email = "hswaroopb0005@gmail.com";
            } else {
              email = "...";
            }
            if (phone == "XXXXXXXX75") {
              phone = "1234568901";
            } else {
              phone = "XXXXXXXX01";
            }
            if (address == "...") {
              address = "Mumbai, India";
            } else {
              address = "...";
            }
            if (visibilityIcon.icon == Icons.visibility) {
              visibilityIcon = const Icon(Icons.visibility_off);
            } else {
              visibilityIcon = const Icon(Icons.visibility);
            }
          });
        },
        tooltip: 'Update Profile',
        child: visibilityIcon,
      ),
    );
  }
}