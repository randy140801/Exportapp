import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:syncfusion_flutter_maps/maps.dart';
import 'package:exportapp/models/Province.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'dart:math';

import '../widgets/CalculateDimensions.dart';

class ProvincesMapScreen extends StatefulWidget {
  const ProvincesMapScreen({super.key});

  @override
  State<ProvincesMapScreen> createState() => _ProvincesMapScreenState();
}

class _ProvincesMapScreenState extends State<ProvincesMapScreen> {
  late MapShapeSource _mapSource;
  var selectedIndex = 0;
  Timer? randomTimer;
  Timer? countdownTimer;
  Duration myDuration = Duration(seconds: 20);
  final data = const <Province>[
    Province('Azua', 'Azua', '8.6', ["banana", "tomato"]),
    Province('Baoruco', 'Bahoruco', '0.0', ["coffee"]),
    Province('Barahona', 'Barahona', '0.0', ["cotton fabrics"]),
    Province('Dajabón', 'Dajabon', '0.6', ["plastic bags", "concrete"]),
    Province(
        'Distrito Nacional', 'D.N.', '887.3', ["rum & spirits", "soy oil"]),
    Province('Duarte', 'Duarte', '58.5', ["cocoa beans"]),
    Province('Elías Piña', 'Elias \nPina', '0.2', ["underwear"]),
    Province('El Seibo', 'El Seibo', '0.2', ["underwear"]),
    Province('Espaillat', '    Espaillat\n\n', '69.9',
        ["swimwear", "mango", "concrete"]),
    Province(
        'Hato Mayor', 'Hato \nMayor', '0.3', ["oranges", "limes", "shirts"]),
    Province(
        'Hermanas Mirabal', 'Hermanas \n  Mirabal', '11.0', ["cacao beans"]),
    Province('Independencia', 'Independencia', '0.1',
        ["natural plaster", "oat grains"]),
    Province('La Altagracia', 'La Altagracia', '8.4',
        ["avocado", "mango", "beauty products"]),
    Province('La Romana', '    La \nRomana\n', '766.5',
        ["cigars", "jewelry items", "medical instruments"]),
    Province(
        'La Vega', 'La Vega', '126.6', ["sport shoes", "peppers", "sweaters"]),
    Province('María Trinidad Sánchez', 'Maria \nTrinidad \nSanchez', '3.2',
        ["fertilizer", "doors", "windows"]),
    Province('Monseñor Nouel', 'Monsenor \n   Nouel', '619.0',
        ["ferronic", "cotton fabrics"]),
    Province('Monte Cristi', 'Monte Cristi', '87.7',
        ["banana", "fruits", "vegetable juices"]),
    Province('Monte Plata', 'Monte Plata', '6.3',
        ["pineapple", "rum & other spirits"]),
    Province('Pedernales', 'Pedernales', '11.6', ["rags", "bakery items"]),
    Province('Peravia', 'Peravia', '25.4', ["ketchup", "mango"]),
    Province(
        'Puerto Plata', 'Puerto Plata', '13.8', ["luggage", "wallets", "wine"]),
    Province('Samaná', 'Samaná\n', '0.0',
        ["candles", "beauty products", "coconut oil"]),
    Province('Sánchez Ramírez', 'Sanchez \nRamirez', '1,678.0',
        ["gold", "wheat flour", "calcium carbonate"]),
    Province('San Cristóbal', '   San \nCristobal', '2.2',
        ["circuit breakers", "medical instruments and gadgets"]),
    Province('San José de Ocoa', 'San Jose \nde Ocoa', '2.4',
        ["peppers", "avocado"]),
    Province('San Juan', 'San Juan', '8.6',
        ["tomato", "avocado", "flour preparations"]),
    Province('San Pedro de Macorís', 'San Pedro \nde Macoris', '648.2',
        ["jewelry items", "circuit breakers", "waste", "scrap gold"]),
    Province('Santiago', 'Santiago', '1,410.7', ["cigars", "tobacco", "shoes"]),
    Province('Santiago Rodríguez', ' Santiago \nRodriguez', '5.6',
        ["plates", "sheets", "ribbons", "tapioca"]),
    Province('Santo Domingo', 'Santo Domingo', '2,496.8',
        ["tshirts and cotton shirts", "electrodiagnostic devices"]),
    Province('Valverde', 'Valverde', '189.9', ["banana", "shoes"])
  ];
  @override
  void initState() {
    _mapSource = MapShapeSource.asset(
      'assets/dominicanrepublic.json',
      shapeDataField: 'name',
      dataCount: data.length,
      primaryValueMapper: (int index) => data[index].name,
      dataLabelMapper: (int index) => data[index].code,
    );
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

  void stoprandom() {
    setState(() => randomTimer != null ? randomTimer!.cancel() : null);
  }

  void resetTimer() {
    stopTimer();
    startTimer();
    setState(() => myDuration = Duration(seconds: 20));
  }

  void setCountDown() {
    final reduceSecondsBy = 1;
    setState(() {
      final seconds = myDuration.inSeconds - reduceSecondsBy;
      if (seconds < 0) {
        countdownTimer!.cancel();
        generateRandom();
      } else {
        myDuration = Duration(seconds: seconds);
      }
    });
  }

  void generateRandom() {
    randomTimer = Timer.periodic(Duration(seconds: 5), (timer) {
      Random random = Random();
      int randomNumber = random.nextInt(31);
      setState(() {
        selectedIndex = randomNumber;
      });
    });
  }

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
        title: Padding(
          padding: EdgeInsets.only(
            left: getHeight(screenWidth, 80),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "PROVINCE",
                style: TextStyle(
                  fontFamily: 'Avenir',
                  letterSpacing: 3,
                  fontSize: getTextSize(textScale, 15),
                ),
              ),
              Text(
                data[selectedIndex].name,
                style: TextStyle(
                  fontFamily: 'BebasNeue',
                  fontWeight: FontWeight.w400,
                  fontSize: getTextSize(textScale, 45),
                ),
              ),
            ],
          ),
        ),
      ),
      body: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          stoprandom();
          resetTimer();
        },
        child: SizedBox(
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
              SizedBox(
                height: getHeight(screenHeight, 360),
                child: Padding(
                    padding: EdgeInsets.only(
                        top: getHeight(screenHeight, 10),
                        bottom: getHeight(screenHeight, 10)),
                    child: Center(
                      child: SfMaps(
                        layers: [
                          MapShapeLayer(
                            source: _mapSource,
                            showDataLabels: true,
                            color: Colors.white,
                            strokeColor: Color(0XFF00B5EC),
                            strokeWidth: 2,
                            selectedIndex: selectedIndex,
                            onSelectionChanged: (int index) {
                              if (mounted) {
                                setState(() {
                                  selectedIndex = index;
                                  stoprandom();
                                  resetTimer();
                                });
                              }
                            },
                            dataLabelSettings: MapDataLabelSettings(
                              // overflowMode: MapLabelOverflow.hide,
                              textStyle: TextStyle(
                                  color: Color(0xFF004C98),
                                  fontWeight: FontWeight.normal,
                                  fontSize: getTextSize(textScale, 8)),
                            ),
                            selectionSettings: const MapSelectionSettings(
                              color: Color(0XFF00B5EC),
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
              Container(
                width: getHeight(screenWidth, 800),
                height: getHeight(screenHeight, 50),
                color: Color(0xFF004C98),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.ideographic,
                  children: [
                    Text(
                      "EXPORTS 2021 ",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'BebasNeue',
                        fontWeight: FontWeight.w100,
                        fontSize: getTextSize(textScale, 25),
                      ),
                    ),
                    Text(
                      'US\$ ${data[selectedIndex].exports} MM',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'BebasNeue',
                        fontWeight: FontWeight.w700,
                        fontSize: getTextSize(textScale, 25),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: getHeight(screenHeight, 55),
                width: getHeight(screenWidth, 800),
                decoration: BoxDecoration(
                    border: Border(
                  bottom: BorderSide(
                      width: getHeight(screenHeight, 3),
                      color: Color(0XFF0DB6F1)),
                )),
                child: Center(
                  child: ListTile(
                    title: Text(
                      'MAIN PRODUCTS',
                      style: TextStyle(
                          color: Color(0xFF004C98),
                          fontFamily: 'BebasNeue',
                          fontWeight: FontWeight.w700,
                          fontSize: getTextSize(textScale, 30)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: getHeight(screenHeight, 250),
                child: AnimationLimiter(
                  key: ValueKey("$selectedIndex"),
                  child: ListView.builder(
                    padding: EdgeInsets.only(
                        left: getHeight(screenWidth, 100),
                        right: getHeight(screenWidth, 100)),
                    itemCount: data[selectedIndex].products.length,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return AnimationConfiguration.staggeredList(
                        position: index,
                        duration: const Duration(milliseconds: 575),
                        child: SlideAnimation(
                          verticalOffset: 50.0,
                          child: ScaleAnimation(
                            child: Container(
                              height: getHeight(screenHeight, 60),
                              decoration: BoxDecoration(
                                  border: Border(
                                bottom: BorderSide(
                                    width: getHeight(screenHeight, 1.5),
                                    color: Color(0XFF0DB6F1)),
                              )),
                              child: Center(
                                child: ListTile(
                                  title: Padding(
                                    padding: EdgeInsets.only(
                                        bottom: getHeight(screenHeight, 2)),
                                    child: Row(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              right: getHeight(screenWidth, 7)),
                                          child: SvgPicture.asset(
                                            "assets/icons/${data[selectedIndex].products[index]}.svg",
                                            height: getHeight(screenHeight, 40),
                                            width: getHeight(screenWidth, 40),
                                            color: Color(0XFF08B4E2),
                                          ),
                                        ),
                                        Text(
                                          data[selectedIndex]
                                              .products[index]
                                              .toUpperCase(),
                                          style: TextStyle(
                                              color: Color(0xFF002456),
                                              fontFamily: 'Avenir',
                                              fontWeight: FontWeight.w500,
                                              fontSize:
                                                  getTextSize(textScale, 14)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        // ignore: sort_child_properties_last
        child: SizedBox(
          height: getHeight(screenHeight, 30),
        ),
        color: Color(0xFFE01737),
      ),
    );
  }
}
