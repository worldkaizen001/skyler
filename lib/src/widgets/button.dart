import 'package:flutter/material.dart';

class SkylerButton extends StatelessWidget {
  final String? title;
  final double? buttonHeight;
  final double? buttonWidth;
  final double? elevation;
  final bool? autofocus;
  final double? borderRadius;
  final Color? buttonColor;
  final Color? borderColor;
  final Color? textColor;
  final Function? callBack;
  const SkylerButton({this.autofocus,this.elevation,this.title, this.buttonHeight, this.buttonWidth, this.borderRadius,
    this.buttonColor, this.callBack, this.borderColor, this.textColor, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*buttonHeight! ,
      width: MediaQuery.of(context).size.width*buttonWidth!,
      child: ElevatedButton(
        autofocus: autofocus!,
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius!),
              side: BorderSide(color: borderColor!),
            ),
            elevation: elevation,
            primary: buttonColor!
        ),
        onPressed: (){
          if(callBack != null ){ callBack!(); }
        }, child: Text(title!,
        style: TextStyle(
          color: textColor,
          fontSize: 17,
          fontWeight: FontWeight.w700,
          fontFamily: 'OpenSans_Regular',),
      ),
      ),
    );
  }
}