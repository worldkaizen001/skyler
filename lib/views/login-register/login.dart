
import 'package:flutter/material.dart';
// import 'package:flutter_appuytr/views/components/generics/button.dart';
// import 'package:flutter_appuytr/views/login-register/registeration.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skyler/controllers/providers/auth-provider.dart';
import 'package:skyler/views/home/homepage.dart';
import 'package:skyler/views/login-register/forget-password.dart';
import 'package:skyler/views/login-register/registeration.dart';

import '../components/generics/button.dart';
import '../components/generics/text-field.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:fluttertoast/fluttertoast.dart';



class Login extends StatefulWidget {
   Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailController = TextEditingController();

  final passwordController = TextEditingController();

  final formGlobalKey = GlobalKey<FormState>();


   bool loading = false;

  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(builder: (ctx, constraint){




      return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          margin: EdgeInsets.only(left: 20,right: 20,top: constraint.maxHeight * 0.16),
          height: constraint.maxHeight * 1,
          width: constraint.maxWidth * 1,
          child: Form(
            key: formGlobalKey,

            child: Column(

              children: [
                Text('Welcome Back!',style: GoogleFonts.poppins(fontSize: 25,fontWeight: FontWeight.bold),),
                Text('Sign in to your account.',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w400),),
                SizedBox(
                  height: constraint.maxHeight * 0.04,
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
                  onChanged: (val){
                    return null;
                  },
                  hintText: 'Email',
                  textInputType: TextInputType.emailAddress,
                  obscure: false,

                ),

                SizedBox(
                  height: constraint.maxHeight * 0.02,
                ),
                GenericTextField(
                  controller: passwordController,
                    validator: (val){
                      if(val!.isEmpty){
                        return 'Please enter password';
                      }
                      else if(val.length < 6){
                        return 'Password is too short';
                      }
                    },
                  onChanged: (val){},
                  hintText: 'Password',
                  textInputType: TextInputType.emailAddress,
                  obscure: false,

                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>  ForgetPassword()));
                  },child: Text('Forget Password?',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w400),),)

                ),
                SizedBox(
                  height: constraint.maxHeight * 0.13,
                ),


              loading?  SizedBox(
                height: 80,
                width: 80,
                child: Card(
                  elevation: 6,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                  color: Colors.white,
                    child: const Center(child: CircularProgressIndicator(backgroundColor: Colors.red,color: Color(0xff50b8e7),))),
              ) : Button(color: const Color(0xff50b8e7), title: 'Sign In', height: 0.07, width: 1, radius: 8, callback: ()

                {
                setState(() {
                  loading = false;
                  if (formGlobalKey.currentState!.validate()){
                    var authy = Provider.of<AuthProvider>(context);
                    authy.signInUser(context: context, email: emailController.text.trim(), password: passwordController.text.trim());
                  }
                });
                },),
                SizedBox(
                  height: constraint.maxHeight * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width *0.38,
                      child: const Divider(

                        height: 1,
                        color: Colors.blue,
                      ),
                    ),
                    Text('or',style: GoogleFonts.poppins(),),
                    SizedBox(
                      width: MediaQuery.of(context).size.width *0.38,
                      child: const Divider(

                        height: 1,
                        color: Colors.blue,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: constraint.maxHeight * 0.02,
                ),
                Button(elevation: 1.2,color: Colors.teal, title: 'Sign In with Gmail', height: 0.07, width: 1, radius: 8,
                  callback: (){
    }),
                SizedBox(
                  height: constraint.maxHeight * 0.03,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('New User?',style: GoogleFonts.poppins(),),
                    const SizedBox(width: 4,),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return  Registration();
                        }));
                      },
                        child: Text('Sign up',style: GoogleFonts.poppins(color: const Color(0xff50b8e7)),))
                  ],
                )




              ],
            ),
          ),
        ),
      );

    }
    );


  }
}
