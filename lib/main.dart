import 'package:e_commerec/models/cart.dart';
import 'package:e_commerec/pages/intro_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      builder: (context, child) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Step-Ease",
        home: const MyIntroPage(),
        theme: ThemeData(fontFamily: "regular"),
      ),
    );
  }
}
