import 'package:flutter/material.dart';
import 'package:interview_test/home_page.dart';
import 'package:interview_test/my_colors.dart';
import 'package:interview_test/my_strings.dart';
import 'package:interview_test/session_page.dart';

class BottomNavWidget extends StatefulWidget {
  @override
  _BottomNavWidgetState createState() => _BottomNavWidgetState();
}

class _BottomNavWidgetState extends State<BottomNavWidget> {
  int _currentIndex = 0;

  List<Widget> _children = [
    HomePageWidget(),
    HomePageWidget(),
    SessionWidget(),
    HomePageWidget(),
  ];
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: MyColors.colorPrimary,
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        selectedItemColor: MyColors.accentColor,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        backgroundColor: MyColors.colorPrimary,
        onTap: onTabTapped, // new
        currentIndex: _currentIndex, // new
        items: [
          new BottomNavigationBarItem(
            icon: Icon(
              Icons.fitness_center,
            ),
            title: Text(
              MyStrings.gym,
            ),
          ),
          new BottomNavigationBarItem(
            icon: Icon(
              Icons.supervisor_account,
            ),
            title: Text(
              MyStrings.clients,
            ),
          ),
          new BottomNavigationBarItem(
            icon: Icon(
              Icons.access_time,
            ),
            title: Text(
              MyStrings.session,
            ),
          ),
          new BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_today,
            ),
            title: Text(
              MyStrings.schedule,
            ),
          ),
        ],
      ),
    );
  }
}
