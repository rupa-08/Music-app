import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:music_app/custom_components/button.dart';
import 'package:music_app/screens/sign_up.dart';
import 'package:music_app/screens/welcome/page_1.dart';

import '../sign_in.dart';

class page_2 extends StatefulWidget {
  const page_2({Key? key}) : super(key: key);

  @override
  _page_2State createState() => _page_2State();
}

class _page_2State extends State<page_2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#FDF6EC"),
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
              height: MediaQuery.of(context).size.width / 5,
            ),
            const Text(
              "Music is an escape!",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 28),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.width / 16,
            ),
            const Text(
              "     Soulplay provides music lifting\n                        your soul..",
              style: TextStyle(color: Colors.black54, fontSize: 17),
            ),

            SizedBox(
              height: MediaQuery.of(context).size.width / 4,
            ),
            InkWell(
              child: const custom_button(
                txt: "SIGN UP",
              ),
              onDoubleTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return sign_up();
                }));
              },


            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                padding:  EdgeInsets.all(10.0),
                child: Text(
                  "ALREADY HAVE AN ACCOUNT?",
                  style: TextStyle(color: Colors.black54, fontSize: 17),
                ),
              ),
              InkWell(
                child: const Text(
                  "SIGN IN",
                  style: TextStyle(color: Colors.deepPurpleAccent, fontSize: 17),
                ),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return sign_in();
                  }));
                },
              ),
            ],)
          ],
            ),
          ),
        ],
      ),
    );
  }
}
