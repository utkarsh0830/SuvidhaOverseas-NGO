  import 'package:flutter/cupertino.dart';
  import 'package:flutter/material.dart';
  import 'package:flutter/widgets.dart';
import 'package:suvidhaoverseas/screens/enquiry_form_scree.dart';
  import 'package:suvidhaoverseas/widgets/custom_container.dart';

import '../widgets/bullet_point.dart';

  class ExamsScreen extends StatefulWidget {
    const ExamsScreen({Key? key}) : super(key: key);

    @override
    _ExamsScreenState createState() => _ExamsScreenState();
  }

  class _ExamsScreenState extends State<ExamsScreen> with SingleTickerProviderStateMixin {
    late TabController _tabController;

    @override
    void initState() {
      super.initState();
      _tabController = TabController(length: 2, vsync: this); // Define the TabController with two tabs
    }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          leading: Icon(CupertinoIcons.book,color: Colors.white,),
          backgroundColor: Colors.indigo.shade900,
          title: Text("Exams",
            style: TextStyle(
                color: Colors.white
            ),),
          bottom: TabBar(
            controller: _tabController, // Provide the TabController here
            tabs: [
              Tab(
                child: Text("Duolingo English Test",
                  style: TextStyle(
                      color: Colors.white
                  ),),
              ),
              Tab(
                child: Text("IELTS",
                  style: TextStyle(
                      color: Colors.white
                  ),),
              )
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController, // Provide the TabController here as well
          children: [
            // Define the content for the first tab
            ListView(
              padding: EdgeInsets.all(9),
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 150, // Adjust width as needed
                          height: 150, // Adjust height as needed
                          child: ClipOval(
                            child: Image.asset(
                              'assets/images/exam.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        SizedBox(width: 30,),
                        Text("Our Master Class Program",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.blue[300]
                        ),)
                      ],
                    ),
                    SizedBox(height: 10,),
                    Divider(
                      thickness: 1,
                      color: Colors.blue[900],
                    ),
                    SizedBox(height: 25,),
                    Center(
                      child: Text("Best Educators in India",
                      style: TextStyle(
                        color: Colors.blue[900],
                        fontSize: 20
                      ),),
                    ),
                    SizedBox(height: 40,),

                    Row(
                      children: [
                        CustomContainer(),
                        SizedBox(width: 12,),
                        CustomContainer()
                      ],
                    ),
                    SizedBox(height: 40,),
                    Row(
                      children: [
                        CustomContainer(),
                        SizedBox(width: 12,),
                        CustomContainer()
                      ],
                    ),
                    SizedBox(height: 40,),
                    Row(
                      children: [
                        CustomContainer(),
                        SizedBox(width: 12,),
                        CustomContainer()
                      ],
                    ),
                    SizedBox(height: 40,),
                    Row(
                      children: [
                        CustomContainer(),
                        SizedBox(width: 12,),
                        CustomContainer()
                      ],
                    )
                  ],
                )
              ],
            ),
            // Define the content for the second tab
            ListView(
              padding: EdgeInsets.all(8),
              children: [
                Column(
                  children: [
                    SizedBox(height: 6,),
                    Text("IELTS Writing",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20
                    ),),
                    SizedBox(height: 20,),
                    Container(
                      height: 200,
                      width: MediaQuery.of(context).size.width - 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/images/exam1.png'
                        )
                      ),)
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("In the IELTS test, the Writing Test is a crucial part that assesses your ability to express yourself in writing. This module is the same for both IELTS Academic and IELTS General Training."),
                    ),
                    SizedBox(height: 10,),
                    Text("IELTS Academic Training Writing:"),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text("Total Time:",
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),),
                        Text("You'll have 60 minutes to complete two tasks."),

                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //crossAxisAlignment: CrossAxisAlignment.start, // Align text to the start of each line
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            "Total Questions:",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(width: 10), // Add some spacing between the texts
                        Expanded(
                          child: Flexible(
                            child: Text(
                              "The writing test has two tasks (Task 1 and Task 2).",
                              softWrap: true, // Allow the text to wrap to the next line if needed
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height:10 ,),
                    Text(
                      "Task 1(150 words):",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                      ),
                    ),
                    SizedBox(height: 10,),
                    BulletPoint(text: "In the first task, you'll see a graph, chart, table, diagram, letter or map, and you must describe the information in your own words."),

                    SizedBox(height: 10,),
                    BulletPoint(text: "For example, you will be asked to write a letter responding to a given situation."),
                    SizedBox(height: 10,),

                    BulletPoint(text: "Keep it under 20 minutes, use at least 150 words, or you might get penalised for being too brief."),
                    SizedBox(height: 10,),
                    BulletPoint(text: "Longer Task 1 means less time for Task 2, which is more critical for your Writing score. This task tests your ability to present information in a clear and organised way."),
                    SizedBox(height: 10,),
                    Divider(
                      color: Colors.indigo.shade900,
                    ),
                    SizedBox(height:10 ,),
                    Text(
                      "Task 2(250 words):",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                      ),
                    ),
                    SizedBox(height:10 ,),
                    BulletPoint(
                        text: "The second task is an essay. You'll be given a topic or a question, and you need to write an essay that presents an argument, shares your opinion, or discusses a problem."
                    ),
                    SizedBox(height:10 ,),
                    BulletPoint(
                        text: "This task assesses your ability to express and support your ideas effectively. You need to write a letter correctly and clearly when facing a situation."
                    ),
                    SizedBox(height:10 ,),
                    BulletPoint(
                        text: "Use an academic or semi-formal style, organise your thoughts, and give examples or evidence from your experience. Spend no more than 40 minutes, write at least 250 words, and avoid being too brief to prevent penalties."),
                    SizedBox(height:10 ,),
                    Divider(color: Colors.indigo.shade900,),
                    SizedBox(height: 10,),
                    Text(
                      "IELTS General Training Writing:",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //crossAxisAlignment: CrossAxisAlignment.start, // Align text to the start of each line
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            "Total Time:",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(width: 10), // Add some spacing between the texts
                        Expanded(
                          child: Flexible(
                            child: Text(
                              "You also have 60 minutes to complete two tasks.",
                              softWrap: true, // Allow the text to wrap to the next line if needed
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      //crossAxisAlignment: CrossAxisAlignment.start, // Align text to the start of each line
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            "Total Questions:",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(width: 10), // Add some spacing between the texts
                        Expanded(
                          child: Flexible(
                            child: Text(
                              "Like the Academic module, there are two tasks here.",
                              softWrap: true, // Allow the text to wrap to the next line if needed
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Text(
                      "Task 1(150 words):",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                      ),
                    ),
                    SizedBox(height: 10,),
                    BulletPoint(
                        text: "In the first task, you'll see a graph, chart, table, diagram, letter or map, and you must describe the information in your own words. For example, you will be asked to write a letter responding to a given situation."),
                    SizedBox(height: 10,),
                    BulletPoint(
                        text: "Keep it under 20 minutes, use at least 150 words, or you might get penalised for being too brief."
                    ),
                    SizedBox(height: 10,),
                    BulletPoint(
                        text: "Longer Task 1 means less time for Task 2, which is more critical for your Writing score. This task tests your ability to present information in a clear and organised way."
                    ),
                    SizedBox(height: 10,),
                    Text(
                      "Task 2(250 words):",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                      ),
                    ),
                    SizedBox(height: 10,),
                    BulletPoint(
                        text: "The second task is an essay. You'll be given a topic or a question, and you need to write an essay that presents an argument, shares your opinion, or discusses a problem."),
                    SizedBox(height: 10,),
                    BulletPoint(
                        text: "This task assesses your ability to express and support your ideas effectively. You need to write a letter correctly and clearly when facing a situation."),
                    SizedBox(height: 10,),
                    BulletPoint(
                        text: "Use an academic or semi-formal style, organise your thoughts, and give examples or evidence from your experience. Spend no more than 40 minutes, write at least 250 words, and avoid being too brief to prevent penalties."),
                    SizedBox(height: 10,),
                    Divider(
                      color: Colors.indigo.shade900,
                    ),
                    SizedBox(height: 10,),
                    Text(
                      "Tips for the IELTS Reading Test",
                      style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    SizedBox(height: 10,),
                    BulletPoint(
                        text: "Remember, you have limited time for each task. Make sure you dedicate around 20 minutes to Task 1 and approximately 40 minutes to Task 2. It will help you manage your time well."),
                    SizedBox(height: 10,),
                    BulletPoint(
                        text: "Make sure your writing is directly related to the task. Don't go off-topic. Read the instructions carefully."),
                    BulletPoint(
                        text: "The more you practise, the more confident you'll become. Try writing essays and letters on various topics to improve your skills"),
                    SizedBox(height: 30,),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        elevation: 1,
                        shape: ContinuousRectangleBorder(),
                        side: BorderSide(width: 1,
                          style: BorderStyle.solid
                        )
                      ),
                        onPressed: (){
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                            return EnquiryFormScreen();
                          }));
                        },
                        child: Text("Register Now",
                        style: TextStyle(
                          color: Colors.indigo.shade900
                        ),),
                    ),
                    SizedBox(height: 10,)
                  ],
                )
              ],
            )
          ],
        ),
      );
    }

    @override
    void dispose() {
      _tabController.dispose(); // Dispose the TabController when the widget is disposed
      super.dispose();
    }
  }
