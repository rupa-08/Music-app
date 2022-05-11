import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:music_app/custom_components/button.dart';
import 'package:music_app/custom_components/sign_in_input_field.dart';
import 'package:music_app/screens/sign_up.dart';


class sign_in extends StatefulWidget {
  const sign_in({Key? key}) : super(key: key);

  @override
  _sign_inState createState() => _sign_inState();
}

class _sign_inState extends State<sign_in> {
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
            Image.asset(
                "assets/home/logo.png",
                height: 30,
                width: 40
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
                      height: MediaQuery.of(context).size.width / 8,
                    ),
                    const Text(
                      "WELCOME BACK!",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
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
                    const txtfield(),
                    SizedBox(
                      height: MediaQuery.of(context).size.width / 16,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Padding(
                          padding:  EdgeInsets.all(10.0),
                          child: Text(
                            "DON'T HAVE AN ACCOUNT?",
                            style: TextStyle(color: Colors.black54, fontSize: 17),
                          ),
                        ),
                        InkWell(
                          child: const Text(
                            "SIGN UP",
                            style: TextStyle(color: Colors.deepPurpleAccent, fontSize: 17),
                          ),
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) {
                              return sign_up();
                            }));
                          },
                        ),
                      ],)

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
                child: Text("FACEBOOK",),
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
                child: Text("GOOGLE",),
              )
            ],
          ),
        ),
      ),
    );
  }
}

