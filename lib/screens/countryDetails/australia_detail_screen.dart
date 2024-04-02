import 'package:flutter/material.dart';

import '../../widgets/bullet_point.dart';

class AustraliaDetailScreen extends StatefulWidget {
  const AustraliaDetailScreen({super.key});

  @override
  State<AustraliaDetailScreen> createState() => _AustraliaDetailScreenState();
}

class _AustraliaDetailScreenState extends State<AustraliaDetailScreen> {
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.indigo.shade900,
        title: Text(
          "Australia",
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
              backgroundImage: AssetImage("assets/images/australia.jpg"),
            ),
            title: Text(
              "About Australia",
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
            child: Text("Why Study in the Australia?",
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
            child: Text("Australia is known for its world-class education system, with universities consistently ranking among the best globally. Australian institutions offer a wide range of courses and degrees across various disciplines, ensuring students receive a high-quality education that is recognized and respected worldwide.",
              softWrap: true,),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text("Australia is considered one of the safest countries in the world, with a stable political environment, low crime rates, and high standards of living. International students benefit from a secure and peaceful environment that promotes personal safety and well-being.",
              softWrap: true,),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(" Australia offers various opportunities for international students to work part-time during their studies and full-time during scheduled breaks through student work permits. Additionally, the country provides post-graduation work visa options, allowing graduates to gain valuable work experience and potentially transition to permanent residency.",
              softWrap: true,),
          ),
          SizedBox(height: 20,),
          Container(
            height: 180,
            width: MediaQuery.of(context).size.width - 20,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage('assets/images/aus3.jpg')
                )
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(" Australian universities are renowned for their research excellence and innovation across various fields. International students have opportunities to engage in cutting-edge research projects and collaborate with leading experts, enhancing their academic and professional development.",
              softWrap: true,),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(" An Australian degree is highly regarded worldwide and is recognized for its quality and relevance. Graduates of Australian institutions are sought after by employers globally, making studying in Australia a valuable investment in one's future career.",
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
                        image: AssetImage('assets/images/aus4.jpg')
                    )
                ),
              ),
              Container(
                height: 180,
                width: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/aus2.jpg')
                    )
                ),
              )
            ],
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text("Overall, Australia offers a combination of academic excellence, cultural diversity, and quality of life, making it an attractive destination for international students seeking a rewarding and enriching educational experience abroad.",
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
                    "About Australia",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo.shade900,
                    ),
                  ),
                  SizedBox(height: 20),
                  BulletPoint(
                      text: "Australia is renowned for its diverse and unique wildlife, including iconic species such as kangaroos, koalas, and wombats. The country is also home to an array of fascinating native birds, reptiles, and marine life. Additionally, Australia boasts breathtaking natural wonders, such as the Great Barrier Reef, the world's largest coral reef system, and Uluru (Ayers Rock), a massive sandstone monolith in the heart of the Australian Outback. These natural attractions draw millions of visitors from around the world and contribute to Australia's reputation as a haven for nature lovers and outdoor enthusiasts."),
                  SizedBox(height: 20,),
                  BulletPoint(
                      text: "Australia has a rich Indigenous history dating back tens of thousands of years, with Aboriginal and Torres Strait Islander peoples being the custodians of the land for generations. Indigenous Australians have a deep spiritual connection to the land and have preserved their culture and traditions through art, storytelling, music, and ceremonies. Exploring Aboriginal culture and heritage offers visitors a profound insight into Australia's ancient past and fosters appreciation for the enduring contributions of Indigenous peoples to the country's identity and heritage."
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

