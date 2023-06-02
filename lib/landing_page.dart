import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:live_project/about_page.dart';
import 'package:live_project/components.dart';
import 'package:live_project/contact_page.dart';
import 'package:live_project/work_page.dart';
import 'package:url_launcher/url_launcher.dart';

class LandingPage extends StatefulWidget {
  static const  PAGE="/";
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        backgroundColor:Colors.amber ,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 90,
              backgroundColor: Colors.red,
              child: CircleAvatar(
                radius: 85,
                backgroundColor: Colors.amber,
                backgroundImage: AssetImage("assets/circular.png"),
              ),
            ),
            TextBold(text: "MOHAMED EZRIOUIL", size: 20.0),
            SizedBox(height: 10.0,),
            TabsMobile(text: "Home", route: LandingPage.PAGE),
            SizedBox(height: 5.0,),
            TabsMobile(text: "Works", route: Works.PAGE),
            SizedBox(height: 5.0,),
            TabsMobile(text: "About", route: AboutPage.PAGE),
            SizedBox(height: 5.0,),
            TabsMobile(text: "Contact", route: ContactPage.PAGE),
            SizedBox(height: 10.0,),
            TextBold(text: "Contact Me On", size: 20.0),
            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: (){
                  launchUrl(Uri.parse("https://www.github.com"));
                }, icon: SvgPicture.asset("assets/github.svg")),
                IconButton(onPressed: (){
                  launchUrl(Uri.parse("https://www.instagram.com"));
                }, icon: SvgPicture.asset("assets/instagram.svg")),
                IconButton(onPressed: (){
                  launchUrl(Uri.parse("https://www.youtube.com"));
                }, icon: SvgPicture.asset("assets/linkedin.svg")),

              ],

            )




          ],
        ),
      ),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: ListView(
        children: [
          const CircleAvatar(
            backgroundColor: Colors.tealAccent,
            radius: 117.0,
            child: CircleAvatar(
              radius: 107.0,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage("assets/circular.png"),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.tealAccent,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(15.0),
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0),
                    ),
                  ),
                  padding: const EdgeInsets.all(15.0),
                  child: const TextBold(text: "Hello I'm", size: 15.0),
                ),
                const TextBold(text: "YOUR NAME", size: 30.0),
                TextNormal(null, text: "Junior Flutter Developer", size: 20.0),
                const SizedBox(
                  height: 15.0,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Wrap(
                        direction: Axis.vertical,
                        spacing: 5.0,
                        children: [
                          Icon(Icons.email),
                          Icon(Icons.location_pin),
                          Icon(Icons.call),
                        ],
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Wrap(
                        direction: Axis.vertical,
                        spacing: 5.0,
                        children: [
                          TextNormal(null,
                              text: "mohammedezrouil@gmail.comopoeooeoeoeeo",
                              size: 20.0),
                          TextNormal(null, text: "HAY RACHAD", size: 20.0),
                          TextNormal(null, text: "+21293003003", size: 20.0),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 90.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TextBold(text: "About Me", size: 30.0),
                const SizedBox(
                  height: 10.0,
                ),
                TextNormal(null,
                    text: "Hello I'm Mohamed Ezriouil I'm an android developer",
                    size: 20.0),
                const SizedBox(
                  height: 10.0,
                ),
                TextNormal(null,
                    text:
                        "I have experience developing android app within 1 year",
                    size: 20.0),
                const SizedBox(
                  height: 10.0,
                ),
                TextNormal(6,
                    text:
                        "Using Kotlin and the big titles in android development Using Kotlin and the big titles in android development",
                    size: 20.0),
                const SizedBox(
                  height: 20.0,
                ),
                Wrap(
                  spacing: 9.0,
                  runSpacing: 9.0,
                  direction: Axis.horizontal,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.tealAccent, width: 2.5),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      padding: const EdgeInsets.all(10.0),
                      child: TextNormal(null, text: "Flutter", size: 20.0),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.tealAccent, width: 5.0),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      padding: const EdgeInsets.all(10.0),
                      child: TextNormal(null, text: "Android", size: 20.0),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.tealAccent, width: 5.0),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      padding: const EdgeInsets.all(10.0),
                      child: TextNormal(null, text: "Koltin", size: 20.0),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.tealAccent, width: 5.0),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      padding: const EdgeInsets.all(10.0),
                      child: TextNormal(null, text: "MVVM", size: 20.0),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        border:
                            Border.all(color: Colors.tealAccent, width: 5.0),
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      padding: const EdgeInsets.all(10.0),
                      child: TextNormal(null, text: "MVP", size: 20.0),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
