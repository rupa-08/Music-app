import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class premium extends StatefulWidget {
  const premium({Key? key}) : super(key: key);

  @override
  _premiumState createState() => _premiumState();
}

class _premiumState extends State<premium> {
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
                          "Premium",
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
      body: ListView(
        children: [
          Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.width / 40,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 8, 0, 4),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(90.0),
                  child: Image.asset(
                    "assets/page 2/credit.png",
                    color: Colors.orangeAccent.withOpacity(1.0),
                    colorBlendMode: BlendMode.softLight,
                    fit: BoxFit.fill,
                    height: MediaQuery.of(context).size.height / 4,
                    width: MediaQuery.of(context).size.width / 1.3,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(10, 50, 0, 5),
                child: Text(
                  "Go premium for unlimited access",
                  style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 0, 15),
                child: Text(
                  "   Get unlimted ad-free musics with free \n           downloads and offline albums \n                            streaming.",
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black54),
                ),
              ),
              const Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 0, 5),
                child: custom_button2(),
              ),const Padding(
                padding: EdgeInsets.fromLTRB(10, 5, 0, 15),
                child: custom_button3(),
              ),const Padding(
                padding: EdgeInsets.fromLTRB(10, 30, 0, 15),
                child: custom_button1(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class custom_button1 extends StatelessWidget {
  const custom_button1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 15,
      width: MediaQuery.of(context).size.width / 1.3,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: HexColor("#7583CA"),
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 3,
                blurRadius: 5,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "PREMIUM",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class custom_button2 extends StatelessWidget {
  const custom_button2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 15,
      width: MediaQuery.of(context).size.width / 1.3,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.white,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 3,
                blurRadius: 5,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  "Per Months",
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  "\$3",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class custom_button3 extends StatelessWidget {
  const custom_button3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 15,
      width: MediaQuery.of(context).size.width / 1.3,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.white,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
                bottomLeft: Radius.circular(10),
                bottomRight: Radius.circular(10)),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 3,
                blurRadius: 5,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  "1 Year",
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Text(
                  "\$33",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

