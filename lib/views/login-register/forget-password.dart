import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skyler/controllers/providers/auth-provider.dart';
import 'package:skyler/views/components/generics/button.dart';
import 'package:skyler/views/components/generics/text-field.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:provider/provider.dart';


import '../home/homepage.dart';

class  ForgetPassword extends StatefulWidget {
   ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  final emailController = TextEditingController();

   final formGlobalKey = GlobalKey<FormState>();

   final FirebaseAuth auth = FirebaseAuth.instance;


   @override
  Widget build(BuildContext context) {
     var authy = Provider.of<AuthProvider>(context,listen: false);


  // Future resetPassword() async {
  //   if (formGlobalKey.currentState!.validate()){}
  //   try{
  //     await auth.sendPasswordResetEmail(email: emailController.text.trim());
  //     Fluttertoast.showToast(msg: 'Password reset email sent');
  //     Navigator.pop(context);
  //   }
  //  on FirebaseAuthException catch (e){
  //     Fluttertoast.showToast(msg: e.toString());
  //
  //   }
  // }




    return LayoutBuilder(builder: (ctx,constraint){
      return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Container(
            height: constraint.maxHeight * 1,
            width: constraint.maxWidth * 1,
            margin: EdgeInsets.only(left: 20,right: 20,top: constraint.maxHeight * 0.016),
            child: Form(
              key: formGlobalKey ,

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:  [
                  IconButton(
                      color: const Color(0xff50b8e7),
                      onPressed: (){
                        Navigator.pop(context);
                      }, icon: const Icon(Icons.arrow_back)),
                  SizedBox(
                    height: constraint.maxHeight * 0.05,
                  ),
                  Center(child: Text('Reset Password',style: GoogleFonts.poppins(fontSize: 25,fontWeight: FontWeight.bold),)),
                  Text('Enter your email address, we will send you a one time code to reset your password.',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w300),),
                  SizedBox(
                    height: constraint.maxHeight * 0.05,
                  ),
                  GenericTextField(
                    controller: emailController,
                    validator: (val) {
                      if (val!.isEmpty) {
                        return 'Please enter email';
                      }
                      if (!RegExp(
                          "^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                          .hasMatch(val)) {
                        return 'Please enter a valid Email';
                      }
                      return null;
                    },
                    onChanged: (val){},
                    hintText: 'Email',
                    textInputType: TextInputType.emailAddress,
                    obscure: false,

                  ),
                  SizedBox(
                    height: constraint.maxHeight * 0.2,
                  ),
                  Button(
                    elevation: 0.2,
                    color: const Color(0xff50b8e7), title: 'Continue', height: 0.07, width: 1, radius: 8, callback: ()
                  {
                     // resetPassword();
                    if (formGlobalKey.currentState!.validate()){
                      var authy = Provider.of<AuthProvider>(context,listen: false);
                      authy.resetPassword(context: context, email: emailController.text.trim());
                    }

                  },),
                  Button(
                    elevation: 0.2,
                    color: const Color(0xff50b8e7), title: 'logout', height: 0.07, width: 1, radius: 8, callback: ()
                  {
                    authy.signOut(context);

                  },),
                ],
              ),
            ),
          ),
        ),
      );
    });
  }
}
