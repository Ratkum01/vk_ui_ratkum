import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vk_ui_ratkum/theme.dart';

class SmsMassPage extends StatelessWidget {
  final String imageM;
  final String nameM;
  final String smsM;
  SmsMassPage(
      {super.key,
      required this.imageM,
      required this.nameM,
      required this.smsM});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Row(
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(imageM)),
                color: Colors.white,
                shape: BoxShape.circle),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  nameM,
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                Text(
                  smsM,
                  style: TextStyle(color: primaryGrey2, fontSize: 18),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
