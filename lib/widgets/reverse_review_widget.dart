import 'package:flutter/material.dart';

class ReverseReviewWidget extends StatelessWidget {
  const ReverseReviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(width: 60,),
        Expanded(
          child: Container(
            height: 100,
            width: 150,
            child: const SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
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
                      mainAxisAlignment: MainAxisAlignment.start,
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
        ),
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
      ],
    );
  }
}
