import 'package:flutter/material.dart';

class browse_artists extends StatelessWidget {

  final String? img;
  final String? title;
  final String? txt;
  final String? img_;
  final String? title_;
  final String? txt_;
  const browse_artists({Key? key, this.img, this.title, this.txt, this.img_, this.title_, this.txt_}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 0, 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(img!, height: 150, width: 150,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 28),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(title!, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),),
                      Padding(
                        padding: const EdgeInsets.only(top: 3.0),
                        child: Text(txt!, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black54),),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),

          Spacer(),

          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 20, 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(img_!, height: 150, width: 150,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(title_!, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600),),
                      Padding(
                        padding: const EdgeInsets.only(top: 3.0),
                        child: Text(txt_!, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black54),),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
