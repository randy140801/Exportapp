import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF004C98),
        toolbarHeight: 110.h,
        elevation: 0,
        centerTitle: true,
        title: Column(
          children: [
            Text(
              "FREE TRADE",
              style: TextStyle(
                fontFamily: 'BebasNeue',
                fontWeight: FontWeight.w700,
                fontSize: 35.sp,
              ),
            ),
            Text(
              "ZONE MAP",
              style: TextStyle(
                fontFamily: 'BebasNeue',
                fontWeight: FontWeight.w700,
                fontSize: 35.sp,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 9.h,
              bottom: 10.h,
            ),
            child: SizedBox(
              height: 10.h,
              child: Container(color: Color(0XFF7EE1F8)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 25.h,
              left: 50.w,
              right: 50.w,
            ),
            child: SizedBox(
              height: 2.h,
              child: Container(
                color: Color(0XFFE01737),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: 20.h,
              bottom: 20.h,
              left: 50.w,
              right: 50.w,
            ),
            height: 80.h,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  children: [
                    Image.asset(
                      'assets/icons/trade1.png',
                      height: 50.h,
                      width: 50.w,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 10.w,
                      ),
                      child: Text(
                        "FREE TRADE \nZONE PARKS",
                        style: TextStyle(
                          fontFamily: 'BebasNeue',
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
                          color: Color(0xFF004C98),
                        ),
                      ),
                    ),
                  ],
                ),
                VerticalDivider(
                  thickness: 0.5.w,
                  color: Color(0xFF004C98),
                  width: 20.w,
                ),
                Row(
                  children: [
                    Image.asset(
                      'assets/icons/trade2.png',
                      height: 50.h,
                      width: 50.w,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 10.h,
                      ),
                      child: Text(
                        "  FREE TRADE \nSPECIAL ZONE",
                        style: TextStyle(
                          fontFamily: 'BebasNeue',
                          fontWeight: FontWeight.w400,
                          fontSize: 12.sp,
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
              bottom: 20.h,
              left: 50.w,
              right: 50.w,
            ),
            child: SizedBox(
              height: 1.h,
              child: Container(
                color: Color(0XFFE01737),
              ),
            ),
          ),
          Image.asset(
            'assets/images/tradezonemap.png',
            height: 350.h,
            width: 330.w,
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        // ignore: sort_child_properties_last
        child: SizedBox(
          height: 20.h,
        ),
        color: Color(0xFF004C98),
      ),
    );
  }
}
