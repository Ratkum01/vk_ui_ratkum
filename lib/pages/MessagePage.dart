import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vk_ui_ratkum/theme.dart';
import 'package:vk_ui_ratkum/utils/smsMassPage.dart';

import '../utils/glavPage/storisGlavPage.dart';

//Работа с Апп Бар 


class MessagePage extends StatelessWidget {
  MessagePage({super.key});
  final List storis = [
    'assets/images/ratkum.jpeg',
    'assets/images/ava1.jpg',
    'assets/images/ava2.jpg',
    'assets/images/ava3.jpg',
    'assets/images/ava4.jpg',
    'assets/images/ava1.jpg',
    'assets/images/ava2.jpg',
    'assets/images/ava3.jpg',
  ];
  final List storisText = [
    'Ratkum',
    'Jojo',
    'Mike',
    'Jone',
    'Subziro',
    'Shone',
    'Porsane',
    'Tesla'
  ];
  final List imageM = [
    'assets/images/massageImages/kj.jpg',
    'assets/images/massageImages/ggg.jpg',
    'assets/images/massageImages/im.jpg',
    'assets/images/massageImages/kt.jpg',
    'assets/images/massageImages/sg.jpg',
    'assets/images/massageImages/sj.jpg',
    'assets/images/massageImages/ts.jpg'
  ];
  final List nameM = [
    'Кендал Дженнар',
    'Генади Головкин',
    'Илон Маск',
    'Касым Жомарт Токаев',
    'Селена Гомес',
    'Стив Джобс',
    'тони Старк',
  ];
  final List smsM = [
    'не бросай меня Раткум <3',
    'жо жо брат коркам',
    'Қарызға тиін бар ма?',
    'Ақ-Ордаға шақырамыз',
    'Я же любила тебя',
    'Айфон аласын ба ? қымбат емес',
    'Брат көмек керек болыптұр',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarMet(),
      body: Container(
        
        color: Colors.black,
        child: SingleChildScrollView(
            child: Column(
             mainAxisSize: MainAxisSize.min,
          children: [
            Container(
                padding: EdgeInsets.only(top: 15),
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: storis.length,
                    itemBuilder: (context, index) => Column(
                          children: [
                            StorisGlavPage(
                                storis: storis[index],
                                storisText: storisText[index])
                          ],
                        ))),
            Divider(
              color: primaryGrey2,
              indent: 20,
              endIndent: 20,
            ),
            Flexible(
                child: ListView.builder(
                  // scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                    itemCount: nameM.length,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) => Column(
                          children: [
                           SmsMassPage(imageM: imageM[index], nameM: nameM[index], smsM: smsM[index])
                          ],
                        )))
          ],
        )),
      ),
    );
  }

  AppBar _appBarMet() {
    return AppBar(
      backgroundColor: Colors.black,
      title: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/ratkum.jpeg')),
                      color: Colors.purple,
                      shape: BoxShape.circle),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Главная",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
            Container(
              width: 140,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.add_circle_outline_sharp,
                    color: Colors.white,
                    size: 30,
                  ),
                  Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 30,
                  ),
                  Icon(
                    Icons.notifications_none,
                    color: Colors.white,
                    size: 30,
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
