import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:namdz/global.dart';
import 'package:namdz/theme.dart';

import 'screen/add.dart';
import 'screen/home.dart';
import 'screen/notification.dart';
import 'screen/profile.dart';

class MyHomePage extends ConsumerStatefulWidget {
  ConsumerState<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends ConsumerState<MyHomePage> {
  int index = 3;
  final Screen = [
    HomePage(),
    AddPage(),
    NotificationPage(),
    ProfilePage(),
  ];
  @override
  void initState() {
    ref.read(lichInstane.notifier).changeData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Lịch Cá Nhân', style: headingStyle),
        actions: [],
      ),
      body: Screen[index],
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.blue.shade100,
          labelTextStyle: MaterialStateProperty.all(
            TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
          ),
        ),
        child: NavigationBar(
            height: 60,
            backgroundColor: Color(0xFFf1f5fb),
            selectedIndex: index,
            onDestinationSelected: (index) =>
                setState(() => this.index = index),
            destinations: [
              NavigationDestination(
                  icon: Icon(Icons.home),
                  selectedIcon: Icon(Icons.home),
                  label: 'Trang Chủ'),
              NavigationDestination(
                  icon: Icon(Icons.add),
                  selectedIcon: Icon(Icons.add),
                  label: 'Thêm Lịch'),
              NavigationDestination(
                  icon: Icon(Icons.notifications),
                  selectedIcon: Icon(Icons.notifications),
                  label: 'Thông Báo'),
              NavigationDestination(
                  icon: Icon(Icons.person),
                  selectedIcon: Icon(Icons.person),
                  label: 'Cá Nhân'),
            ]),
      ),
    );
  }
}
