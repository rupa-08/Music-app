import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:music_app/custom_components/button.dart';
import 'package:music_app/screens/welcome/page_2.dart';

class welcome extends StatefulWidget {
  const welcome({Key? key}) : super(key: key);

  @override
  _welcomeState createState() => _welcomeState();
}

class _welcomeState extends State<welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#F9D8AC"),
      body: ListView(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 1,
            width: MediaQuery.of(context).size.width / 1,
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "SOULPLAY",
                  style:
                      TextStyle(color: Colors.deepPurpleAccent, fontSize: 18),
                ),
                Image.asset(
                  "assets/home/logo.png",
                  height: 30,
                  width: 40
                )
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width / 5,
            ),
            const Text(
              "Welcome to SOULPLAY",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 28),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width / 16,
            ),
            const Text(
              "    Explore different free playlists and feel \n           the life with great music..",
              style: TextStyle(color: Colors.black54, fontSize: 17),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width / 16,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(80.0),
                child: Image.asset(
                  "assets/images/get_started.png",
                  color: Colors.orangeAccent.withOpacity(1.0),
                  colorBlendMode: BlendMode.softLight,
                  fit: BoxFit.fill,
                  height: MediaQuery.of(context).size.height / 3.5,
                  width: MediaQuery.of(context).size.width / 1.5,
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width / 4,
            ),
            InkWell(
              child: const custom_button(
                txt: "GET STARTED",
              ),
              onDoubleTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return page_2();
                }));
              },
            )
          ],
            ),
          ),
        ],
      ),
    );
  }
}
