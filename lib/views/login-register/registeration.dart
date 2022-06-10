import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/generics/button.dart';
import '../components/generics/text-field.dart';
import 'login.dart';

class Registration extends StatelessWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx,constraint){
      return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          height: constraint.maxHeight * 1,
          width: constraint.maxWidth * 1,
          margin: EdgeInsets.only(left: 20,right: 20,top: constraint.maxHeight * 0.16),
          child: Column(
            children: [
              Text('Create Account!',style: GoogleFonts.poppins(fontSize: 25,fontWeight: FontWeight.bold),),
              SizedBox(
                height: constraint.maxHeight * 0.04,
              ),

              const GenericTextField(
                obscure: false,
                hintText: 'FirstName',
              ),
              const GenericTextField(
                obscure: false,
                hintText: 'LastName',
              ),
              const GenericTextField(

                obscure: false,
                hintText: 'Email',
              ),
              const GenericTextField(
                obscure: true,
                hintText: 'Password',),
              SizedBox(
                height: constraint.maxHeight * 0.18,
              ),
              Button(color: const Color(0xff50b8e7), title: 'Register', height: 0.07, width: 1, radius: 8, callback: (){},),
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
      );
    });
  }
}
