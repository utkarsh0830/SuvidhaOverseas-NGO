import 'package:flutter/material.dart';

import '../../widgets/bullet_point.dart';

class EnglandDetailScreen extends StatefulWidget {
  const EnglandDetailScreen({super.key});

  @override
  State<EnglandDetailScreen> createState() => _EnglandDetailScreenState();
}

class _EnglandDetailScreenState extends State<EnglandDetailScreen> {
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Colors.indigo.shade900,
        title: Text(
          "ENGLAND",
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
              backgroundImage: AssetImage("assets/images/england.jpg"),
            ),
            title: Text(
              "About England",
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
            child: Text("Why Study in the England?",
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
            child: Text("Studying England can be a fascinating endeavor, as it offers insights into a rich history, diverse culture, and significant contributions to various fields.",
              softWrap: true,),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text("England has a long and storied history, including the Roman occupation, the Anglo-Saxon period, the Norman Conquest, the Tudor dynasty, the British Empire, and more. Exploring these historical periods provides insights into the development of England and its impact on the world.",
              softWrap: true,),
          ),
          SizedBox(height: 15,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text("England has produced some of the most celebrated literary figures in history, including William Shakespeare, Charles Dickens, Jane Austen, and many others. Studying English literature offers a deep dive into their works and their influence on world literature.",
              softWrap: true,),
          ),
          SizedBox(height: 20,),
          Container(
            height: 180,
            width: MediaQuery.of(context).size.width - 20,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage('assets/images/england4.jpg')
                )
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text("England is home to iconic landmarks such as Big Ben, Buckingham Palace, Stonehenge, and countless cathedrals and castles. Studying English art and architecture provides insights into the country's cultural heritage and architectural innovations.",
              softWrap: true,),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(" England's political system, including the monarchy, Parliament, and the Prime Minister, has played a significant role in shaping not only the country but also global politics. Understanding England's political history and current affairs is crucial for comprehending its role on the world stage.",
              softWrap: true,),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text("England has been at the forefront of scientific advancements for centuries, with notable figures like Isaac Newton, Charles Darwin, and Alan Turing making groundbreaking contributions. Studying English science and innovation sheds light on the country's intellectual prowess and technological progress.",
              softWrap: true,),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(" England's culture is a blend of traditions, customs, and contemporary influences. From its music scene, including The Beatles and The Rolling Stones, to its culinary delights like fish and chips and afternoon tea, exploring English culture provides a multifaceted understanding of the country.",
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
                        image: AssetImage('assets/images/england2.jpg')
                    )
                ),
              ),
              Container(
                height: 180,
                width: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/england3.jpg')
                    )
                ),
              )
            ],
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text("England boasts diverse landscapes, from the rolling hills of the countryside to the bustling streets of London. Studying English geography helps in understanding the natural beauty and geographical features that shape the country.",
              softWrap: true,),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text("England has a dynamic economy with sectors such as finance, manufacturing, technology, and tourism playing crucial roles. Analyzing the English economy and its industries provides insights into its economic development and global competitiveness.",
              softWrap: true,),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(" Like any other nation, England grapples with social issues such as inequality, immigration, healthcare, and education. Studying these issues helps in understanding the challenges facing English society and the efforts being made to address them.",
              softWrap: true,),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(" England's colonial past and its role in international organizations like the United Nations and the European Union have shaped its diplomatic relations with other countries. Analyzing England's international relations offers perspectives on its global influence and alliances.",
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
                      "About England",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo.shade900,
                      ),
                    ),
                    SizedBox(height: 20),
                    BulletPoint(
                        text: "England is one of the few countries in the world to still maintain a constitutional monarchy. While the monarch's powers are largely ceremonial, the royal family holds significant cultural and symbolic importance in English society. The British monarchy, with its traditions, ceremonies, and historical lineage, is a unique aspect of England's governance and identity."),
                    SizedBox(height: 20,),
                    BulletPoint(
                        text: "England is renowned for its legal system, which forms the basis of common law. Common law, developed over centuries through judicial decisions and precedents, emphasizes case law and legal principles established by courts. It contrasts with civil law systems found in many other parts of the world, making England's legal framework distinctive and influential globally."
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
