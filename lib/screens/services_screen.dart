import 'package:flutter/material.dart';
import 'package:suvidhaoverseas/widgets/grid_widget.dart';
import 'package:url_launcher/url_launcher.dart';


class ServicesScreen extends StatelessWidget {
  ServicesScreen({Key? key}) : super(key: key);

  _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  final List<Map<String, dynamic>> gridData = [
    {
      'icon': 'assets/images/review.png',
      'title': 'SOP Review',
      'description': 'Thorough review and feedback on your Statement of Purpose (SOP) for university applications.'
    },
    {
      'icon': 'assets/images/aeroplane.png',
      'title': 'Visa Help',
      'description': 'Assistance and Guidance in the visa application process for study abroad.',
    },
    {
      'icon': 'assets/images/finance.png',
      'title': 'Financial Planning',
      'description': 'Personalized support and guidance in financial planning for education expenses abroad.',
    },

    {
      'icon': 'assets/images/scholarship.png',
      'title': 'Scholarship Assistance',
      'description': 'Comprehensive aid in applying for scholarships to fund your education abroad through our NGO.'
    },
    {
      'icon': 'assets/images/education.png',
      'title': 'Educational Counseling',
      'description': 'Personalized Guidance Sessions to help you make informed decisions about our overseas education.'
    },
    {
      'icon': 'assets/images/language.png',
      'title': 'Language Support Program',
      'description': 'Specialized language training tailored to assist you in adapting to a new educational environment.'
    },
    {
      'icon': 'assets/images/community.png',
      'title': 'Community Programs',
      'description': 'Engage in volunteer activities and community projects as part of out educational initiatives.'
    },
    {
      'icon': 'assets/images/mentor.png',
      'title': 'Mentorship Programs',
      'description': 'Access to experienced mentor who provide guidance throughout your educational journey abroad.'
    },
    {
      'icon': 'assets/images/cultural.png',
      'title': 'Cultural Exchange',
      'description': 'Participate in cultural exchange events fostering global understanding and appreciation.'
    },
    // Add more data items as needed
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 2,
        title: Text("Services",
        style: TextStyle(
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.italic,
          color: Colors.white
        ),),
        backgroundColor: Colors.indigo.shade900,
      ),
      backgroundColor: Colors.transparent,
      body: ListView(
        children: [Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20,),
            Container(
              width: MediaQuery.of(context).size.width - 250,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: DecorationImage(
                  image: AssetImage("assets/images/logo_suvidha.png"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(height: 25),
            Text(
              'Services',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "Empowering dreams worldwide: Our tailored services unlock boundless opportunities.",
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
            ),
            SizedBox(height: 20),
            GridView.builder(
              padding: EdgeInsets.all(8),
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: gridData.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 20,
                crossAxisSpacing: 8,
              ),
              itemBuilder: (context, index) {
                final String imageLoc = gridData[index]['icon'];
                final String title = gridData[index]['title'];
                final String description = gridData[index]['description'];
                return GestureDetector(
                  onTap: () => _launchURL("https://docs.google.com/forms/d/e/1FAIpQLSeWBiUxRUPIUJs4I9POerfKh1YVCbFywdlO8eaynlN3GTLFng/viewform"),
                    child: GridViewWidget().container(imageLoc, title, description));
              },
            ),
            SizedBox(height: 20,),
          ],
        ),
      ]
      ),
    );
  }
}