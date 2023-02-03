import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/CalculateDimensions.dart';

class TradeZoneScreen extends StatefulWidget {
  const TradeZoneScreen({super.key});

  @override
  State<TradeZoneScreen> createState() => _TradeZoneScreenState();
}

class _TradeZoneScreenState extends State<TradeZoneScreen> {
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
              "FREE TRADE",
              style: TextStyle(
                fontFamily: 'BebasNeue',
                fontWeight: FontWeight.w700,
                fontSize: getTextSize(textScale, 50),
              ),
            ),
            Text(
              "ZONE MAP",
              style: TextStyle(
                fontFamily: 'BebasNeue',
                fontWeight: FontWeight.w700,
                fontSize: getTextSize(textScale, 50),
              ),
            ),
          ],
        ),
      ),
      body: SizedBox(
        height: getHeight(screenHeight, 950),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: getHeight(screenHeight, 9),
                  bottom: getHeight(screenHeight, 10)),
              child: SizedBox(
                height: getHeight(screenHeight, 15),
                child: Container(color: Color(0XFF7EE1F8)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  top: getHeight(screenHeight, 50),
                  left: getHeight(screenWidth, 130),
                  right: getHeight(screenWidth, 130)),
              child: SizedBox(
                height: getHeight(screenHeight, 3),
                child: Container(color: Color(0XFFE01737)),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                top: getHeight(screenHeight, 35),
                bottom: getHeight(screenHeight, 35),
                left: getHeight(screenWidth, 150),
                right: getHeight(screenWidth, 150),
              ),
              height: getHeight(screenHeight, 150),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/icons/trade1.png',
                        height: getHeight(screenHeight, 100),
                        width: getHeight(screenWidth, 150),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: getHeight(screenWidth, 15),
                        ),
                        child: Text(
                          "FREE TRADE \nZONE PARKS",
                          style: TextStyle(
                            fontFamily: 'BebasNeue',
                            fontWeight: FontWeight.w400,
                            fontSize: getTextSize(textScale, 17),
                            color: Color(0xFF004C98),
                          ),
                        ),
                      ),
                    ],
                  ),
                  VerticalDivider(
                    thickness: getHeight(screenWidth, 1),
                    color: Color(0xFF004C98),
                    width: getHeight(screenWidth, 30),
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/icons/trade2.png',
                        height: getHeight(screenHeight, 100),
                        width: getHeight(screenWidth, 150),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: getHeight(screenWidth, 15),
                        ),
                        child: Text(
                          "  FREE TRADE \nSPECIAL ZONE",
                          style: TextStyle(
                            fontFamily: 'BebasNeue',
                            fontWeight: FontWeight.w400,
                            fontSize: getTextSize(textScale, 17),
                            color: Color(0xFF004C98),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  bottom: getHeight(screenHeight, 35),
                  left: getHeight(screenWidth, 130),
                  right: getHeight(screenWidth, 130)),
              child: SizedBox(
                height: getHeight(screenHeight, 2),
                child: Container(
                  color: Color(0XFFE01737),
                ),
              ),
            ),
            Image.asset(
              'assets/images/tradezonemap.png',
              height: getHeight(screenHeight, 500),
              width: getHeight(screenWidth, 950),
            ),
          ],
        ),
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
