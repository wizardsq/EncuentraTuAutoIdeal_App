import 'package:carro2/comenzar.dart';
import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(const HomePageWidget());
}

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  bool _loadingButton = false;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.light(
          primary: Color(0xFF304FFE)
        )
      ),
    home: Comenzar()
    );
  }
}
