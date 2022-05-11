import 'package:flutter/material.dart';

class playlist extends StatelessWidget {
  final String? txt;
  final String? txt_;
  const playlist({Key? key, this.txt, this.txt_}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 14),
      child: Container(
          height: MediaQuery.of(context).size.height / 15,
          width: MediaQuery.of(context).size.width * 0.85,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: Colors.white,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(17),
                topRight: Radius.circular(17),
                bottomLeft: Radius.circular(17),
                bottomRight: Radius.circular(17)),
            boxShadow: [
              BoxShadow(
                color: Colors.orangeAccent.withOpacity(0.1),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 2), // changes position of shadow
              ),
            ],
          ),
          child: Row(children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 22),
              child: Text(txt!, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w700),),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 22),
              child: Text(txt_!, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w700),),
            )
          ],)),
    );
  }
}
