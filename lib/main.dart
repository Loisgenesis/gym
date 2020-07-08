import 'package:flutter/material.dart';
import 'package:interview_test/bottom_navigation_widget.dart';
import 'package:interview_test/my_colors.dart';
import 'package:interview_test/my_strings.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var themeData = ThemeData(
      primaryColorBrightness: Brightness.light,
      brightness: Brightness.light,
      primaryColorDark: MyColors.colorPrimary,
      canvasColor: Colors.transparent,
      scaffoldBackgroundColor: Colors.grey,
      accentColor: MyColors.accentColor,
      fontFamily: 'WorkSans',
      primaryColor: MyColors.colorPrimary,
    );

    return MaterialApp(
      title: MyStrings.appName,
      theme: themeData,
      debugShowCheckedModeBanner: false,
      home:BottomNavWidget(),
    );
  }
}
