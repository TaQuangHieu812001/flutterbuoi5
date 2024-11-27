import 'package:flutter/material.dart';
import 'package:flutter_application_2/constant/color.dart';
import 'package:flutter_application_2/screens/home/Widgets/Header.dart';
import 'package:flutter_application_2/screens/home/Widgets/home_appBar.dart';
import 'package:flutter_application_2/screens/home/Widgets/progress_bar.dart';
import 'package:flutter_application_2/screens/home/Widgets/task_list.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ListColor.hex020206,
      appBar: const HomeAppBar(),
      body: Column(
        children: [
          const Header(title: 'Progress'),
          const Progress(),
          const Header(title: 'Today Task'),
          Expanded(child: TaskListScreen()),
        ],
      ),
    );
  }
}
