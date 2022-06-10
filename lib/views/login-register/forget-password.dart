import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:skyler/views/components/generics/button.dart';
import 'package:skyler/views/components/generics/text-field.dart';

class  ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx,constraint){
      return Scaffold(
        resizeToAvoidBottomInset: false,
        // appBar: AppBar(
        //   backgroundColor: Colors.white,
        //   elevation: 0,
        //   leading: IconButton(
        //     color: const Color(0xff50b8e7),
        //       onPressed: (){
        //     Navigator.pop(context);
        //   }, icon: const Icon(Icons.arrow_back)),
        // ),

        body: SafeArea(
          child: Container(
            height: constraint.maxHeight * 1,
            width: constraint.maxWidth * 1,
            margin: EdgeInsets.only(left: 20,right: 20,top: constraint.maxHeight * 0.016),
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
                  validator: (val){},
                  onChanged: (val){},
                  hintText: 'Email',
                  textInputType: TextInputType.emailAddress,
                  obscure: false,

                ),
                SizedBox(
                  height: constraint.maxHeight * 0.38,
                ),
                Button(color: const Color(0xff50b8e7), title: 'Continue', height: 0.07, width: 1, radius: 8, callback: (){},),
              ],
            ),
          ),
        ),
      );
    });
  }
}
