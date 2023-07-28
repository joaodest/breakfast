import 'package:flutter/material.dart';
import 'views/home_page.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Breakfast App',
      theme: ThemeData(fontFamily: 'Poppings'),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}