
import 'package:flutter/material.dart';
// import 'package:flutter_appuytr/views/components/generics/button.dart';
// import 'package:flutter_appuytr/views/login-register/registeration.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skyler/views/login-register/forget-password.dart';
import 'package:skyler/views/login-register/registeration.dart';

import '../components/generics/button.dart';


class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx, constraint){
      return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          margin: EdgeInsets.only(left: 20,right: 20,top: constraint.maxHeight * 0.16),
          height: constraint.maxHeight * 1,
          width: constraint.maxWidth * 1,
          child: Column(

            children: [
              Text('Welcome Back!',style: GoogleFonts.poppins(fontSize: 25,fontWeight: FontWeight.bold),),
              Text('Sign in to your account.',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w400),),
              SizedBox(
                height: constraint.maxHeight * 0.04,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
                child: TextFormField(

                  validator: (value){
                    return null;
                  },
                  onChanged: (val){},


                  decoration: InputDecoration(
                    hintText: 'Email',
                    hintStyle: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey.shade600),
                    fillColor: Colors.white10,
                    filled: true,


                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide(color: Colors.black12.withOpacity(0.08))

                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide(color: Colors.black12.withOpacity(0.08))

                    ),


                  ),

                ),
              ),
              SizedBox(
                height: constraint.maxHeight * 0.02,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.07,
                child: TextFormField(


                  decoration: InputDecoration(
                    hintText: 'Password',
                    hintStyle: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w400,color: Colors.grey.shade600),



                    fillColor: Colors.white10,
                    filled: true,


                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide(color: Colors.black12.withOpacity(0.08))

                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4),
                        borderSide: BorderSide(color: Colors.black12.withOpacity(0.08))

                    ),


                  ),

                ),
              ),
              Align(
                alignment: Alignment.bottomRight,
                child: TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> const ForgetPassword()));
                },child: Text('Forget Password?',style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w400),),)

              ),
              SizedBox(
                height: constraint.maxHeight * 0.13,
              ),


              Button(color: const Color(0xff50b8e7), title: 'Sign In', height: 0.07, width: 1, radius: 8, callback: (){},),
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
              Button(elevation: 1.2,color: Colors.teal, title: 'Sign In with Gmail', height: 0.07, width: 1, radius: 8,callback: (){},),
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
                        return const Registration();
                      }));
                    },
                      child: Text('Sign up',style: GoogleFonts.poppins(color: const Color(0xff50b8e7)),))
                ],
              )




            ],
          ),
        ),
      );
    });
  }
}
