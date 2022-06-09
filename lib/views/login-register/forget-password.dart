import 'package:flutter/material.dart';

class  ForgetPassword extends StatelessWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx,constraint){
      return Scaffold(
        body: Container(
          height: constraint.maxHeight * 1,
          width: constraint.maxWidth * 1,
          margin: EdgeInsets.only(left: 20,right: 20,top: constraint.maxHeight * 0.16),
          child: Column(
            children: [],
          ),
        ),
      );
    });
  }
}
