import 'package:flutter/material.dart';
import 'package:suvidhaoverseas/screens/countryDetails/australia_detail_screen.dart';
import 'package:suvidhaoverseas/screens/countryDetails/canada_detail_screen.dart';
import 'package:suvidhaoverseas/screens/countryDetails/england_detail_screen.dart';
import 'package:suvidhaoverseas/screens/countryDetails/germany_detail_screen.dart';
import 'package:suvidhaoverseas/screens/countryDetails/newZelandDetailScreen.dart';
import 'package:suvidhaoverseas/screens/countryDetails/usa_detail_screen.dart';
import 'package:suvidhaoverseas/widgets/home_grid_services_widget.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {


    Widget countryImage(String imageLocation, String countryName,Widget Detail) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 250,
          width: MediaQuery.of(context).size.width ,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),

          child: Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image(
                  image: AssetImage(imageLocation),
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
              Positioned(
                left: 100,
                top: 60,
                child: Text(
                  countryName,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20,
                    color: Colors.white,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
              Positioned(
                left: MediaQuery.of(context).size.width - 400,
                top: 100,
                child: Text(
                  "Explore popular universities in USA",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Colors.white,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
              Positioned(
                left: MediaQuery.of(context).size.width - 325,
                top: 140,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black54,
                    side: BorderSide(width: 1, color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context){
                      return Detail;
                    }));
                  },
                  child: Text(
                    "Explore",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }



    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade700,
        bottomOpacity: 0.2,
        elevation: 1,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Image(
            alignment: Alignment.center,
            fit: BoxFit.fill,
            color: Colors.black87,
            image: AssetImage('assets/images/logo_suvidha.png'),
          ),
        ),
        title: Text(
          "Suvidha Overseas",
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 22,
            color: Colors.white,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      backgroundColor: Colors.blue[50],
      body: ListView(
        children: [
          SingleChildScrollView(
            child: Column(
            children: [
              Stack(
                children: [
                  Image(
                    image: AssetImage('assets/images/graduate7.jpg'),
                    fit: BoxFit.cover,
                  ),
                  Container(
                    width: double.infinity,
                    height: 275,
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.black.withOpacity(0.6),
                    ),
                  ),
                  Positioned(
                    left: 10,
                    top: 15,
                    width: 100,
                    child: Text(
                      "Welcome to Suvidha Overseas",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                        color: Colors.white,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 100,
                    top: 190,
                    child: Text(
                      "We Empower your Dreams",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 17,
                        color: Colors.white,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),
            
                  Positioned(
                    left: MediaQuery.of(context).size.width - 360,
                    top: 220,
                    child: Text(
                      "- Study abroad along with us and reach new heights.",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 11,
                        color: Colors.white,
                        letterSpacing: 1.2,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Text( "Top Study Abroad Destination",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0,vertical: 8),
                child: Text("Study in best Universities accross the world"),
              ),
              SizedBox(height: 30,),
            
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    countryImage('assets/images/usa.jpg', "USA",USADetailScreen()),
                    countryImage('assets/images/germany.jpg', "Germany",GermanyDetailScreen()),
                    countryImage('assets/images/england.jpg', 'England',EnglandDetailScreen()),
                    countryImage('assets/images/newzeland.jpg', 'New Zeland',NewZelandDetailScreen()),
                    countryImage('assets/images/canada.jpg', 'Canada',CanadaDetailScreen()),
                    countryImage('assets/images/australia.jpg', 'Australia',AustraliaDetailScreen()),
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Text('Services We Offer',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GridServiceWidget().serviceContainer(
                      'assets/images/aas1.png',
                      "CRACK IELTS"
                  ),
                  GridServiceWidget().serviceContainer(
                      'assets/images/coach1.png',
                      "Get a Coach"
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GridServiceWidget().serviceContainer(
                      'assets/images/shortlisting1.png',
                      "Shortlisting"
                  ),
                  GridServiceWidget().serviceContainer(
                      'assets/images/finance1.png',
                      "Finance Plan"
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GridServiceWidget().serviceContainer(
                      'assets/images/review1.png',
                      "SOP Review"
                  ),
                  GridServiceWidget().serviceContainer(
                      'assets/images/visahelp.png',
                      "Visa Help"
                  ),
                ],),
              ],
            ),
          ),
        ]
      ),

    );
  }
}
