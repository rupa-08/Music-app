import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class custom_button extends StatelessWidget {
  final String? txt;


  const custom_button({Key? key, this.txt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height/13,
      width: MediaQuery.of(context).size.width/1.15,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(29),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            primary: HexColor("#8E97FD"),
            onPrimary: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(32.0),
            ),
          ),
          onPressed: () {},
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(txt!, style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}
