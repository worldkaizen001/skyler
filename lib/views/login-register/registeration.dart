import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skyler/models/userModel.dart';

import '../components/generics/button.dart';
import '../components/generics/text-field.dart';
import '../home/homepage.dart';
import 'login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Registration extends StatelessWidget {
   Registration({Key? key}) : super(key: key);
  final emailController = TextEditingController();
  final fNameController = TextEditingController();
  final lNameController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final formGlobalKey = GlobalKey<FormState>();
   final FirebaseAuth auth = FirebaseAuth.instance;



   @override
  Widget build(BuildContext context) {
     void postDataToDataBase () async{

       final fireStore = FirebaseFirestore.instance;
       User? user = auth.currentUser;
       UserModel userModel = UserModel();



       userModel.email = user!.email;
       userModel.uid = user.uid;
       userModel.firstName = fNameController.text;
       userModel.lastName = lNameController.text;

       await fireStore.collection("users").doc(user.uid).set(userModel.toMap());
       Fluttertoast.showToast(msg: 'Account Created Successful');
       Navigator.push(context, MaterialPageRoute(builder: (context){
         return const Homepage();
       }));



     }
     void createUser (String email,String password) async{


       if (formGlobalKey.currentState!.validate()){
         await auth.createUserWithEmailAndPassword(email: email, password: password).then((value) =>
         {
           postDataToDataBase(),
         }).catchError((e){
           Fluttertoast.showToast(msg: e!.message);
         });
       }



     }



     return LayoutBuilder(builder: (ctx,constraint){
      return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          height: constraint.maxHeight * 1,
          width: constraint.maxWidth * 1,
          margin: EdgeInsets.only(left: 20,right: 20,top: constraint.maxHeight * 0.1),
          child: Form(
            key: formGlobalKey,
            child: Column(
              children: [
                Text('Create Account!',style: GoogleFonts.poppins(fontSize: 25,fontWeight: FontWeight.bold),),
                SizedBox(
                  height: constraint.maxHeight * 0.04,
                ),

                 GenericTextField(
                  controller: fNameController,
                  obscure: false,
                  hintText: 'FirstName',
                   validator: (val) {
                     if (val!.isEmpty) {
                       return 'Please enter name';
                     }
                     if(!RegExp(r'^[a-z A-Z]+$').hasMatch(val)){
                       return 'enter a real name';
                     }

                     return null;
                   },
                ),
                 GenericTextField(
                  controller: lNameController,
                  obscure: false,
                  hintText: 'LastName',
                   validator: (val) {
                     if (val!.isEmpty) {
                       return 'Please enter name';
                     }
                     if(!RegExp(r'^[a-z A-Z]+$').hasMatch(val)){
                       return 'enter a real name';
                     }

                     return null;
                   },
                ),
                 GenericTextField(
                   controller: emailController,

                  obscure: false,
                  hintText: 'Email',
                     validator: (val) {
                       if (val!.isEmpty) {
                         return 'Please enter email';
                       }
                       if (!RegExp(
                           "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                           .hasMatch(val)) {
                         return 'Please a valid Email';
                       }
                       return null;
                     }
                ),
                 GenericTextField(
                   validator: (val) {
                     if (val!.isEmpty) {
                       return 'Please enter password';
                     } else if (val.length < 6) {
                       return 'Password is too short';
                     }

                     return null;
                   },
                   controller: passwordController,
                  obscure: true,
                  hintText: 'Password',),
                 GenericTextField(
                   validator: (val) {
                     if (val!.isEmpty) {
                       return 'Please enter password';
                     }
                     if (val.length < 6) {
                       return 'Password is too short';
                     }
                     if (passwordController.text !=
                         confirmPasswordController.text) {
                       return "Password does not match";
                     }

                     return null;
                   },
                   controller: confirmPasswordController,
                  obscure: true,
                  hintText: 'Confirm Password',),
                SizedBox(
                  height: constraint.maxHeight * 0.18,
                ),
                Button(color: const Color(0xff50b8e7), title: 'Register', height: 0.07, width: 1, radius: 8, callback: ()
                {
                  createUser(emailController.text.trim(),passwordController.text.trim());
                }
                  ,),
                SizedBox(
                  height: constraint.maxHeight * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Already have an Account?',style: GoogleFonts.poppins(fontSize: 12),),
                    const SizedBox(width: 4,),
                    InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return  Login();
                          }));
                        },
                        child: Text('Sign in',style: GoogleFonts.poppins(color: const Color(0xff50b8e7)),))
                  ],
                )

              ],
            ),
          ),
        ),

      );


    });
  }
}
