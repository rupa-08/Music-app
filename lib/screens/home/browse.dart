import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:music_app/custom_components/browse_card_1.dart';
import 'package:music_app/screens/home/home_screen.dart';
import 'package:music_app/screens/home/music.dart';

class browse extends StatefulWidget {

  const browse({Key? key}) : super(key: key);

  @override
  _browseState createState() => _browseState();
}

class _browseState extends State<browse> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> _widgetOptions = <Widget>[
    Column(children: [
      Text("vghvhgg")
    ],),

    Column(children: [
      Text("vghvhgg")
    ],),
    Column(children: [
      Text("vghvhgg")
    ],),
    Column(children: [
      Text("vghvhgg")
    ],),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

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
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return const home();
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
              child: Padding(
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
                  )),
            ),
            preferredSize: const Size.fromHeight(83)),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 8, 20, 18),
        child: SizedBox(
          height: MediaQuery.of(context).size.height / 1,
          child: ListView(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 3.5,
                child: ListView(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    children: const [
                      card_1(
                        img: "assets/page 2/Search/3.png",
                        title: "Party Moods",
                        txt: "Holidays & Dance",
                      ),
                      card_1(
                        img: "assets/page 2/Search/2.png",
                        title: "Disney Hits",
                        txt: "Kids Zone",
                      ),
                      card_1(
                        img: "assets/page 2/Search/3.png",
                        title: "Peach Mood",
                        txt: "Instrumental",
                      )

                ]),
              ),
              const Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Browse All",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
              ),
              const card_2(
                img: "assets/page 2/browse/2.png",
                title: "Saiyyan",
                txt: "Kailash Kher",
              ),InkWell(
                onTap: (){

                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                        return const music();
                      }));
                },
                child: const card_2(
                  img: "assets/page 2/browse/1.png",
                  title: "Birsiney Hau Ki",
                  txt: "The Elements",
                ),
              ),const card_2(
                img: "assets/page 2/browse/5.png",
                title: "Sasto Mutu",
                txt: "Sajjan Raj Vaidya",
              ),const card_2(
                img: "assets/page 2/browse/4.png",
                title: "Enough For You",
                txt: "Olivia Rodrigo",
              ),const card_2(
                img: "assets/page 2/browse/6.png",
                title: "Lovely",
                txt: "Billie Eilish, Khalid",
              ),const card_2(
                img: "assets/page 2/browse/3.png",
                title: "Peach",
                txt: "Raja Kumari",
              ),
            ],

          ),

        ),

      ),

      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note_outlined),
            label: 'Music',
            backgroundColor: HexColor("#F9D8AC"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Artists',
            backgroundColor: HexColor("#F9D8AC"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.queue_music),
            label: 'Playlist',
            backgroundColor: HexColor("#F9D8AC"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.storage),
            label: 'Premium',
            backgroundColor: HexColor("#F9D8AC"),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.deepPurpleAccent,
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,

      ),
    );
  }
}
