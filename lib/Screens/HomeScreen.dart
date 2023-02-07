import 'dart:async';
import 'package:exportapp/Screens/AirportsAndSeaPortsScreen.dart';
import 'package:exportapp/Screens/ExportGoodsScreen.dart';
import 'package:exportapp/Screens/ExportsGoodGlobalRankingScreen.dart';
import 'package:exportapp/Screens/ProvincesMapScreen.dart';
import 'package:exportapp/Screens/ScanAndDownloadScreen.dart';
import 'package:exportapp/Screens/TradeZoneScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'ScreenSaver.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var selectedIndex = 0;
  Timer? randomTimer;
  Timer? countdownTimer;
  Duration myDuration = Duration(seconds: 60);
  @override
  void initState() {
    super.initState();
    initialization();
    startTimer();
  }

  void startTimer() {
    countdownTimer =
        Timer.periodic(Duration(seconds: 1), (_) => setCountDown());
  }

  void stopTimer() {
    setState(() => countdownTimer!.cancel());
  }

  void resetTimer() {
    stopTimer();
    startTimer();
    setState(() => myDuration = Duration(seconds: 60));
  }

  void setCountDown() {
    final reduceSecondsBy = 1;
    setState(() {
      final seconds = myDuration.inSeconds - reduceSecondsBy;
      if (seconds < 0) {
        countdownTimer!.cancel();
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const ScreenSaver(),
          ),
        );
      } else {
        myDuration = Duration(seconds: seconds);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            backgroundColor: Color(0XFF00B5EC),
            toolbarHeight: 100.h,
            elevation: 0,
            title: Center(
              child: Container(
                height: 100.h,
                width: 300.w,
                child: Image.asset("assets/images/home/mainheader.png"),
              ),
            ),
          ),
          body: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              resetTimer();
            },
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 9.h),
                  child: SizedBox(
                    height: 10.h,
                    child: Container(color: Color(0XFF7EE1F8)),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 45.h,
                      width: 69.w,
                      child: Image.asset(
                        "assets/images/home/1.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: 45.h,
                      width: 69.w,
                      child: Image.asset(
                        "assets/images/home/2.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: 45.h,
                      width: 69.w,
                      child: Image.asset(
                        "assets/images/home/3.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: 45.h,
                      width: 69.w,
                      child: Image.asset(
                        "assets/images/home/4.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 10.h,
                    bottom: 10.h,
                  ),
                  child: Text(
                    "          DISCOVER \nOUR MAIN PRODUCTS",
                    style: TextStyle(
                      fontFamily: 'BebasNeue',
                      fontSize: 25.sp,
                      color: Color(0xFF004C98),
                    ),
                  ),
                ),
                Container(
                  child: Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: <Widget>[
                          TextButton(
                            onPressed: () {
                              resetTimer();
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const ProvincesMapScreen(),
                                ),
                              );
                            },
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 8.h),
                              child: ButtonDesign(
                                  text:
                                      "MAIN EXPORT PRODUCTS \n          PER PROVINCE"),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              resetTimer();
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const AirportsAndSeaportsScreen(),
                                ),
                              );
                            },
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 8.h),
                              child: ButtonDesign(
                                  text:
                                      "          AIRPORTS \nAND SEA PORTS MAP"),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              resetTimer();
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const TradeZoneScreen(),
                                ),
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.only(bottom: 8.h),
                              child: ButtonDesign(text: "TRADE ZONE MAP"),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              resetTimer();
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const ExportGoodsScreen(),
                                ),
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.only(bottom: 8.h),
                              child: ButtonDesign(
                                  text:
                                      "DOMINICAN REPUBLIC\n    EXPORT OF GOODS"),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              resetTimer();
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) =>
                                      const ExportsGoodGlobalRankingScreen(),
                                ),
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.only(bottom: 8.h),
                              child: ButtonDesign(text: "GLOBAL RANKINGS"),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              resetTimer();
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ScanAndDownloadScreen(
                                    name: "exporters directory",
                                  ),
                                ),
                              );
                            },
                            child: Container(
                              padding: EdgeInsets.only(bottom: 8.h),
                              child: ButtonDesign(
                                  text:
                                      "EXPORTERS DIRECTORY \n              QR CODE"),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              resetTimer();
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
                              padding: EdgeInsets.only(bottom: 8.h),
                              child: ButtonDesign(
                                  text: "INVESTMENT GUIDE \n          QR CODE"),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomAppBar(
            child: SizedBox(
              height: 20.h,
            ),
            color: Color(0xFF004C98),
          ),
        );
      },
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
    return Container(
      height: 47.h,
      width: 200.w,
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
            fontSize: 15.sp,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

void initialization() async {
  await Future.delayed(const Duration(seconds: 5));
  FlutterNativeSplash.remove();
}
