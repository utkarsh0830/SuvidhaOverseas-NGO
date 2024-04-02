import 'package:flutter/material.dart';
import 'package:suvidhaoverseas/screens/about_us_screen.dart';
import 'package:suvidhaoverseas/screens/contact_us_screen.dart';
import 'package:suvidhaoverseas/screens/enquiry_form_scree.dart';
import 'package:suvidhaoverseas/screens/exams_screen.dart';
import 'package:suvidhaoverseas/screens/home_screen.dart';
import 'package:suvidhaoverseas/screens/services_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  var _pageIndex = 0;
  List<Widget> _pages = [
    HomeScreen(),
    AboutUsScreen(),
    ExamsScreen(),
    EnquiryFormScreen(),
    ServicesScreen(),
    ContactUsScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _pageIndex,
        onTap: (value){
          setState(() {
            _pageIndex = value;
          });
        },
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.yellow.shade900,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'HOME'
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.description_outlined),
              label: 'ABOUT US'
          ),

          BottomNavigationBarItem(
              icon: Icon(Icons.quiz_outlined),
              label: 'Exams'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.details),
              label: 'ENQUIRY'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.design_services_outlined),
              label: 'SERVICES'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.contact_mail_outlined),
              label: 'CONTACT'
          ),
        ],
      ),
      body: _pages[_pageIndex],
    );
  }
}
