import 'package:flutter/material.dart';

import '../../widgets/bullet_point.dart';

class CanadaDetailScreen extends StatefulWidget {
  const CanadaDetailScreen({super.key});

  @override
  State<CanadaDetailScreen> createState() => _CanadaDetailScreenState();
}

class _CanadaDetailScreenState extends State<CanadaDetailScreen> {
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.indigo.shade900,
        title: Text(
          "Canada",
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
              backgroundImage: AssetImage("assets/images/canada.jpg"),
            ),
            title: Text(
              "About Canada",
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
            child: Text("Why Study in the Canada?",
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
            child: Text("Canada is home to world-renowned universities and colleges known for their academic excellence and research output. Canadian institutions consistently rank highly in international university rankings, ensuring a top-notch education.",
              softWrap: true,),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text("Canada offers various opportunities for international students to work part-time during their studies and full-time during scheduled breaks through student work permits. Additionally, the country provides pathways for post-graduation work permits, allowing graduates to gain valuable work experience and potentially transition to permanent residency.",
              softWrap: true,),
          ),
          SizedBox(height: 20,),
          Container(
            height: 180,
            width: MediaQuery.of(context).size.width - 20,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage('assets/images/canada2.jpg')
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
            child: Text("Canada boasts a high standard of living, with access to quality healthcare, clean air, and natural beauty. Its cities consistently rank among the world's most livable, offering a vibrant urban lifestyle alongside opportunities for outdoor activities and recreation.",
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
                        image: AssetImage('assets/images/canada3.jpg')
                    )
                ),
              ),
              Container(
                height: 180,
                width: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/canada4.jpg')
                    )
                ),
              )
            ],
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(" A Canadian degree is highly respected worldwide and is recognized for its quality and rigor. Graduates of Canadian institutions are sought after by employers globally, making studying in Canada a valuable investment in one's future career.",
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
                      "About Canada",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo.shade900,
                      ),
                    ),
                    SizedBox(height: 20),
                    BulletPoint(
                        text: "Canada is renowned for its stunning natural beauty, boasting diverse landscapes ranging from rugged mountains and vast forests to picturesque lakes and expansive coastlines. Iconic natural attractions include the Rocky Mountains, Banff National Park, Niagara Falls, and the coastline of British Columbia. The country's abundance of wilderness areas provides ample opportunities for outdoor activities such as hiking, skiing, camping, and wildlife spotting, making it a paradise for nature enthusiasts and adventurers alike."),
                    SizedBox(height: 20,),
                    BulletPoint(
                        text: "Canada prides itself on being a multicultural mosaic, with a rich tapestry of ethnicities, cultures, and languages. The country's immigration policies have resulted in a diverse population, with people from all over the world calling Canada home. This cultural diversity is celebrated and embraced across Canadian society, contributing to a vibrant and inclusive atmosphere. Canada's multiculturalism is evident in its festivals, cuisines, arts, and communities, fostering intercultural understanding and cooperation."
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
