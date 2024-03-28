import './profile_page.dart';
import './home_page.dart';
import 'package:flutter/material.dart';
//import 'package:get/get.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  static const routeName = '/loginpage';

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //background
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              "assets/images/bg.png", 
              fit: BoxFit.fill,
            ),
          ),
          //layer body
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 70,),
                SizedBox(
                  width: 150,
                  height: 150,
                  child: Image.asset(
                    "assets/images/pic_login1.png",
                    fit: BoxFit.contain, 
                  ),
                ),
                const SizedBox(height: 20,),
                const Text("Welcome to", style: TextStyle(fontSize: 22),),
                const Text("Dirbbox", style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),),
                const SizedBox(
                  width: 250,
                  child: Text(
                    "Best cloud storage platform for all business and individuals to\nmanage there data\n\nJoin For Free.", 
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                const SizedBox(height: 30,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton(
                      onPressed: (){
                        Navigator.of(context).pushNamed(HomePage.routeName);
                      },
                      style: ElevatedButton.styleFrom(                      
                        backgroundColor: const Color.fromARGB(255, 242, 243, 243),
                        fixedSize: const Size(140,45),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            "assets/icons/fingerprint.png",
                            //fit: BoxFit.contain, 
                          ),
                          const SizedBox(width: 10),
                          const Text("Smart Id", style: TextStyle(color: Color(0xFF567DF4)),)
                        ],
                      ),                    
                    ),
                    ElevatedButton(
                      onPressed: (){
                        Navigator.of(context).pushNamed(ProfilePage.routeName);
                      },
                      style: ElevatedButton.styleFrom(                      
                        backgroundColor: const Color.fromARGB(255, 90, 130, 251),
                        fixedSize: const Size(140,45),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Sign In", style: TextStyle(color: Colors.white),),
                          SizedBox(width: 10),
                          Icon(Icons.arrow_right_alt, color: Colors.white,)
                        ],
                      ),                    
                    )
                  ],
                ),
                const SizedBox(height: 40,),
                const Center(child: Text("Use Social Login", style: TextStyle(fontSize: 13),)),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/icons/i_instagram.png"),
                    const SizedBox(width: 60,),
                    Image.asset("assets/icons/i_twitter.png"),
                    const SizedBox(width: 60,),
                    Image.asset("assets/icons/i_facebook.png"),
                  ],
                ),
                const SizedBox(height: 50,),
                const Center(child: Text("Create an account", style: TextStyle(fontSize: 13),))
              ],
            ),
          )
        ],
      ),

    );
  }
}