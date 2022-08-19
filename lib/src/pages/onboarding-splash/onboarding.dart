import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class OnboardingScreens extends StatelessWidget {
  const OnboardingScreens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (cy,constraint){
      return Scaffold(
        
        body: SafeArea(
          child: Column(
            children: [
              FaIcon(FontAwesomeIcons.facebook,size: 20,color: Colors.blue,),
              FaIcon(FontAwesomeIcons.twitter,size: 20,color: Colors.blue,),
              FaIcon(FontAwesomeIcons.google,size: 20, ),
              FaIcon(FontAwesomeIcons.whatsapp,size: 20, color: Colors.blue, ),

            ],
          ),
        ),
      );
    });
  }
}
