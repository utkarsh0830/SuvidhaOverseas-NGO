import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:suvidhaoverseas/widgets/bullet_point.dart';

class USADetailScreen extends StatefulWidget {
  const USADetailScreen({Key? key}) : super(key: key);

  @override
  _USADetailScreenState createState() => _USADetailScreenState();
}

class _USADetailScreenState extends State<USADetailScreen> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.indigo.shade900,
        title: Text(
          "USA",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 20),
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/images/usa3.jpg"),
            ),
            title: Text(
              "About The USA",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.indigo.shade900,
              ),
            ),
            trailing: IconButton(
              icon: AnimatedSwitcher(
                duration: Duration(milliseconds: 300),
                child: _isExpanded ? Icon(Icons.expand_less) : Icon(Icons.expand_more),
              ),
              onPressed: () {
                setState(() {
                  _isExpanded = !_isExpanded;
                  if (_isExpanded) {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return _buildDialog(context);
                      },
                    );
                  }
                });
              },
            ),
          ),
          SizedBox(height: 15,),
          Divider(
            color: Colors.indigo.shade900,
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text("Why Study in the USA?",
            softWrap: true,
            style: TextStyle(
              color: Colors.blue.shade900,
              fontSize: 26,
              fontWeight: FontWeight.bold
            ),),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text("World-Class Universities: The USA boasts some of the world's top universities, renowned for their academic excellence, research facilities, and innovative teaching methods. Institutions like Harvard, MIT, and Stanford are globally recognized, offering students a prestigious education.",
            softWrap: true,),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text("Diverse Educational Opportunities: With thousands of academic institutions offering a wide range of programs, the USA provides unparalleled academic choices. Whether it's undergraduate, postgraduate, or doctoral studies, students can find courses that align with their interests and career goals.",
            softWrap: true,),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text("Cutting-Edge Research and Innovation: The USA is a leader in scientific and creative innovation. Students have the opportunity to engage in research that pushes the boundaries of knowledge, often with access to state-of-the-art facilities and resources.",
            softWrap: true,),
          ),
          SizedBox(height: 20,),
          Container(
            height: 180,
            width: MediaQuery.of(context).size.width - 20,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage('assets/images/usa2.jpg')
              )
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text("Cultural Diversity: Studying in the USA exposes students to a multicultural environment, enhancing their understanding of different cultures and perspectives. This diversity enriches the learning experience and fosters a global outlook.",
              softWrap: true,),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text("Career Advancement: Graduates from U.S. universities are highly sought after by employers worldwide. The USA's strong connections with the global job market provide students with valuable internship and employment opportunities.",
              softWrap: true,),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text("English Language Proficiency: As the medium of instruction is English, studying in the USA is an excellent way to improve language skills, which is a significant advantage in the international job market.",
            softWrap: true,),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text("Supportive Learning Environment: U.S. universities offer extensive support services to international students, including orientation programs, English language assistance, and career counseling, ensuring a smooth transition and successful academic journey.",
            softWrap: true,),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 160,
                width: 200,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/usa3.png')
                  )
                ),
              ),
              Container(
                height: 180,
                width: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/usa4.png')
                    )
                ),
              )
            ],
          ),
          SizedBox(height: 0,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text("Campus Life: U.S. universities are known for their vibrant campus life, with numerous extracurricular activities, clubs, and organizations. This enhances the overall student experience, contributing to personal and social growth.",
            softWrap: true,),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text("Global Perspective: The experience of studying in the USA equips students with a global perspective, critical thinking skills, and adaptability, all of which are valuable in today’s interconnected world.",
              softWrap: true,),
          ),
        ],
      ),
    );
  }

  Widget _buildDialog(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      elevation: 1,
      backgroundColor: Colors.transparent,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeInOut,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              offset: const Offset(0, 10),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 500,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Text(
                      "About The USA",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo.shade900,
                      ),
                    ),
                    SizedBox(height: 20),
                    BulletPoint(
                        text: "The United States of America, commonly referred to as the USA, is a country comprising 50 states, a federal district, five major self-governing territories, and various possessions. It's known for its diverse geography, rich cultural heritage, and influential role in global affairs. The USA is the world's third-largest country by total area and has a population of over 330 million people. It's a melting pot of cultures, ethnicities, and languages, making it one of the world's most ethnically diverse and multicultural nations."),
                    SizedBox(height: 20,),
                    BulletPoint(
                        text: "The USA is recognized for its strong economy, technological innovation, and leadership in various fields such as science, arts, and education. It's home to iconic landmarks like the Statue of Liberty, the Grand Canyon, and Hollywood, as well as renowned institutions like Harvard University, Silicon Valley, and the Smithsonian Institution."
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text(
                  'Close',
                  style: TextStyle(color: Colors.indigo.shade900),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
