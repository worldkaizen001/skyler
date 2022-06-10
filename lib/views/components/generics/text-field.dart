import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_hooks/flutter_hooks.dart';


class GenericTextField extends HookWidget {
  final String? Function(String?)? validator;
  final String? Function(String?)? onChanged;
  final String? hintText;
  final TextEditingController? controller;
  final bool? obscure;
  final TextInputType? textInputType;

  const GenericTextField({this.textInputType,this.obscure,this.onChanged,this.validator,this.hintText,this.controller,Key? key}) : super(key: key);

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

              validator: validator,


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
          const SizedBox(
           height:16,
          ),

        ],
      );
    });
  }
}
