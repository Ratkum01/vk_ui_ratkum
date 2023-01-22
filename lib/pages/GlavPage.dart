import 'package:flutter/material.dart';

import 'package:flutter/src/widgets/framework.dart';

import 'package:vk_ui_ratkum/theme.dart';
import 'package:vk_ui_ratkum/utils/glavPage/postGlavPage.dart';
import 'package:vk_ui_ratkum/utils/glavPage/storisGlavPage.dart';

class GlavPage extends StatelessWidget {
  GlavPage({super.key});
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
  final List logoPubl = [
    'assets/images/logo1.jpg',
    'assets/images/logo2.jpg',
    'assets/images/logo3.jpg',
    'assets/images/logo4.jpg',
    'assets/images/logo5.jpg',
  ];



  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: backColor,
        body: Column(
          children: [
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: primaryColor,
                        border: Border(
                          bottom: BorderSide(color: primaryGrey2, width: 0.5),
                        )),
                    child: Column(
                      children: [
                        //appBAR
                        Padding(
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
                                            image: AssetImage(
                                                'assets/images/ratkum.jpeg')),
                                        color: Colors.purple,
                                        shape: BoxShape.circle),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Главная",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ],
                              ),
                              Container(
                                width: 140,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
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
                        TabBar(indicatorWeight: 2, tabs: [
                          Tab(
                            child: Text(
                              'Новости',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Для вас',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Актуальное',
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                        ]),
                      ],
                    ),
                  ),

                  // //Storis Vk
                  Container(
                      padding: EdgeInsets.only(top: 15),
                      height: 140,
                      width: 200,
                      decoration: BoxDecoration(
                        color: primaryColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                        ),
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

                  //post
                  //надо сократить код

                  PostGlavPage(
                    logoPub: 'assets/images/logo1.jpg',
                    namePub: 'ФАКты',
                    textpub: 'Очень интересно',
                    photoPub: 'assets/images/post.jpg',
                  ),
                  PostGlavPage(
                    logoPub: 'assets/images/logo2.jpg',
                    namePub: 'IT',
                    textpub: 'ЧЕ ?',
                    photoPub: 'assets/images/post4.jpg',
                  ),
                  PostGlavPage(
                    logoPub: 'assets/images/logo3.jpg',
                    namePub: 'PC',
                    textpub: 'Имба',
                    photoPub: 'assets/images/post3.jpg',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
