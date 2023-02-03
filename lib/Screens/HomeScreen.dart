import 'package:exportapp/Screens/AirportsAndSeaPortsScreen.dart';
import 'package:exportapp/Screens/ProvincesMapScreen.dart';
import 'package:exportapp/Screens/ScanAndDownloadScreen.dart';
import 'package:exportapp/Screens/StaticMapScreen.dart';
import 'package:exportapp/Screens/TradeZoneScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import '../widgets/CalculateDimensions.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    initialization();
  }

  @override
  Widget build(BuildContext context) {
    final textScale = MediaQuery.of(context).size.height * 0.01;
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFF00B5EC),
        toolbarHeight: getHeight(screenHeight, 160),
        elevation: 0,
        title: Center(
          child: Container(
            height: getHeight(screenHeight, 130),
            width: getHeight(screenWidth, 800),
            child: Image.asset("assets/images/home/mainheader.png"),
          ),
        ),
      ),
      body: SizedBox(
        height: getHeight(screenHeight, 1000),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: getHeight(screenHeight, 9)),
              child: SizedBox(
                height: getHeight(screenHeight, 15),
                child: Container(color: Color(0XFF7EE1F8)),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Image.asset(
                    "assets/images/home/1.png",
                    height: getHeight(screenHeight, 95),
                    width: getHeight(screenWidth, 190),
                  ),
                ),
                Container(
                  child: Image.asset(
                    "assets/images/home/2.png",
                    height: getHeight(screenHeight, 95),
                    width: getHeight(screenWidth, 190),
                  ),
                ),
                Container(
                  child: Image.asset(
                    "assets/images/home/3.png",
                    height: getHeight(screenHeight, 95),
                    width: getHeight(screenWidth, 190),
                  ),
                ),
                Container(
                  child: Image.asset(
                    "assets/images/home/4.png",
                    height: getHeight(screenHeight, 95),
                    width: getHeight(screenWidth, 190),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.only(
                top: getHeight(screenHeight, 10),
                bottom: getHeight(screenHeight, 10),
              ),
              child: Text(
                "          DISCOVER \nOUR MAIN PRODUCTS",
                style: TextStyle(
                  fontFamily: 'BebasNeue',
                  fontSize: getTextSize(textScale, 35),
                  color: Color(0xFF004C98),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProvincesMapScreen(),
                  ),
                );
              },
              child: Padding(
                padding: EdgeInsets.only(bottom: getHeight(screenHeight, 10)),
                child: ButtonDesign(
                    text: "MAIN EXPORT PRODUCTS \n          PER PROVINCE"),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AirportsAndSeaportsScreen(),
                  ),
                );
              },
              child: Padding(
                padding: EdgeInsets.only(bottom: getHeight(screenHeight, 10)),
                child: ButtonDesign(
                    text: "          AIRPORTS \nAND SEA PORTS MAP"),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const TradeZoneScreen(),
                  ),
                );
              },
              child: Padding(
                padding: EdgeInsets.only(bottom: getHeight(screenHeight, 10)),
                child: ButtonDesign(text: "TRADE ZONE MAP"),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ScanAndDownloadScreen(
                      name: "exporters directory",
                    ),
                  ),
                );
              },
              child: Padding(
                padding: EdgeInsets.only(bottom: getHeight(screenHeight, 10)),
                child: ButtonDesign(
                    text: "EXPORTERS DIRECTORY \n              QR CODE"),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ScanAndDownloadScreen(
                      name: "investment guide",
                    ),
                  ),
                );
              },
              child: Container(
                child:
                    ButtonDesign(text: "INVESTMENT GUIDE \n          QR CODE"),
              ),
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

class ButtonDesign extends StatefulWidget {
  ButtonDesign({super.key, required this.text});
  String text;
  @override
  State<ButtonDesign> createState() => _ButtonDesignState();
}

class _ButtonDesignState extends State<ButtonDesign> {
  @override
  Widget build(BuildContext context) {
    final textScale = MediaQuery.of(context).size.height * 0.01;
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      height: getHeight(screenHeight, 80),
      width: getHeight(screenWidth, 550),
      decoration: const BoxDecoration(
        color: Color(0XFF00B5EC),
        borderRadius: BorderRadius.all(
          Radius.circular(60),
        ),
      ),
      child: Center(
        child: Text(
          widget.text,
          style: TextStyle(
              fontFamily: 'BebasNeue',
              fontSize: getTextSize(textScale, 20),
              color: Colors.white),
        ),
      ),
    );
  }
}

void initialization() async {
  await Future.delayed(const Duration(seconds: 5));
  FlutterNativeSplash.remove();
}
