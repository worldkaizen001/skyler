
import 'package:flutter/material.dart';

class SkylerTextField extends StatelessWidget {
  final String? hintText;
  final BoxConstraints? constraints;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final String? Function(String?)? onChanged;
  final TextInputType? textInputType;
  final TextStyle? hintTextStyle;

  final double? width;
  final Color? color;
  final IconData? icon;
  final bool? obscure;
  final Function? iconFunction;
  final Widget? prefixWidget;

  const SkylerTextField({
    this.prefixWidget,
    this.hintTextStyle,
    this.obscure,
    this.width,
    this.icon,
    this.iconFunction,

    this.color,
    this.onChanged,
    this.textInputType,
    this.validator,
    this.hintText,
    this.constraints,
    this.controller, Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(

      height: MediaQuery.of(context).size.height * 0.070,
      width: MediaQuery.of(context).size.width * width!,
      child: TextFormField(
        obscureText: obscure!,
        cursorColor: const Color(0xff33A59E),
        onChanged: onChanged,
        keyboardType: textInputType,
        controller: controller,
        decoration: InputDecoration(
          suffix: prefixWidget,
          suffixIcon: IconButton(onPressed: (){iconFunction!();}, icon: Icon(icon,color: const Color(0xff1E1B1B),size: 21,)),
          filled: true,
          fillColor: const Color(0xffF5F9F7),
          focusedBorder:  OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Color(0xff33A59E),width: 2,style: BorderStyle.solid)
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(color: Color(0xff9A9393),width: 1,style: BorderStyle.solid)
          ),

          hintText: hintText,
          hintStyle: hintTextStyle,
        ),
        validator: validator,
      ),
    );
  }
}