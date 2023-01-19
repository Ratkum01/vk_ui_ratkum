import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vk_ui_ratkum/theme.dart';
import 'package:vk_ui_ratkum/utils/servicePage/blockSetvice1.dart';

class ServicePage extends StatelessWidget {
  const ServicePage({super.key});

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
                  color: primaryColor,
                  height: 200,
                  child: Column(children: [
                    Row(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(color: Color.fromARGB(255, 62, 32, 29), borderRadius:BorderRadius.circular(10)),
                          child: Icon(Icons.people_outline, color: Colors.red,),
                        )
                      ],
                    )
                  ],),
                )
              ],
            ),
          ),
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

  Container _appBarService() {
    return Container(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.purple, shape: BoxShape.circle),
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
        ],
      ),
    );
  }
}
