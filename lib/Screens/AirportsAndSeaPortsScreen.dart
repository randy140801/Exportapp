import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/CalculateDimensions.dart';

class AirportsAndSeaportsScreen extends StatefulWidget {
  const AirportsAndSeaportsScreen({super.key});

  @override
  State<AirportsAndSeaportsScreen> createState() =>
      _AirportsAndSeaportsScreenState();
}

class _AirportsAndSeaportsScreenState extends State<AirportsAndSeaportsScreen> {
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
              "AIRPORTS AND",
              style: TextStyle(
                fontFamily: 'BebasNeue',
                fontWeight: FontWeight.w700,
                fontSize: getTextSize(textScale, 50),
              ),
            ),
            Text(
              "CARGO PORTS",
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
              height: getHeight(screenHeight, 140),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Text(
                        "8",
                        style: TextStyle(
                          fontFamily: 'BebasNeue',
                          fontWeight: FontWeight.w700,
                          fontSize: getTextSize(textScale, 80),
                          color: Color(0XFFE01737),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: getHeight(screenWidth, 10),
                        ),
                        child: Column(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/airport.svg',
                              height: getHeight(screenHeight, 45),
                              width: getHeight(screenWidth, 45),
                              color: Color(0xFF004C98),
                            ),
                            Text(
                              "Airports",
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontWeight: FontWeight.w100,
                                fontSize: getTextSize(textScale, 14),
                                color: Color(0xFF004C98),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  VerticalDivider(
                    thickness: getHeight(screenWidth, 1),
                    color: Color(0xFF004C98),
                  ),
                  Row(
                    children: [
                      Text(
                        "5",
                        style: TextStyle(
                          fontFamily: 'BebasNeue',
                          fontWeight: FontWeight.w700,
                          fontSize: getTextSize(textScale, 80),
                          color: Color(0XFF00B5EC),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: getHeight(screenWidth, 10),
                        ),
                        child: Column(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/cruise.svg',
                              height: getHeight(screenHeight, 45),
                              width: getHeight(screenWidth, 45),
                              color: Color(0xFF004C98),
                            ),
                            Text(
                              "Cruise Ports",
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontWeight: FontWeight.w100,
                                fontSize: getTextSize(textScale, 14),
                                color: Color(0xFF004C98),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  VerticalDivider(
                    thickness: getHeight(screenWidth, 1),
                    color: Color(0xFF004C98),
                  ),
                  Row(
                    children: [
                      Text(
                        "12",
                        style: TextStyle(
                          fontFamily: 'BebasNeue',
                          fontWeight: FontWeight.w700,
                          fontSize: getTextSize(textScale, 80),
                          color: Color(0xFF004C98),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: getHeight(screenWidth, 10),
                        ),
                        child: Column(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/port.svg',
                              height: getHeight(screenHeight, 45),
                              width: getHeight(screenWidth, 45),
                              color: Color(0xFF004C98),
                            ),
                            Text(
                              "Cargo Ports",
                              style: TextStyle(
                                fontFamily: 'Avenir',
                                fontWeight: FontWeight.w100,
                                fontSize: getTextSize(textScale, 13),
                                color: Color(0xFF004C98),
                              ),
                            ),
                          ],
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
                right: getHeight(screenWidth, 130),
              ),
              child: SizedBox(
                height: getHeight(screenHeight, 2),
                child: Container(
                  color: Color(0XFFE01737),
                ),
              ),
            ),
            Image.asset(
              'assets/images/airportsmap.png',
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
