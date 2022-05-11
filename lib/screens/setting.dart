import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:music_app/custom_components/btn.dart';

class setting extends StatefulWidget {
  const setting({Key? key}) : super(key: key);

  @override
  _settingState createState() => _settingState();
}

class _settingState extends State<setting> {
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
                    padding: const EdgeInsets.fromLTRB(8, 8, 20, 4),
                    child: Row(
                      children: [
                        IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
                        const Text(
                          "Settings",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            preferredSize: Size.fromHeight(60)),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
                height: MediaQuery.of(context).size.height / 1.2,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(14),
                      topRight: Radius.circular(14),
                      bottomLeft: Radius.circular(14),
                      bottomRight: Radius.circular(14)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.orangeAccent.withOpacity(0.3),
                      spreadRadius: 1,
                      blurRadius: 5,
                      offset: const Offset(0, 3), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 10),
                      child: Row(
                        children: const [
                          CircleAvatar(
                            radius: 15.0,
                            backgroundColor: Colors.transparent,
                            backgroundImage: NetworkImage(
                              "https://mpng.subpng.com/20180326/wzw/kisspng-computer-icons-user-profile-avatar-female-profile-5ab915f791e2c1.8067312315220792235976.jpg",
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 8, horizontal: 13),
                            child: Text(
                              "Sevetha Thapa",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.w600),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Divider(
                      indent: 10,
                      endIndent: 10,
                      color: Colors.grey,
                    ),
                    Row(children: const [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                        child: Text(
                          "Account Settings",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ]),
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 16),
                          child: Text(
                            "Edit Profile",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w300),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 16),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 16),
                          child: Text(
                            "Change Your Email",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w300),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 16),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 16),
                          child: Text(
                            "Change Password",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w300),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 16),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 16),
                          child: Text(
                            "Personal Information",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w300),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 16),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                          ),
                        )
                      ],
                    ),
                    Row(children: const [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                        child: Text(
                          "Privacy Settings",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ]),
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 16),
                          child: Text(
                            "Cookies",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w300),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 16),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 16),
                          child: Text(
                            "Privacy Policy",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w300),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 16),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                          ),
                        )
                      ],
                    ),
                    Row(children: const [
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                        child: Text(
                          "More",
                          style: TextStyle(
                              fontSize: 14, fontWeight: FontWeight.w600),
                        ),
                      ),
                    ]),
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 16),
                          child: Text(
                            "Dark Mode",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w300),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 16),
                          child: Icon(
                            Icons.toggle_off_outlined,
                            size: 16,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 16),
                          child: Text(
                            "Data & Storage",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w300),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 16),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 16),
                          child: Text(
                            "Notifications",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w300),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 16),
                          child: Icon(
                            Icons.toggle_off_outlined,
                            size: 16,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 16),
                          child: Text(
                            "Help",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w300),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 16),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: const [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 16),
                          child: Text(
                            "About SOULPLAY",
                            style: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w300),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 12, horizontal: 16),
                          child: Icon(
                            Icons.arrow_forward_ios,
                            size: 16,
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                        height: 40,
                        width: 100,
                        child: btn2(
                          btn_txt: "LOGIN",
                        ))
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
