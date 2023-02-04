import 'dart:async';

import 'package:exportapp/Screens/HomeScreen.dart';
import 'package:flutter/material.dart';

class ScreenSaver extends StatefulWidget {
  const ScreenSaver({super.key});

  @override
  State<ScreenSaver> createState() => _ScreenSaverState();
}

class _ScreenSaverState extends State<ScreenSaver> {
  var selectedIndex = 1;
  Timer? randomTimer;
  Timer? countdownTimer;

  Duration myDuration = Duration(seconds: 15);
  @override
  void initState() {
    super.initState();
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
    setState(() => myDuration = Duration(seconds: 15));
  }

  void setCountDown() {
    final reduceSecondsBy = 1;
    setState(() {
      final seconds = myDuration.inSeconds - reduceSecondsBy;
      if (seconds < 0) {
        setImage();
        resetTimer();
      } else {
        myDuration = Duration(seconds: seconds);
      }
    });
  }

  void setImage() {
    setState(() {
      selectedIndex = selectedIndex + 1;
      if (selectedIndex > 3) {
        selectedIndex = 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const HomeScreen(),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/screensaver/$selectedIndex.png'),
              fit: selectedIndex == 1 ? BoxFit.cover : BoxFit.contain,
            ),
          ),
        ),
      ),
    );
  }
}
