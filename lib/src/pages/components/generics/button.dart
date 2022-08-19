
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Button extends StatelessWidget {
  final String? title;
  final double? height,width,radius;
  final double? elevation;
  final Function? callback;
  final Color? color;

  const Button({this.elevation,required this.color,required this.title,required this.height,required this.width,required this.radius,required this.callback,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * height!,
      width:  MediaQuery.of(context).size.width * width!,
      child: ElevatedButton(

        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          elevation: elevation,
          primary: color
        ),
          onPressed: (){callback!();}, child: FittedBox(
        fit: BoxFit.contain,
          child: Text('$title',style: GoogleFonts.poppins(),))),
    );
  }
}
