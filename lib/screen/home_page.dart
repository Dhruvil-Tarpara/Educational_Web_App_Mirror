import 'package:educational_web_app/globals/globals.dart';
import 'package:flutter/material.dart';

class Home_page extends StatefulWidget {
  const Home_page({Key? key}) : super(key: key);

  @override
  State<Home_page> createState() => _Home_pageState();
}

class _Home_pageState extends State<Home_page> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "What would you like to learn today?",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.w600),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    alignment: Alignment.topRight,
                    padding: EdgeInsets.all(12),
                    height: size.height * 0.24,
                    width: size.width,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color(0xffFBC04E),
                        Color(0xffffd456),
                      ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/pana.png"),
                      ),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Text(
                      "Find your course & study at home ",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                const Text(
                  "Popular websites",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: (){
                            setState(() {
                              Global.currentWeb = Global.websites[0];
                            });
                            Navigator.of(context).pushNamed("web");
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              alignment: Alignment.bottomCenter,
                              height: size.height * 0.26,
                              width: size.width * 0.40,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                  border: Border.all(color: Colors.blueAccent,width: 2),
                                image: const DecorationImage(
                                  image: NetworkImage(
                                      "https://png.oyepandeyji.com/wp-content/uploads/2021/09/great_learning_logo_png.png"),
                                ),
                              ),
                              child: const Text(
                                "Great learning",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              Global.currentWeb = Global.websites[1];
                              print(Global.currentWeb);
                            });
                            Navigator.of(context).pushNamed("web");
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: size.height * 0.18,
                              width: size.width * 0.40,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey,width: 2),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Image(
                                    height: size.height * 0.12,
                                    image: const NetworkImage(
                                        "https://www.freepnglogos.com/uploads/wikipedia-logo-png/wikipedia-logo-icon-download-13.png"),
                                  ),
                                  const Text(
                                    "Wikipedia",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          onTap: (){
                            setState(() {
                              Global.currentWeb = Global.websites[2];
                            });
                            Navigator.of(context).pushNamed("web");
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              alignment: Alignment.bottomCenter,
                              height: size.height * 0.16,
                              width: size.width * 0.42,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: const DecorationImage(
                                  image: NetworkImage(
                                      "https://img.icons8.com/color/480/GeeksforGeeks.png"),
                                ),
                                border: Border.all(color: Colors.green,width: 2)
                              ),
                              child: const Text(
                                "Geeks for Geeks",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: (){
                            setState(() {
                              Global.currentWeb = Global.websites[3];
                            });
                            Navigator.of(context).pushNamed("web");
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              alignment: Alignment.bottomCenter,
                              height: size.height * 0.28,
                              width: size.width * 0.40,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Colors.deepOrange,width: 2),
                                  borderRadius: BorderRadius.circular(20),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  ClipRRect(
                                    child: Image(
                                      height: size.height * 0.12,
                                      image: const NetworkImage(
                                          "https://www.pngplay.com/wp-content/uploads/13/Google-Logo-PNG-HD-Quality.png"),
                                    ),
                                  ),
                                  const Text(
                                    "Google digital",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
