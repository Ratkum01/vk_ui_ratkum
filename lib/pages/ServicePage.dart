import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vk_ui_ratkum/theme.dart';
import 'package:vk_ui_ratkum/utils/servicePage/blockSetvice1.dart';

import '../utils/glavPage/storisGlavPage.dart';

class ServicePage extends StatelessWidget {
  ServicePage({super.key});
  final List dlyavas = [
    'assets/images/serviceImages/1.jpg',
    'assets/images/serviceImages/2.jpg',
    'assets/images/serviceImages/3.jpg',
    'assets/images/serviceImages/4.jpg',
    'assets/images/serviceImages/5.png',
    'assets/images/serviceImages/6.png',
    'assets/images/serviceImages/7.png',
  ];
  final List textdlyavas = [
    'Акции',
    'Трансляции',
    'Бутылка',
    'Подарок',
    'Желание',
    'Печенье',
    'Видео'
  ];
  final List textSM = [
    'Популярные мемы',
    'Хочу позвонить другу',
    'Топ топ',
    'Что такое Вк',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Expanded(
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                _appBarService(),
                Padding(
                  padding: const EdgeInsets.only(top: 20, bottom: 10),
                  child: _block1(),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(15)),
                  height: 250,
                  child: Column(
                    children: [
                      _box2(),
                      Divider(
                        color: primaryGrey,
                        thickness: 1,
                        indent: 15,
                        endIndent: 15,
                      ),
                      _box3_vseService(),
                    ],
                  ),
                ),
                _dlyaVasMet(),
                _sprositeMarMet(),
                _zimnieStikMet(),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    height: 250,
                    decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.circular(15)),
                    child: Column(children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10, left: 15),
                            child: Text(
                              'Cпорт',
                              style:
                                  TextStyle(color: primaryGrey2, fontSize: 15),
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
                      Row(
                        children: [
                          
                        ],
                      )
                    ]),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding _zimnieStikMet() {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: Container(
        height: 250,
        decoration: BoxDecoration(
            color: primaryColor, borderRadius: BorderRadius.circular(20)),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 5, bottom: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 15),
                      child: Text(
                        'Зимние стикеры',
                        style: TextStyle(color: primaryGrey2, fontSize: 15),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: primaryGrey2,
                          borderRadius: BorderRadius.circular(8)),
                      child: Text(
                        'ПРОМО',
                      ),
                    ),
                  ],
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
          Container(
            height: 180,
            decoration: BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image:
                        AssetImage('assets/images/serviceImages/shablon.jpg')),
                color: primaryBlue),
          )
        ]),
      ),
    );
  }

  Padding _sprositeMarMet() {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        height: 110,
        decoration: BoxDecoration(
            color: primaryColor, borderRadius: BorderRadius.circular(15)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 15),
                  child: Text(
                    'Спросите марусю',
                    style: TextStyle(color: primaryGrey2, fontSize: 15),
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
            Container(
              height: 40,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: textSM.length,
                  itemBuilder: (context, index) => Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Container(
                              padding: EdgeInsets.all(8),
                              height: 40,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: primaryBlue, width: 1),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Center(
                                  child: Text(
                                textSM[index],
                                textAlign: TextAlign.center,
                                style: TextStyle(color: primaryBlue),
                              )),
                            ),
                          ),
                        ],
                      )),
            ),
          ],
        ),
      ),
    );
  }

  Padding _dlyaVasMet() {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: Container(
        height: 160,
        decoration: BoxDecoration(
            color: primaryColor, borderRadius: BorderRadius.circular(20)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10, left: 15),
              child: Text(
                'Для вас',
                style: TextStyle(color: primaryGrey2, fontSize: 15),
              ),
            ),
            Container(
              // padding: EdgeInsets.only(top: ),
              height: 130,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: dlyavas.length,
                  itemBuilder: (context, index) => Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10, top: 10),
                            child: Column(
                              children: [
                                Container(
                                  width: 80,
                                  height: 80,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(dlyavas[index])),
                                      color: primaryBlue,
                                      borderRadius: BorderRadius.circular(15)),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  textdlyavas[index],
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            ),
                          )
                        ],
                      )),
            )
          ],
        ),
      ),
    );
  }

  Padding _box3_vseService() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.apps_rounded,
            size: 40,
            color: primaryBlue,
          ),
          SizedBox(
            width: 20,
          ),
          Expanded(
              child: Text(
            'Все сервисы',
            style: TextStyle(color: Colors.white, fontSize: 18),
          )),
          Icon(
            Icons.navigate_next,
            color: primaryGrey2,
            size: 35,
          )
        ],
      ),
    );
  }

  Padding _box2() {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 79, 32, 26),
                    borderRadius: BorderRadius.circular(10)),
                child: Icon(
                  Icons.people_outline,
                  color: Colors.red,
                  size: 35,
                ),
              ),
              Text(
                'Друзья',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 26, 69, 27),
                    borderRadius: BorderRadius.circular(10)),
                child: Icon(
                  Icons.gamepad_outlined,
                  color: Colors.green,
                  size: 35,
                ),
              ),
              Text(
                'Игры',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          //2
          Column(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 77, 58, 31),
                    borderRadius: BorderRadius.circular(10)),
                child: Icon(
                  Icons.contacts_outlined,
                  color: Colors.orange,
                  size: 35,
                ),
              ),
              Text(
                'Сообщество',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 96, 89, 25),
                    borderRadius: BorderRadius.circular(10)),
                child: Icon(
                  Icons.sentiment_satisfied_sharp,
                  color: Colors.yellow,
                  size: 35,
                ),
              ),
              Text(
                'Стикеры',
                style: TextStyle(color: Colors.white),
              )
            ],
          ),
          //3
          Column(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 85, 21, 42),
                    borderRadius: BorderRadius.circular(10)),
                child: Icon(
                  Icons.library_music_outlined,
                  color: Colors.pink,
                  size: 35,
                ),
              ),
              Text(
                'Музыка',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 26, 58, 84),
                    borderRadius: BorderRadius.circular(10)),
                child: Icon(
                  Icons.directions_run_sharp,
                  color: Colors.blue,
                  size: 35,
                ),
              ),
              Text(
                'Шаги',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
          //4
          Column(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 26, 58, 84),
                    borderRadius: BorderRadius.circular(10)),
                child: Icon(
                  Icons.directions_run_sharp,
                  color: Colors.blue,
                  size: 35,
                ),
              ),
              Text(
                'Шаги',
                style: TextStyle(color: Colors.white),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 69, 25, 77),
                    borderRadius: BorderRadius.circular(10)),
                child: Icon(
                  Icons.favorite_border_rounded,
                  color: Colors.purple,
                  size: 35,
                ),
              ),
              Text(
                'Знакомство',
                style: TextStyle(color: Colors.white),
              ),
            ],
          )
        ],
      ),
    );
  }

  Row _block1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BlockService1(
          text1: '-21 C',
          text2: 'ночью -21 С',
          text3: 'утром -16 С',
        ),
        BlockService1(
          text1: 'Спросите Марасую',
          text3: '',
          text2: '',
        ),
        BlockService1(
          text1: 'Haha',
          text2: 'GG',
          text3: 'suk',
        )
      ],
    );
  }

  Padding _appBarService() {
    return Padding(
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
                "Сервисы",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ],
          ),
          Container(
            width: 120,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 30,
                ),
                Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: 30,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
