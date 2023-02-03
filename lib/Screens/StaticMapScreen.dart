import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class StaticMapScreen extends StatefulWidget {
  StaticMapScreen({super.key, required this.name});
  String name;
  @override
  State<StaticMapScreen> createState() => _StaticMapScreenState();
}

class _StaticMapScreenState extends State<StaticMapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Color(0xFF004C98),
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/${widget.name}.png'),
                fit: BoxFit.contain),
          ),
        ),
      ),
    );
  }
}
