import 'package:exportapp/widgets/QrScannerOverlayShape.dart';
import 'package:flutter/material.dart';

import '../widgets/CalculateDimensions.dart';

class ScanAndDownloadScreen extends StatefulWidget {
  ScanAndDownloadScreen({super.key, required this.name});
  String name;
  @override
  State<ScanAndDownloadScreen> createState() => _ScanAndDownloadScreenState();
}

class _ScanAndDownloadScreenState extends State<ScanAndDownloadScreen> {
  @override
  Widget build(BuildContext context) {
    final textScale = MediaQuery.of(context).size.height * 0.01;
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0XFFE01737),
        toolbarHeight: getHeight(screenHeight, 160),
        elevation: 0,
        centerTitle: true,
        title: Column(
          children: [
            Text(
              "SCAN AND DOWNLOAD",
              style: TextStyle(
                fontFamily: 'BebasNeue',
                fontWeight: FontWeight.w700,
                fontSize: getTextSize(textScale, 50),
              ),
            ),
            Text(
              "OUR ${widget.name}".toUpperCase(),
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
        height: getHeight(screenHeight, 1000),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: getHeight(screenHeight, 9),
                  bottom: getHeight(screenHeight, 30)),
              child: SizedBox(
                height: getHeight(screenHeight, 15),
                child: Container(color: Color(0XFF7EE1F8)),
              ),
            ),
            Container(
              decoration: ShapeDecoration(
                shape: QrScannerOverlayShape(
                  cutOutWidth: getHeight(screenWidth, 500),
                  cutOutHeight: getHeight(screenHeight, 250),
                  borderColor: Color(0XFF7EE1F8),
                  borderLength: 50,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(
                  getHeight(screenHeight, 10),
                ),
                child: Image.asset(
                  "assets/images/${widget.name}/qr.png",
                  width: getHeight(screenWidth, 350),
                  height: getHeight(screenHeight, 200),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: getHeight(screenHeight, 100)),
              child: Image.asset(
                "assets/images/${widget.name}/magazine.png",
                width: getHeight(screenWidth, 500),
                height: getHeight(screenHeight, 250),
              ),
            )
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
