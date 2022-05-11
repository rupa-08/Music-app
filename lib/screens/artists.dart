import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:music_app/custom_components/artists_custom_browse.dart';
import 'package:music_app/screens/sign_in.dart';

import 'home/browse.dart';

class artists extends StatefulWidget {
  const artists({Key? key}) : super(key: key);

  @override
  _artistsState createState() => _artistsState();
}

class _artistsState extends State<artists> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const sign_in();
                    }));
                  },
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
        bottom: PreferredSize(
            child: Container(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 8, 20, 4),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "Artists",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        IconButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return const browse();
                              }));
                            },
                            icon: Icon(Icons.menu))
                      ],
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 20, 2),
                      child: Column(
                        children: [
                          TextField(
                              cursorColor: Colors.deepPurple,
                              decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.search),
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(40.0),
                                  ),
                                  filled: true,
                                  isDense: true,
                                  contentPadding: EdgeInsets.all(8),
                                  hintStyle: TextStyle(color: Colors.grey[800]),
                                  hintText: "Search your favourite artists",
                                  fillColor: Colors.white70)),
                        ],
                      ))
                ],
              ),
            ),
            preferredSize: Size.fromHeight(110)),
      ),
      backgroundColor: HexColor("#F9D8AC"),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 18),
        child: SizedBox(
          height: MediaQuery.of(context).size.height / 1,
          child: ListView(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 20,
                child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Center(
                        child: SizedBox(
                          height: 40,
                          width: 50,
                          child: Card(
                            color: Colors.blueAccent.shade100,
                            shape: StadiumBorder(
                              side: BorderSide(
                                color: Colors.blueAccent.shade100,
                                width: 2.0,
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Text(
                                  "All",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      Center(
                        child: SizedBox(
                          height: 40,
                          width: 50,
                          child: Card(
                            color: Colors.blueAccent.shade100,
                            shape:  StadiumBorder(
                              side: BorderSide(
                                color: Colors.blueAccent.shade100,
                                width: 2.0,
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Text(
                                  "Pop",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      Center(
                        child: SizedBox(
                          height: 40,
                          width: 60,
                          child: Card(
                            color: Colors.blueAccent.shade100,
                            shape:  StadiumBorder(
                              side: BorderSide(
                                color: Colors.blueAccent.shade100,
                                width: 2.0,
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Text(
                                  "Soul",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),Center(
                        child: SizedBox(
                          height: 40,
                          width: 60,
                          child: Card(
                            color: Colors.blueAccent.shade100,
                            shape: StadiumBorder(
                              side: BorderSide(
                                color: Colors.blueAccent.shade100,
                                width: 2.0,
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Text(
                                  "Rock",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),Center(
                        child: SizedBox(
                          height: 40,
                          width: 60,
                          child: Card(
                            color: Colors.blueAccent.shade100,
                            shape: StadiumBorder(
                              side: BorderSide(
                                color: Colors.blueAccent.shade100,
                                width: 2.0,
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Text(
                                  "Jazz",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),Center(
                        child: SizedBox(
                          height: 40,
                          width: 60,
                          child: Card(
                            color: Colors.blueAccent.shade100,
                            shape: StadiumBorder(
                              side: BorderSide(
                                color: Colors.blueAccent.shade100,
                                width: 2.0,
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Text(
                                  "Kids",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),Center(
                        child: SizedBox(
                          height: 40,
                          width: 50,
                          child: Card(
                            color: Colors.blueAccent.shade100,
                            shape: StadiumBorder(
                              side: BorderSide(
                                color: Colors.blueAccent.shade100,
                                width: 2.0,
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Text(
                                  "Sad",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),Center(
                        child: SizedBox(
                          height: 40,
                          width: 70,
                          child: Card(
                            color: Colors.blueAccent.shade100,
                            shape: StadiumBorder(
                              side: BorderSide(
                                color: Colors.blueAccent.shade100,
                                width: 2.0,
                              ),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: const [
                                Text(
                                  "Happy",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),


                    ]),
              ),

              const Padding(
                padding: const EdgeInsets.fromLTRB(8, 23, 0, 8),
                child: Text(
                  "Browse All",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
              ),

              const browse_artists(
                img: "assets/page 2/browse all/1.png",
                title: "BobMarley",
                txt: "Reggeae Fork",
                img_: "assets/page 2/browse all/2.png",
                title_: "BobMarley",
                txt_: "Reggeae Fork",
              ),
              const browse_artists(
                img: "assets/page 2/browse all/5.png",
                title: "BobMarley",
                txt: "Reggeae Fork",
                img_: "assets/page 2/browse all/4.png",
                title_: "BobMarley",
                txt_: "Reggeae Fork",
              ),
              const browse_artists(
                img: "assets/page 2/browse all/6.png",
                title: "BobMarley",
                txt: "Reggeae Fork",
                img_: "assets/page 2/browse all/3.png",
                title_: "BobMarley",
                txt_: "Reggeae Fork",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
