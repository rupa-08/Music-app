import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:music_app/custom_components/custom_playlist.dart';

class playlists extends StatefulWidget {
  const playlists({Key? key}) : super(key: key);

  @override
  _playlistsState createState() => _playlistsState();
}

class _playlistsState extends State<playlists> {
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
                          "My Playlists",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        IconButton(onPressed: () {}, icon: Icon(Icons.menu))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            preferredSize: Size.fromHeight(70)),
      ),
      body: ListView(children: const [
        Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: playlist(
            txt: "Recently Played",
            txt_: "0",
          ),
        ),playlist(
          txt: "Mostly Played",
          txt_: "0",
        ),playlist(
          txt: "Favourite Song",
          txt_: "0",
        ),playlist(
          txt: "Artists",
          txt_: "0",
        ),playlist(
          txt: "Albums",
          txt_: "0",
        ),
      ]),
    );
  }
}
