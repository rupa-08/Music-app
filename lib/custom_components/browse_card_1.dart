import 'package:flutter/material.dart';

class card_1 extends StatelessWidget {
  final String? img;
  final String? title;
  final String? txt;

  const card_1({Key? key, this.img, this.title, this.txt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 5, 20, 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              img!,
              height: 150,
              width: 120,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(14, 8, 0, 3),
              child: Text(
                title!,
                style:
                    const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(14, 0, 0, 0),
              child: Text(
                txt!,
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Colors.black54),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class card_2 extends StatelessWidget {
  final String? img;
  final String? title;
  final String? txt;

  const card_2({Key? key, this.img, this.title, this.txt}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Row(
          children: [
            Image.asset(img!, height: 60, width: 60,),
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
            ),
            Spacer(),
            const Icon(Icons.more_horiz, color: Colors.grey,)
          ],

        ),
      ),
    );
  }
}
