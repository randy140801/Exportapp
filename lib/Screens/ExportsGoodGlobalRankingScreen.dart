import 'package:flutter/material.dart';

import '../models/RankingData.dart';
import '../widgets/CalculateDimensions.dart';

class ExportsGoodGlobalRankingScreen extends StatefulWidget {
  const ExportsGoodGlobalRankingScreen({super.key});

  @override
  State<ExportsGoodGlobalRankingScreen> createState() =>
      _ExportsGoodGlobalRankingScreenState();
}

class _ExportsGoodGlobalRankingScreenState
    extends State<ExportsGoodGlobalRankingScreen> {
  @override
  Widget build(BuildContext context) {
    final textScale = MediaQuery.of(context).size.height * 0.01;
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    const data = <Rankingata>[
      Rankingata('cigar', '1', 'ST.', 'CIGAR EXPORTER', 'WORLDWIDE'),
      Rankingata('rum', '1', 'ST.', 'RUM EXPORTER', 'TO SPAIN'),
      Rankingata(
          'circuit breaker', '1', 'ST.', 'CIRCUIT BREAKER', 'EXPORTER TO USA'),
      Rankingata('avocado', '3', 'RD.', 'AVOCADO EXPORTER', 'TO USA'),
      Rankingata('banana', '3', 'RD.', 'BANANA EXPORTER', 'TO UK'),
      Rankingata('rum', '3', 'RD.', 'RUM EXPORTER', 'TO NETHERLANDS'),
      Rankingata('pineapple', '2', 'ND.', 'PINEAPPLE \nEXPORTER', 'TO ISRAEL'),
      Rankingata('mangoes', '4', 'TH.', 'MANGOES EXPORTER', 'TO NETHERLANDS'),
      Rankingata('cocoa', '5', 'TH.', 'COCOA EXPORTER', 'TO USA'),
      Rankingata('ostomy instruments', '1', 'ST.', 'OSTOMY INSTRUMENTS',
          'EXPORTERS TO USA AND\n      3RD WORLDWIDE'),
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF004C98),
        toolbarHeight: getHeight(screenHeight, 160),
        elevation: 0,
        centerTitle: true,
        title: Column(
          children: [
            Text(
              "DOMINICAN",
              style: TextStyle(
                fontFamily: 'BebasNeue',
                fontWeight: FontWeight.w700,
                fontSize: getTextSize(textScale, 50),
              ),
            ),
            Text(
              "EXPORTS GOODS",
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
          Text(
            "2022",
            style: TextStyle(
              fontFamily: 'BebasNeue',
              fontWeight: FontWeight.w700,
              fontSize: getTextSize(textScale, 50),
              color: Color(0XFF03B2EF),
            ),
          ),
          Text(
            "Global ranking",
            style: TextStyle(
              fontFamily: 'BebasNeue',
              fontWeight: FontWeight.w700,
              fontSize: getTextSize(textScale, 50),
              color: Color(0XFF03B2EF),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: getHeight(screenHeight, 10),
                bottom: getHeight(screenHeight, 10),
                left: getHeight(screenWidth, 130),
                right: getHeight(screenWidth, 130)),
            child: SizedBox(
              height: getHeight(screenHeight, 3),
              child: Container(color: Color(0XFFE01737)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                left: getHeight(screenWidth, 70),
                right: getHeight(screenWidth, 70)),
            child: GridView.count(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              mainAxisSpacing: getHeight(screenHeight, 3),
              childAspectRatio: MediaQuery.of(context).size.aspectRatio * 1.9,
              crossAxisCount: 3,
              children: List.generate(9, (index) {
                return Center(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/icons/ranking/${data[index].icon}.png',
                        height: getHeight(screenHeight, 60),
                        width: getHeight(screenWidth, 60),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.ideographic,
                        children: [
                          Text(
                            data[index].position,
                            style: TextStyle(
                              fontFamily: 'BebasNeue',
                              fontWeight: FontWeight.w400,
                              fontSize: getTextSize(textScale, 30),
                              color: Color(0xFF004C98),
                            ),
                          ),
                          Text(
                            data[index].abv,
                            style: TextStyle(
                              fontFamily: 'BebasNeue',
                              fontWeight: FontWeight.w400,
                              fontSize: getTextSize(textScale, 17),
                              color: Color(0xFF004C98),
                            ),
                          ),
                        ],
                      ),
                      Text(
                        data[index].title,
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.w900,
                          fontSize: getTextSize(textScale, 13),
                          color: Color(0xFF004C98),
                        ),
                      ),
                      Text(
                        data[index].export,
                        style: TextStyle(
                          fontFamily: 'Avenir',
                          fontWeight: FontWeight.w100,
                          fontSize: getTextSize(textScale, 10),
                          color: Color(0xFF004C98),
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
          Center(
            child: Column(
              children: [
                Image.asset(
                  'assets/icons/ranking/${data[9].icon}.png',
                  height: getHeight(screenHeight, 60),
                  width: getHeight(screenWidth, 60),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.ideographic,
                  children: [
                    Text(
                      data[9].position,
                      style: TextStyle(
                        fontFamily: 'BebasNeue',
                        fontWeight: FontWeight.w400,
                        fontSize: getTextSize(textScale, 30),
                        color: Color(0xFF004C98),
                      ),
                    ),
                    Text(
                      data[9].abv,
                      style: TextStyle(
                        fontFamily: 'BebasNeue',
                        fontWeight: FontWeight.w400,
                        fontSize: getTextSize(textScale, 17),
                        color: Color(0xFF004C98),
                      ),
                    ),
                  ],
                ),
                Text(
                  data[9].title,
                  style: TextStyle(
                    fontFamily: 'Avenir',
                    fontWeight: FontWeight.w900,
                    fontSize: getTextSize(textScale, 15),
                    color: Color(0xFF004C98),
                  ),
                ),
                Text(
                  data[9].export,
                  style: TextStyle(
                    fontFamily: 'Avenir',
                    fontWeight: FontWeight.w100,
                    fontSize: getTextSize(textScale, 12),
                    color: Color(0xFF004C98),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        // ignore: sort_child_properties_last
        child: SizedBox(
          height: getHeight(screenHeight, 30),
        ),
        color: Color(0xFF004C98),
      ),
    );
  }
}
