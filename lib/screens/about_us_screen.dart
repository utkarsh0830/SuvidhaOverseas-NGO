import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';
class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          Text('Sign out',
          style: TextStyle(
            color: Colors.white
          ),),
          IconButton(onPressed: (){
            //logout user
            FirebaseAuth.instance.signOut();
          },
              icon: Icon(Icons.logout_outlined,
                color: Colors.white,
              ))
        ],
        backgroundColor: Colors.indigo.shade900,
        title: Text("About",
        style: TextStyle(
          color: Colors.white
          ),
        ),
      ),
      backgroundColor: Colors.grey.shade200,
      body: ListView(
        children: [
          Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("Suvidha Overseas",
                style: TextStyle(
                    letterSpacing: 1,
                    color: Colors.teal.shade700,
                    fontSize: 30,
                    fontWeight: FontWeight.w500
                ),),
            ),
            SizedBox(height: 1,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text("Suvidha Overseas, a professional firm based in Hyderabad with a presence in Nagpur, specializes in guiding students aiming to study abroad in countries like the USA, UK, Australia, and Canada. They provide comprehensive services covering all aspects of the application process.",
                style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    letterSpacing: 1.5,
                    fontStyle: FontStyle.italic,
                    color: Colors.teal.shade400,
                ),

              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25,left: 18,right: 18),
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  fit: BoxFit.cover,
        
                  image: AssetImage('assets/images/suvi.jpg')
                )
              ),
            ),
            SizedBox(height: 15,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("We are the world's largest University",
              style: TextStyle(
                letterSpacing: 1,
                color: Colors.indigo.shade600,
                fontSize: 30,
                fontWeight: FontWeight.w500
              ),),
            ),
            SizedBox(height: 10,),
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.white70,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "Suvidha Overseas is a dynamic and dedicated professional firm committed to guiding students who aspire to pursue their education abroad. The company is headquartered in Hyderabad and has a strong presence in Nagpur. Understanding the complexities of studying in countries like the USA, UK, Australia, and Canada, Suvidha Overseas has successfully unraveled these challenges. They offer a comprehensive step-by-step service that covers every aspect of the application process.",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    letterSpacing: 1.5,
                    color: Colors.indigo.shade800
                  ),
        
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(top: 25,left: 18,right: 18),
              height: 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      fit: BoxFit.cover,
        
                      image: AssetImage('assets/images/suvi2.jpg')
                  )
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 350,
              width: double.infinity,
              color: Colors.white70,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "The team at Suvidha Overseas takes pride in their thorough research and personalized approach towards each student. By deeply understanding a student's profile, along with their goals and aspirations, the firm is adept at researching, shortlisting, and recommending the most suitable programs, schools, or universities for each individual. Suvidha Overseas is committed to not just fulfilling educational aspirations but also in crafting pathways that lead to rewarding careers and personal growth for their students.",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      letterSpacing: 2,
                      color: Colors.blue.shade900
                  ),

                ),
              ),
            ),
          ],
        ),
          Container(
            //margin: EdgeInsets.only(top: 25),
            height: 200,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.black,
              //borderRadius: BorderRadius.circular(10)
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
              
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('Contact Detail',
                        style: TextStyle(
                          color: Colors.yellow.shade600,
                          fontSize: 18
                          ),
                        ),
                      ),
                      SizedBox(height: 10,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Vazhra Nirman Pushpak C block 701, Blooming dale road Nizampet, 500090",
                        style: TextStyle(
                          color: Colors.white
                        ),),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text('Social Links',
                        style: TextStyle(
                            color: Colors.yellow.shade600,
                            fontSize: 18
                        ),
                      ),
                      SizedBox(height: 5,),
                      GestureDetector(
                        onTap: (){
                          _launchURL("https://www.facebook.com/people/Suvidha-Overseas/61553478092558/?mibextid=LQQJ4d");
                        },
                        child: Text('Facebook',
                          style: TextStyle(
                              color: Colors.white
                          ),),
                      ),
                      SizedBox(height: 5,),
                      GestureDetector(
                        onTap: () {
                          _launchURL("https://www.linkedin.com/authwall?trk=bf&trkInfo=AQHPcR2Ial8hxwAAAY43kjbockElZHqQ-P9c2BqC90JNbm35Yhdg-ITqkzNVMP1OhaAgbvR2bi6dYiyVk-TIOyXqUVC8g-1sH2GS0hKUQUbG1RhgNNeiYOslVH2m8eQc9YyPltc=&original_referer=&sessionRedirect=https%3A%2F%2Fwww.linkedin.com%2Fcompany%2Fsuvidha-overseas%2F");
                        },
                        child: Text(
                          'LinkedIn',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(height: 5,),
                      GestureDetector(
                        onTap: () {
                          _launchURL("https://www.instagram.com/suvidha.overseas/?igsh=YXFtdTdxem9xMG42");
                        },
                        child: Text(
                          'Instagram',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      )

                    ],
                  )
                ],
              ),
            ),
          ),

        ]
      ),
    );
  }
}
