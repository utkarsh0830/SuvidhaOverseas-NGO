import 'package:flutter/material.dart';

class ReviewWidget extends StatelessWidget {
  const ReviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 200,
          height: 130,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/graduate6.jpg')
              ),
              border: Border.all(
                width: 1,
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(10)
          ),
        ),
        SizedBox(width: 60,),
        Expanded(
          child: Container(
            height: 100,
            width: 180,
            child: const SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('SOP Review',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500
                    ),
                  ),
                  Text("Thorough review and feedback on your Statement of Purpose (SOP) for university applications.",
                    style: TextStyle(
                        color: Colors.grey
                    ),),
                  SizedBox(height: 10,),
                  Text('Offering',
                    style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.star_border_outlined),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('Detailed analysis and critique of your Statement of Purpose.'),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.star_border_outlined),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('Customized suggestions to enhance content and presentation.'),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.star_border_outlined),
                                SizedBox(
                                  width: 10,
                                ),
                                Text('Guidance on aligning your SOP with university requirements.'),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
