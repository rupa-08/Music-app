import 'package:flutter/material.dart';

class song_custom_card extends StatelessWidget {
  final double coverHeight = 150;
  final String? background_img;
  final String? title;
  final String? txt;
  const song_custom_card({Key? key, this.background_img, this.title, this.txt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.white,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20)),
          boxShadow: [
            BoxShadow(
              color: Colors.orangeAccent.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildCoverImage(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title!, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),),
                  Padding(
                    padding: const EdgeInsets.only(top: 3.0),
                    child: Text(txt!, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black54),),
                  ),
                ],
              ),
            )
          ],
        )


    );
  }

  Widget buildCoverImage() => Container(

    child: Image.asset(
      background_img!,
      width: 155,
      height: coverHeight,
      fit: BoxFit.cover,

    ),
  );
}
