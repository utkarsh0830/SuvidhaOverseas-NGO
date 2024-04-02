import 'dart:io';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:suvidhaoverseas/screens/main_screen.dart';
import 'package:suvidhaoverseas/screens/welcome_screen.dart';


void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid ? await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyBU-MtjJERyIgfcdZNC6F9ZJFJocsvwJIU",
          appId: "1:1088441739555:android:faf58ccb6e3978773fc496",
          messagingSenderId: "1088441739555",
          projectId: "suvidhaoverseas-c344a",
          storageBucket: "gs://suvidhaoverseas-c344a.appspot.com"
      )
  ) : await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.black87,
        textTheme: Theme.of(context).textTheme.apply(
          fontFamily: 'Montserrat',
        ),
      ),
      home: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context,snapshot){
          if(snapshot.connectionState == ConnectionState.active){

            if(snapshot.hasData){

              return MainScreen();

            }else if(snapshot.hasError){

              return Center(
                child: Text('${snapshot.error}'),
              );
            }
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          return const WelcomeScreen();
        },
      ),
    );
  }
}
