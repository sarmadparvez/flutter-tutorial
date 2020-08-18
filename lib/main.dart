// MaterialApp
import 'package:awesome_app/pages/home_page.dart';
import 'package:awesome_app/pages/home_page_with_sb.dart';
import 'package:awesome_app/pages/login_page.dart';
import 'package:awesome_app/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future main() async {
  //runApp(MyApp());
  WidgetsFlutterBinding.ensureInitialized();
  Constants.prefs = await SharedPreferences.getInstance();
  runApp(MyNewApp());
}

class MyNewApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //home: HomePage(),
      home: Constants.prefs.getBool("loggedIn") == true
          //? HomePage()
          // ? HomePageFB()
          ? HomePageSB()
          : LoginPage(),
      //home: LoginPage(),
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      routes: {
        LoginPage.routeName: (context) => LoginPage(),
        HomePage.routeName: (context) => HomePage(),
      },
    );
  }
}
