import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:skyler/views/home/homepage.dart';
import 'package:skyler/models/userModel.dart';
import 'package:cloud_firestore/cloud_firestore.dart';




class AuthProvider with ChangeNotifier{

  final FirebaseAuth auth = FirebaseAuth.instance;
  final fireStore = FirebaseFirestore.instance;


  //Implement sign in with email and password

  Future<void> signInUser ({ required BuildContext context, required String email, required String password})
  async{

     await auth.signInWithEmailAndPassword(email: email, password: password).then((uid) => {
       Fluttertoast.showToast(msg: 'Login Successful'),
       Navigator.push(context, MaterialPageRoute(builder: (context)=> const Homepage()))

     }).catchError((e){
       Fluttertoast.showToast(msg: e!.message);
     });
     notifyListeners();
  }


 //Implement Create user with email and password

  Future<void> createUser ({required BuildContext context, required String email,required String password, required Function? callback}) async{

    await auth.createUserWithEmailAndPassword(email: email, password: password).then((value) => {
      callback,
      Fluttertoast.showToast(msg: 'Login Successful'),

    }).catchError((e){
      Fluttertoast.showToast(msg: e!.message);
    });


    notifyListeners();
  }



  //Implement sign in with google

  //Implement forget password
  Future resetPassword({required BuildContext context,required String email}) async {

    try{
      await auth.sendPasswordResetEmail(email: email);
      Fluttertoast.showToast(msg: 'Password reset email sent');
      Navigator.pop(context);
    }
    on FirebaseAuthException catch (e){
      Fluttertoast.showToast(msg: e.toString());

    }
    notifyListeners();
  }

  Future signOut (context) async {
    auth.signOut();
    Navigator.pop(context);
    Fluttertoast.showToast(msg: 'logged out');
  }

}