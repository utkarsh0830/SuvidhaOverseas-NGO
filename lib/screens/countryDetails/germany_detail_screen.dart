import 'package:flutter/material.dart';

import '../../widgets/bullet_point.dart';

class GermanyDetailScreen extends StatefulWidget {
  const GermanyDetailScreen({super.key});

  @override
  State<GermanyDetailScreen> createState() => _GermanyDetailScreenState();
}

class _GermanyDetailScreenState extends State<GermanyDetailScreen> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.indigo.shade900,
        title: Text(
          "GERMANY",
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
              backgroundImage: AssetImage("assets/images/germany.jpg"),
            ),
            title: Text(
              "About Germany",
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
            child: Text("Why Study in the Germany?",
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
                    image: AssetImage('assets/images/germany3.jpg')
                )
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text("Germany, located in the heart of Europe, is a country with a rich history, diverse landscapes, and a strong economic standing. It's the largest economy in Europe and the fourth-largest in the world, known for its precision engineering, high-tech products, and innovation. Germany boasts a variety of landscapes, from the majestic Alps in the south to the scenic coastlines of the North Sea and the Baltic Sea. It's a country with a deep cultural heritage, evident in its world-famous festivals like Oktoberfest, historic cities such as Berlin and Munich, and contributions to art, philosophy, and science.",
              softWrap: true,),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text("Germany is renowned for its commitment to sustainability and environmental protection, making it a leader in renewable energy and green technologies. It's a country that values education, research, and innovation, with a social market economy that combines capitalist economic policies with social welfare programs.",
              softWrap: true,),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text("High-Quality Education: German universities are recognized globally for their academic excellence, rigorous standards, and focus on research. Germany offers a wide range of universities, including traditional universities, universities of applied sciences (Fachhochschulen), and technical universities, catering to various academic and professional interests.",
              softWrap: true,),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text("No Tuition Fees at Public Universities: One of the most compelling reasons to study in Germany is the absence of tuition fees at undergraduate and PhD levels at public universities, making higher education accessible to a broader range of students. A nominal university administration fee is charged, which often includes a public transport ticket for the semester.",
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
                        image: AssetImage('assets/images/germany.jpg')
                    )
                ),
              ),
              Container(
                height: 180,
                width: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/germany2.jpg')
                    )
                ),
              )
            ],
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text("Outstanding Research Opportunities: Germany is at the forefront of scientific research, housed in universities, research institutions, and the industry. Students have the opportunity to work alongside leading experts in their field and access state-of-the-art research facilities.",
              softWrap: true,),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text("Central European Location: Germany's central location in Europe makes it an ideal base for exploring other European countries. The excellent public transportation system and budget airlines make travel both affordable and accessible.",
              softWrap: true,),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text("Support Services for International Students: German universities provide comprehensive support services to assist international students, including welcome programs, German language courses, and assistance with accommodation and visas.",
              softWrap: true,),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text("Diverse and Welcoming Community: Germany is a multicultural society that welcomes people from all over the world. International students will find a welcoming community and a chance to experience a diverse cultural landscape.",
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
                      "About Germany",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo.shade900,
                      ),
                    ),
                    SizedBox(height: 20),
                    BulletPoint(
                        text: "Germany, located in the heart of Europe, is a country with a rich history, diverse landscapes, and a strong economic standing. It's the largest economy in Europe and the fourth-largest in the world, known for its precision engineering, high-tech products, and innovation. Germany boasts a variety of landscapes, from the majestic Alps in the south to the scenic coastlines of the North Sea and the Baltic Sea. It's a country with a deep cultural heritage, evident in its world-famous festivals like Oktoberfest, historic cities such as Berlin and Munich, and contributions to art, philosophy, and science."),
                    SizedBox(height: 20,),
                    BulletPoint(
                        text: "Germany is renowned for its commitment to sustainability and environmental protection, making it a leader in renewable energy and green technologies. It's a country that values education, research, and innovation, with a social market economy that combines capitalist economic policies with social welfare programs."
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
