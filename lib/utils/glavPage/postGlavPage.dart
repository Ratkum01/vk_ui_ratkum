import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vk_ui_ratkum/theme.dart';

class PostGlavPage extends StatelessWidget {
  const PostGlavPage(
      {super.key,
      required this.logoPub,
      required this.namePub,
      required this.textpub,
      required this.photoPub
      });
  final String logoPub;
  final String namePub;

  final String textpub;
  final String photoPub;
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: primaryColor,
        ),
        height: 530,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, bottom: 5, left: 20, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(logoPub)),
                        color: Colors.blue,
                        shape: BoxShape.circle),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          namePub,
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                        Text(
                          'сегодня 12:40',
                          style: TextStyle(color: primaryGrey2, fontSize: 15),
                        )
                      ],
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.more_vert_sharp,
                        color: primaryGrey2,
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20, left: 20, right: 10),
              child: Row(
                children: [
                  Text(
                    textpub,
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  )
                ],
              ),
            ),
            Container(
              height: 380,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 249, 10, 10),
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage(photoPub))),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, right: 10, top: 8, bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 30,
                        width: 60,
                        decoration: BoxDecoration(
                            color: primaryGrey,
                            borderRadius: BorderRadius.circular(15)),
                        child: Icon(
                          Icons.favorite_border,
                          color: primaryGrey2, 
                          size: 25,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 30,
                        width: 60,
                        decoration: BoxDecoration(
                            color: primaryGrey,
                            borderRadius: BorderRadius.circular(15)),
                        child: Icon(
                          Icons.messenger_outline_sharp,
                          color: primaryGrey2,
                          size: 25,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 30,
                        width: 60,
                        decoration: BoxDecoration(
                            color: primaryGrey,
                            borderRadius: BorderRadius.circular(15)),
                        child: Icon(
                          Icons.send_outlined,
                          color: primaryGrey2,
                          size: 25,
                        ),
                      ),
                    ],
                  ),
                 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.remove_red_eye_outlined,
                        color: primaryGrey2,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '12K',
                        style: TextStyle(color: primaryGrey2),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
