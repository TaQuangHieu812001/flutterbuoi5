import 'package:flutter/material.dart';
import 'package:flutter_application_2/screens/home/home_screen.dart';


class App extends StatelessWidget {
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'To-Do-List',
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
