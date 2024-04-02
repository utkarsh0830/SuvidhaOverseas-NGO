import 'package:flutter/material.dart';

class GridViewWidget extends StatelessWidget {

  GridViewWidget({Key? key,});


  Widget container(String imageLoc,String title,String description){
    return Container(
      width: 100,
      height: 120,
      decoration: BoxDecoration(
          border: Border.all(
              color: Colors.grey,
              width: 1.0
          ),
          borderRadius: BorderRadius.circular(10)
      ),
      child: Center(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  maxRadius: 30,
                  child: Image.asset(imageLoc,
                  width: 80,
                  fit: BoxFit.fill,),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(title,
                style: TextStyle(
                  fontSize: 15 ,
                  fontWeight: FontWeight.w500,
                  color: Colors.blue.shade700
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(description,
                  style: TextStyle(
                    color: Colors.grey
                  ),),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}