import './login_page.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static const routeName = '/homepage';

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        backgroundColor: Colors.blueGrey,
        leading: Container(),
      ),
      body: const Center(child: Text("This is Home Page")),
      floatingActionButton: FloatingActionButton(
        onPressed:(){
          Navigator.of(context).pushNamed(LoginPage.routeName);
        },
        child: const Icon(Icons.login),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}