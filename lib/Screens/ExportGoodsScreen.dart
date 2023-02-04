import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExportGoodsScreen extends StatefulWidget {
  const ExportGoodsScreen({super.key});

  @override
  State<ExportGoodsScreen> createState() => _ExportGoodsScreenState();
}

class _ExportGoodsScreenState extends State<ExportGoodsScreen> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Color(0xFF004C98),
              toolbarHeight: 110.h,
              elevation: 0,
              centerTitle: true,
              title: Column(
                children: [
                  Text(
                    "DOMINICAN REPUBLIC",
                    style: TextStyle(
                      fontFamily: 'BebasNeue',
                      fontWeight: FontWeight.w700,
                      fontSize: 35.sp,
                    ),
                  ),
                  Text(
                    "EXPORTS OF GOODS",
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
                  padding: EdgeInsets.only(top: 9.h, bottom: 10.h),
                  child: SizedBox(
                    height: 10.h,
                    child: Container(
                      color: Color(0XFF7EE1F8),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 50.w,
                    right: 50.w,
                  ),
                  child: Column(
                    children: [
                      Text(
                        "PERIOD 2010-2022",
                        style: TextStyle(
                          fontFamily: 'BebasNeue',
                          fontWeight: FontWeight.w700,
                          fontSize: 40.sp,
                          color: Color(0XFF00B5EC),
                        ),
                      ),
                      Image.asset(
                        'assets/images/bar graph.png',
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Container(
                        height: 90.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          color: Color(0xFF004C98),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(8.r),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  right: 5,
                                ),
                                child: Image.asset(
                                  'assets/icons/award.png',
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.baseline,
                                textBaseline: TextBaseline.ideographic,
                                children: [
                                  Text(
                                    "USD\$14,200 M",
                                    style: TextStyle(
                                      fontFamily: 'BebasNeue',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 30.sp,
                                      color: Color(0XFFFFFFFF),
                                    ),
                                  ),
                                  Text(
                                    "2022",
                                    style: TextStyle(
                                      fontFamily: 'BebasNeue',
                                      fontWeight: FontWeight.w700,
                                      fontSize: 30.sp,
                                      color: Color(0XFF03B2EF),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        "EXPORT DATA",
                        style: TextStyle(
                          fontFamily: 'BebasNeue',
                          fontWeight: FontWeight.w700,
                          fontSize: 40.sp,
                          color: Color(0xFF004C98),
                        ),
                      ),
                      SizedBox(
                        height: 1.h,
                        child: Container(
                          color: Color(0xFF004C98),
                        ),
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 20.w,
                    right: 20.w,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 110.h,
                        width: 80.w,
                        child: Image.asset(
                          "assets/images/exportsgoods/1.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                      Container(
                        height: 110.h,
                        width: 80.w,
                        child: Image.asset(
                          "assets/images/exportsgoods/2.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                      Container(
                        height: 110.h,
                        width: 80.w,
                        child: Image.asset(
                          "assets/images/exportsgoods/3.png",
                          fit: BoxFit.contain,
                        ),
                      ),
                      Container(
                        height: 110.h,
                        width: 80.w,
                        child: Image.asset(
                          "assets/images/exportsgoods/4.png",
                          fit: BoxFit.contain,
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
                height: 20.h,
              ),
              color: Color(0xFFE01737),
            ),
          );
        });
  }
}
