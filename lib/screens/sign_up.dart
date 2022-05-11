import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import 'package:music_app/custom_components/textfield.dart';


class sign_up extends StatefulWidget {
  const sign_up({Key? key}) : super(key: key);

  @override
  _sign_upState createState() => _sign_upState();
}

class _sign_upState extends State<sign_up> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: const Icon(Icons.arrow_back, color: Colors.black54,),
        title:
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "SOULPLAY",
              style:
              TextStyle(color: Colors.deepPurpleAccent, fontSize: 16),
            ),
            Image.network(
              "https://static.thenounproject.com/png/111-200.png",
              height: 30,
              width: 40,
              color: Colors.deepPurple,
            )
          ],
        ),

      ),
      backgroundColor: HexColor("#F9D8AC"),
      body: Container(
          child: SizedBox(
            height: MediaQuery.of(context).size.height / 1,
            width: MediaQuery.of(context).size.width / 1,
            child: ListView(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                    SizedBox(
                      height: MediaQuery.of(context).size.width / 4,
                    ),
                    const Text(
                      "Create your account",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width / 32,
                    ),
                    const Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: custom_button1(),
                    ),
                    const Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: custom_button2(),
                    ),

                    SizedBox(
                      height: MediaQuery.of(context).size.width / 16,
                    ),
                    const Text(
                      "OR LOGIN WITH EMAIL.",
                      style: TextStyle(color: Colors.black54, fontSize: 17),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.width / 16,
                    ),
                    const input_field(),
                    SizedBox(
                      height: MediaQuery.of(context).size.width / 16,
                    ),

                  ],
                ),
              ],
            ),
          )),
    );
  }
}

class custom_button1 extends StatelessWidget {


  const custom_button1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/13,
      width: MediaQuery.of(context).size.width/1.15,
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
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPnTE-MszJJQyyfg1fvDjY4CmQFt6hhfpWhQ&usqp=CAU"),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("CONTINUE WITH FACEBOOK",),
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
      height: MediaQuery.of(context).size.height/13,
      width: MediaQuery.of(context).size.width/1.15,
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
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network("https://cdn-icons-png.flaticon.com/512/2965/2965278.png",),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("CONTINUE WITH GOOGLE",),
              )
            ],
          ),
        ),
      ),
    );
  }
}

