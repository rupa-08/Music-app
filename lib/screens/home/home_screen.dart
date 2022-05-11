import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:music_app/custom_components/custom_home_card.dart';
import 'package:music_app/screens/home/browse.dart';
import 'package:music_app/screens/home/music.dart';
import 'package:music_app/screens/sign_in.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  _homeState createState() => _homeState();
}

class _homeState extends State<home> {
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
                          "Music",
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
                                  hintText: "Search your favourite songs",
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
        padding: const EdgeInsets.fromLTRB(10, 20, 10, 18),
        child: SizedBox(
            height: MediaQuery.of(context).size.height / 1,
            child: ListView(
              children: [
                const Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Trending Songs",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 3.5,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: const [
                       Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: song_custom_card(
                          background_img: "assets/home/trending/3.png",
                          title: "Nepali Latest",
                          txt: "All Type",
                        ),
                      ),
                       Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: song_custom_card(
                          background_img: "assets/home/trending/1.png",
                          title: "Hindi Latest",
                          txt: "All Type",
                        ),
                      ),
                       Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: song_custom_card(
                          background_img: "assets/home/trending/2.png",
                          title: "English Latest",
                          txt: "All Type",
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Recommended",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 3.5,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: const [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: song_custom_card(
                          background_img: "assets/home/recommended/3.png",
                          title: "Angel",
                          txt: "Judas Priest",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: song_custom_card(
                          background_img: "assets/home/recommended/2.png",
                          title: "Blowin' In wind",
                          txt: "Bob Dylan",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: song_custom_card(
                          background_img: "assets/home/recommended/1.png",
                          title: "Cliche",
                          txt: "Sub Urban",
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Genres",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 3.5,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: const [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: song_custom_card(
                          background_img: "assets/home/genre/2.png",
                          title: "COUNTRY",
                          txt: "50 Tracks",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: song_custom_card(
                          background_img: "assets/home/genre/3.png",
                          title: "Rock",
                          txt: "60 Tracks",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: song_custom_card(
                          background_img: "assets/home/genre/1.png",
                          title: "POP",
                          txt: "100 Tracks",
                        ),
                      ),
                    ],
                  ),
                ),
                const Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Categories",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 3.5,
                  child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: const [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: song_custom_card(
                          background_img: "assets/home/genre/3.png",
                          title: "New Release",
                          txt: "50 Tracks",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: song_custom_card(
                          background_img: "assets/home/caregories/2.png",
                          title: "Party",
                          txt: "150 Tracks",
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: song_custom_card(
                          background_img: "assets/home/caregories/3.png",
                          title: "Relax",
                          txt: "60 Tracks",
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
