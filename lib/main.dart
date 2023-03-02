import 'package:app_medidas/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'models/measure.dart';

Future<void> main() async
{
  await Hive.initFlutter();
  Hive.registerAdapter(UpperMeasuresAdapter());
  Hive.registerAdapter(LowerMeasuresAdapter());
  runApp(MyApp());
}

class MyApp extends StatelessWidget 
{
  MyApp({super.key});

  final Map<int, Color> color =
  {
    50:const Color.fromRGBO(136,14,79, .1),
    100:const Color.fromRGBO(136,14,79, .2),
    200:const Color.fromRGBO(136,14,79, .3),
    300:const Color.fromRGBO(136,14,79, .4),
    400:const Color.fromRGBO(136,14,79, .5),
    500:const Color.fromRGBO(136,14,79, .6),
    600:const Color.fromRGBO(136,14,79, .7),
    700:const Color.fromRGBO(136,14,79, .8),
    800:const Color.fromRGBO(136,14,79, .9),
    900:const Color.fromRGBO(136,14,79, 1)
  };

  @override
  Widget build(BuildContext context) 
  {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: MaterialColor(0xFF75d524, color),
      ),
      home: const HomeScreen(title: 'Medidas'),
    );
  }
}