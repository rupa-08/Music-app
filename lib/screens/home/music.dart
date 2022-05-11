import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class music extends StatefulWidget {
  const music({Key? key}) : super(key: key);

  @override
  _musicState createState() => _musicState();
}

class _musicState extends State<music> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#F9D8AC"),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: HexColor("#F9D8AC"),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
              elevation: 0,
              color: HexColor("#F9D8AC"),
              shape: const StadiumBorder(
                side: BorderSide(
                  color: Colors.white,
                  width: 1.0,
                ),
              ),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.black54,
                    size: 20,
                  ))),
        ),
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "SOULPLAY",
                  style:
                      TextStyle(color: Colors.deepPurpleAccent, fontSize: 16),
                ),
                Image.asset("assets/home/logo.png", height: 30, width: 40)
              ],
            ),
          ],
        ),
        //flexibleSpace: true,
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(45, 20, 0, 0),
            child: Image.asset(
              "assets/page 2/play song/1.png",
              height: 300,
              width: 300,
              fit: BoxFit.fill,
            ),
          ),
          const Padding(
            padding: const EdgeInsets.fromLTRB(50, 12, 0, 0),
            child: const Text("Birsiney Hou Ki", style: const TextStyle(fontSize: 22, fontWeight: FontWeight.w600),),
          ),
          const Padding(
            padding: const EdgeInsets.fromLTRB(50, 4, 0, 0),
            child: Text("The Elements", style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black54),),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(40, 50, 0, 0),
            child: Image.asset("assets/page 2/img.png", height: 180, width: 300, fit: BoxFit.fill,),
          )
        ],
      ),
    );
  }
}
