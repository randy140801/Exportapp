import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF004C98),
        toolbarHeight: 110.h,
        elevation: 0,
        centerTitle: true,
        title: Column(
          children: [
            Text(
              "AIRPORTS AND",
              style: TextStyle(
                fontFamily: 'BebasNeue',
                fontWeight: FontWeight.w700,
                fontSize: 35.sp,
              ),
            ),
            Text(
              "CARGO PORTS",
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
              bottom: 20.h,
            ),
            child: SizedBox(
              height: 10.h,
              child: Container(color: Color(0XFF7EE1F8)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 50.w, right: 50.w),
            child: SizedBox(
              height: 2.h,
              child: Container(color: Color(0XFFE01737)),
            ),
          ),
          Container(
            padding: EdgeInsets.only(
              top: 25.h,
              bottom: 25.h,
              left: 50.w,
              right: 50.w,
            ),
            height: 90.h,
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
                        fontSize: 50.sp,
                        color: Color(0XFFE01737),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 5.w,
                      ),
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/airport.svg',
                            height: 25.h,
                            width: 25.w,
                            color: Color(0xFF004C98),
                          ),
                          Text(
                            "Airports",
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              fontWeight: FontWeight.w100,
                              fontSize: 8.sp,
                              color: Color(0xFF004C98),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                VerticalDivider(
                  thickness: 0.5.w,
                  color: Color(0xFF004C98),
                ),
                Row(
                  children: [
                    Text(
                      "5",
                      style: TextStyle(
                        fontFamily: 'BebasNeue',
                        fontWeight: FontWeight.w700,
                        fontSize: 50.sp,
                        color: Color(0XFF00B5EC),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 5.w,
                      ),
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/cruise.svg',
                            height: 25.h,
                            width: 25.w,
                            color: Color(0xFF004C98),
                          ),
                          Text(
                            "Cruise Ports",
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              fontWeight: FontWeight.w100,
                              fontSize: 8.sp,
                              color: Color(0xFF004C98),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                VerticalDivider(
                  thickness: 0.5.w,
                  color: Color(0xFF004C98),
                ),
                Row(
                  children: [
                    Text(
                      "12",
                      style: TextStyle(
                        fontFamily: 'BebasNeue',
                        fontWeight: FontWeight.w700,
                        fontSize: 50.sp,
                        color: Color(0xFF004C98),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 5.w,
                      ),
                      child: Column(
                        children: [
                          SvgPicture.asset(
                            'assets/icons/port.svg',
                            height: 25.h,
                            width: 25.w,
                            color: Color(0xFF004C98),
                          ),
                          Text(
                            "Cargo Ports",
                            style: TextStyle(
                              fontFamily: 'Avenir',
                              fontWeight: FontWeight.w100,
                              fontSize: 8.sp,
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
            'assets/images/airportsmap.png',
            height: 300.h,
            width: 400.w,
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
