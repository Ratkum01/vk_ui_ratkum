import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vk_ui_ratkum/theme.dart';

class BlockService1 extends StatelessWidget {
  final String text1;
  final String text2;
  final String text3;

 const  BlockService1({super.key, required this.text1, required this.text2, required this.text3  });

  @override
  
  Widget build(BuildContext context) {
    
    return Container(
                        height: 70,
                        width: 130,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: primaryColor),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                text1,
                                style:
                                    TextStyle(color: Colors.white, fontSize: 15),
                              ),
                              Text(
                                text2 ,
                                
                                style:
                                    TextStyle(color: primaryGrey2, fontSize: 12),
                              ),
                              Text(
                                text3,
                                style:
                                    TextStyle(color: primaryGrey2, fontSize: 12),
                              )
                            ],
                          ),
                        ),
                      );
  }
}