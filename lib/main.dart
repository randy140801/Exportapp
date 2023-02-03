import 'dart:async';

import 'package:exportapp/Screens/HomeScreen.dart';
import 'package:exportapp/models/RankingData.dart';
import 'package:exportapp/widgets/CalculateDimensions.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Export APP',
      home: ExportGoodsScreen(),
    );
  }
}

class ExportGoodsScreen extends StatefulWidget {
  const ExportGoodsScreen({super.key});

  @override
  State<ExportGoodsScreen> createState() => _ExportGoodsScreenState();
}

class _ExportGoodsScreenState extends State<ExportGoodsScreen> {
  @override
  Widget build(BuildContext context) {
    final textScale = MediaQuery.of(context).size.height * 0.01;
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF004C98),
        toolbarHeight: getHeight(screenHeight, 160),
        elevation: 0,
        centerTitle: true,
        title: Column(
          children: [
            Text(
              "DOMINICAN REPUBLIC",
              style: TextStyle(
                fontFamily: 'BebasNeue',
                fontWeight: FontWeight.w700,
                fontSize: getTextSize(textScale, 50),
              ),
            ),
            Text(
              "EXPORTS OF GOODS",
              style: TextStyle(
                fontFamily: 'BebasNeue',
                fontWeight: FontWeight.w700,
                fontSize: getTextSize(textScale, 50),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: getHeight(screenHeight, 9),
                bottom: getHeight(screenHeight, 20)),
            child: SizedBox(
              height: getHeight(screenHeight, 15),
              child: Container(color: Color(0XFF7EE1F8)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: getHeight(screenWidth, 120),
              right: getHeight(screenWidth, 120),
            ),
            child: Column(
              children: [
                Text(
                  "PERIOD 2010-2022",
                  style: TextStyle(
                    fontFamily: 'BebasNeue',
                    fontWeight: FontWeight.w700,
                    fontSize: getTextSize(textScale, 60),
                    color: Color(0XFF03B2EF),
                  ),
                ),
                Image.asset(
                  'assets/images/bar graph.png',
                ),
                Container(
                  width: getHeight(screenHeight, 500),
                  height: getHeight(screenHeight, 120),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Color(0xFF004C98),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                            right: getHeight(screenWidth, 20),
                          ),
                          child: Image.asset(
                            'assets/icons/award.png',
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.ideographic,
                          children: [
                            Text(
                              "USD\$14,200 M",
                              style: TextStyle(
                                fontFamily: 'BebasNeue',
                                fontWeight: FontWeight.w700,
                                fontSize: getTextSize(textScale, 45),
                                color: Color(0XFFFFFFFF),
                              ),
                            ),
                            Text(
                              "2022",
                              style: TextStyle(
                                fontFamily: 'BebasNeue',
                                fontWeight: FontWeight.w700,
                                fontSize: getTextSize(textScale, 45),
                                color: Color(0XFF03B2EF),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
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
