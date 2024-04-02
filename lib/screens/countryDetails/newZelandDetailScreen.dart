import 'package:flutter/material.dart';

import '../../widgets/bullet_point.dart';
class NewZelandDetailScreen extends StatefulWidget {
  const NewZelandDetailScreen({super.key});

  @override
  State<NewZelandDetailScreen> createState() => _NewZelandDetailScreenState();
}

class _NewZelandDetailScreenState extends State<NewZelandDetailScreen> {
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.indigo.shade900,
        title: Text(
          "New Zeland",
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
              backgroundImage: AssetImage("assets/images/newzeland.jpg"),
            ),
            title: Text(
              "About NewZeland",
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
            child: Text("Why Study in the New Zeland?",
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
            child: Text("New Zealand is known for its high-quality education system, with universities consistently ranking well internationally. The academic institutions follow rigorous standards and offer a wide range of courses and degrees across various disciplines.",
              softWrap: true,),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text("New Zealand is renowned for its safe and welcoming environment. With a low crime rate and a friendly atmosphere, international students often feel comfortable and supported during their studies.",
              softWrap: true,),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text("Despite its relatively small population, New Zealand is culturally diverse. Studying in New Zealand provides exposure to a mix of cultures, enhancing the overall educational experience and fostering intercultural understanding.",
              softWrap: true,),
          ),
          SizedBox(height: 20,),
          Container(
            height: 180,
            width: MediaQuery.of(context).size.width - 20,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage('assets/images/new2.jpg')
                )
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text("New Zealand consistently ranks highly in terms of quality of life. With its clean environment, excellent healthcare system, and high standard of living, students can enjoy a balanced and fulfilling lifestyle while pursuing their studies.",
              softWrap: true,),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text("New Zealand universities often employ innovative teaching methods, including project-based learning, practical experience, and collaborative projects. These approaches help students develop critical thinking, problem-solving, and teamwork skills essential for success in the modern workforce.",
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
                        image: AssetImage('assets/images/new3.jpg')
                    )
                ),
              ),
              Container(
                height: 180,
                width: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/new4.jpg')
                    )
                ),
              )
            ],
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text("Overall, studying in New Zealand offers a unique blend of academic excellence, cultural diversity, and lifestyle advantages, making it an attractive choice for international students seeking a world-class education and memorable experience abroad.",
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
                      "About New Zeland",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo.shade900,
                      ),
                    ),
                    SizedBox(height: 20),
                    BulletPoint(
                        text: "New Zealand is a country comprising two main islands, the North Island and the South Island, along with numerous smaller islands. It is located in the southwestern Pacific Ocean, southeast of Australia."),
                    SizedBox(height: 20,),
                    BulletPoint(
                        text: "New Zealand is a parliamentary democracy with a constitutional monarchy. It has a unicameral legislature and operates under the Westminster system, with a Prime Minister as the head of government and a ceremonial monarch represented by a Governor-General."
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
