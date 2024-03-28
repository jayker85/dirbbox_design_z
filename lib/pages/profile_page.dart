import './login_page.dart';
import 'package:flutter/material.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  static const routeName = '/profilepage';

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      backgroundColor:const Color(0XFFF1F1F1),
      appBar: AppBar(
        elevation: 0,
        backgroundColor:const Color(0XFFF1F1F1),
        leading: IconButton(onPressed: (){
          Navigator.of(context).pushNamed(LoginPage.routeName);
        }, 
        icon: const Icon(Icons.keyboard_arrow_left, color: Color(0xFF22215B))),
        title: const Text("My Profile", style: TextStyle(color: Color(0xFF22215B)),),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.more_horiz, color: Color(0xFF22215B)))
        ],
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            margin: const EdgeInsets.all(25),
            padding: const EdgeInsets.all(20),
            //height: 275,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10)
            ),
            child: Stack(
              children: [
                Column(
                  children: [
                    SizedBox(
                      width: 80,
                      height: 80,
                      child: Image.asset("assets/images/profile_img.png", fit: BoxFit.cover,)
                    ),
                    const SizedBox(height: 15),
                    const Text(
                      "Zaenal Muttaqin", 
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF22215B)
                      ),
                    ),
                    const SizedBox(height: 5),
                    const Text(
                      "UI / UX Designer", 
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF22215B)
                      )
                    ),
                    const SizedBox(height: 15),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ornare pretium placerat ut platea.", 
                      textAlign: TextAlign.center, 
                      style: TextStyle(
                        fontSize: 12,
                        color: const Color(0xFF22215B).withOpacity(0.6)
                      )
                    ),
                  ],
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 40,
                    height: 20,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFF317B),
                      borderRadius: BorderRadius.circular(7)
                    ),
                    child: const Center(child: Text("PRO", style: TextStyle(color: Colors.white, fontSize: 10),),),
                  ),
                )
              ],
            )
          ),
          const SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "My Folders",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF22215B)
                  ),
                ),
                SizedBox(
                  width: 75,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset("assets/icons/i_add.png"),
                      Image.asset("assets/icons/i_setting.png"),
                      Image.asset("assets/icons/i_next.png"),
                  
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height:20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardFolder(
                  title: "Mobile Apps",
                  date: "December 20.2020",
                  color: const Color(0xFFEEF7FE),
                  image:  Image.asset("assets/icons/i_fld_blue.png"),
                ),
                CardFolder(
                  title: "SVG Icons",
                  date: "December 14.2020",
                  color: const Color(0xFFFFFBEC),
                  image:  Image.asset("assets/icons/i_fld_yellow.png"),
                ),
              ],
            ),
          ),
          const SizedBox(height:20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CardFolder(
                  title: "Prototypes",
                  date: "November 22.2020",
                  color: const Color(0xFFFEEEEE),
                  image:  Image.asset("assets/icons/i_fld_red.png"),
                ),
                CardFolder(
                  title: "Avatars",
                  date: "November 10.2020",
                  color: const Color(0xFFF0FFFF),
                  image:  Image.asset("assets/icons/i_fld_green.png"),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:25),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Recent Uploads",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF22215B)
                  ),
                ),
                Image.asset("assets/icons/i_sort.png"), 
              ],
            ),
          ),
          const SizedBox(height: 10,),
          ListTile(
            leading: SizedBox(
              width: 50,
              height: 50,
              child: Image.asset("assets/icons/i_ms_word.png", fit: BoxFit.cover,)
            ),
            title: const Text("Projects.docx", style: TextStyle(fontSize: 13),),
            subtitle: const Text("November 22.2020", style: TextStyle(fontSize: 11),),
            trailing: const Text("300KB"),
          )

        ],
      )
      

    );
  }
}

class CardFolder extends StatelessWidget {
  const CardFolder({
    super.key,
    required this.title,
    required this.date,
    required this.color,
    required this.image,
  });

  final String title;
  final String date;
  final Color color;
  final Image image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: (MediaQuery.of(context).size.width) * 0.4,
      height: 100,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          image,
          const SizedBox(height: 10,),
          Text(
            title, 
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
          //const SizedBox(height: 5,),
          Text(
            date,
            style: const TextStyle(
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }
}