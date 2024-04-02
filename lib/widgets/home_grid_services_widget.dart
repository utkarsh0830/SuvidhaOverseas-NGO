import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class GridServiceWidget extends StatelessWidget {
  const GridServiceWidget({super.key});

  Widget serviceContainer(String imageLoc,String title){

    _launchURL(String url) async {
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }

    return Container(
      width: 180,
      height: 140,
      decoration: BoxDecoration(
        color: Colors.blue[900],
          border: Border.all(
              color: Colors.grey,
              width: 1.0
          ),
          borderRadius: BorderRadius.circular(10)
      ),
      child: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 5,),
              Image.asset(imageLoc,
              height: 60,
              width: 60,
              fit: BoxFit.fill,
              ),
              SizedBox(
                height: 10,
              ),
              Text(title,
                style: TextStyle(
                    fontSize: 15 ,
                    fontWeight: FontWeight.w500,
                    color: Colors.white
                ),
              ),

              TextButton(
                onPressed: (){
                  _launchURL("https://docs.google.com/forms/d/e/1FAIpQLSeWBiUxRUPIUJs4I9POerfKh1YVCbFywdlO8eaynlN3GTLFng/viewform");
                },
                child: Text(
                  'Start Now',style: TextStyle(
                  color: Colors.blue
                ),)
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
