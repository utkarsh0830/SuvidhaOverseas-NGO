import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 190,
      decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(width: 1,
              color: Colors.indigo.shade900
          )
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(8),
              height: 130,
              width: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      width: 1,
                      color: Colors.black
                  ),
                  image: DecorationImage(
                      fit: BoxFit.cover,

                      image: AssetImage('assets/images/suvi.jpg',)
                  )
              ),
            ),
            Text("Teacher",
              style: TextStyle(
                  color: Colors.blue.shade200,
                  fontSize: 15
              ),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text("By focusing on Teacher donations, our NGO aims to improve the well-being and quality of life for individuals and communities in need.",
                style: TextStyle(

                ),),
            )
          ],
        ),
      ),
    );
  }
}
