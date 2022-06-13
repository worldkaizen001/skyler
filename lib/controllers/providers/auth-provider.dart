import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:skyler/views/home/homepage.dart';


class AuthProvider with ChangeNotifier{

  final FirebaseAuth auth = FirebaseAuth.instance;

  //Implement sign in with email and password

  Future<void> signInUser ({ required BuildContext context, required String email, required String password}) async{

     await auth.signInWithEmailAndPassword(email: email, password: password).then((uid) => {
       Fluttertoast.showToast(msg: 'Login Successful'),
       Navigator.push(context, MaterialPageRoute(builder: (context)=> const Homepage()))

     }).catchError((e){
       Fluttertoast.showToast(msg: e!.message);
     });
     notifyListeners();
  }


 //Implement Create user with email and password

  Future<void> createUser (String email,String password) async{

    await auth.createUserWithEmailAndPassword(email: email, password: password).then((value) => {
      Fluttertoast.showToast(msg: 'Login Successful'),

    }).catchError((e){
      Fluttertoast.showToast(msg: e!.message);
    });
    notifyListeners();
  }



  //Implement sign in with google

  //Implement forget password

  //Implement sign out for both google and email

}