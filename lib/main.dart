import 'package:flutter/material.dart';
import './pages/home_page.dart';
import './pages/login_page.dart';
import './pages/profile_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dirbbox Z',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
      initialRoute: LoginPage.routeName,
      routes: {
        LoginPage.routeName:(context) => const LoginPage(),
        ProfilePage.routeName:(context) => const ProfilePage(),
        //HomePage.routeName:(context) => HomePage(),
        //StoragePage.routeName:(context) => StoragePage(),
        //SettingPage.routeName:(context) => SettingPage(),
      }
    );
  }
}

