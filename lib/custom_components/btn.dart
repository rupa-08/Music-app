import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class btn_ extends StatelessWidget {
  const btn_({
    Key? key,
    this.btn_txt,
    this.press,
  }) : super(key: key);
  final String? btn_txt;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return
      Container(
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
          onPressed: press as void Function()?,
          child: Text(
            btn_txt!,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          ),
        ),
      );


  }
}


class btn2 extends StatelessWidget {
  const btn2({
    Key? key,
    this.btn_txt,
    this.press,
  }) : super(key: key);
  final String? btn_txt;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return
      Container(
        height: MediaQuery.of(context).size.height/13,
        width: MediaQuery.of(context).size.width/1.15,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(29),
          child: ElevatedButton(

            style: ElevatedButton.styleFrom(
              primary: Colors.purple,
              //primary: Colors.blue,
              //onPrimary: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32.0),
              ),
            ),
            onPressed: press as void Function()?,
            child: Text(
              btn_txt!,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
              ),
            ),
          ),
        ),
      );


  }
}
