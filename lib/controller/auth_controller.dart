

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthController{

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String> signUpUser(String email,String fullName,String password) async{
    String res = 'Some error occured';
    try{
      if(email.isNotEmpty
          && fullName.isNotEmpty
          && password.isNotEmpty){

        //create an user
        UserCredential cred = await _auth.createUserWithEmailAndPassword(
            email: email, password: password);

        await _firestore.collection('users').doc(cred.user!.uid).set({
          'email' : email,
          'fullName' : fullName,
        });

        res = 'success';
      }else{
        res = 'Please fill all the Fields to Proceed...';
      }
    }catch(e){

    }

    return res;
  }

  loginUser(String email, String password) async{
    String res = 'Some error occured';
    try{
      if(email.isNotEmpty && password.isNotEmpty){
        await _auth.signInWithEmailAndPassword(email: email, password: password);
        res = 'success';
      }else{
        res = 'Please fill all the fields.';
      }
    }catch(e){
      res = e.toString();
    }
    return res;
  }
}
