import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GenericTextField extends StatelessWidget {
  final Function? validator;
  final Function? onChanged;
  final String? hintText;
  final TextEditingController? controller;
  final bool? obscure;

  const GenericTextField({this.obscure,this.onChanged,this.validator,this.hintText,this.controller,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return LayoutBuilder(builder: (ctx,constraint){
      return
      Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.07,
            child: TextFormField(
              obscureText: obscure!,
              controller: controller,

              validator: (value){
                validator!();
              },
              onChanged: (val){
                onChanged!();
              },


              decoration: InputDecoration(
                hintText: '$hintText',
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
           height:16,
          ),

        ],
      );
    });
  }
}
