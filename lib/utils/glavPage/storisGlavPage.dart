import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vk_ui_ratkum/theme.dart';

class StorisGlavPage extends StatelessWidget {
  StorisGlavPage({super.key, required this.storis, required this.storisText});
  final String storis;
  final String storisText;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.all(5),
            height: 70,
            width: 70,
            decoration: BoxDecoration(
                border: Border.all(color: primaryBlue, width: 3),
                image: DecorationImage(
                    fit: BoxFit.fill, image: AssetImage(storis)),
                color: Colors.purple,
                shape: BoxShape.circle),
          ),
          Text(
            storisText,
            maxLines: 1,
            style:
                TextStyle(color: Colors.white, overflow: TextOverflow.visible),
          ),
        ],
      ),
    );
  }
}
