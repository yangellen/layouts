import 'package:flutter/material.dart';
import 'package:layouts/screens/home_screen.dart';
import 'screens/form_screen.dart';

class MainTabController extends StatelessWidget {
  static const tabs = [
    Tab(icon: Icon(Icons.home)),
    Tab(icon: Icon(Icons.shop)),
  ];

  final screens = [HomeScreen(), FormScreen()];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: tabs.length,
        initialIndex: 0,
        child: Scaffold(
            appBar: AppBar(
              title: Text('Apple Cart'),
              centerTitle: true,
              bottom: TabBar(tabs: tabs),
            ),
            body: TabBarView(
              children: screens,
            )));
  }
}
