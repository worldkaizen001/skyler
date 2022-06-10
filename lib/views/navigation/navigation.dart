import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:flutter_appuytr/views/components/profile/profile.dart';
// import 'package:flutter_appuytr/views/home/homepage.dart';

import '../components/profile/profile.dart';
import '../home/homepage.dart';
import '../login-register/registeration.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  final navigationKey = GlobalKey<CurvedNavigationBarState>();

  int index = 0;


  @override
  Widget build(BuildContext context) {
    final screens = [

      Homepage(),
      ProfileScreen(),
      Registration(),
    ];

    final items = <Widget>[

      const Icon(Icons.home,size: 23,),
      const Icon(Icons.favorite,size: 23,),
      const Icon(Icons.settings,size: 23,),
    ];


    return Scaffold(
      extendBody: true,

      body: screens[index],


      bottomNavigationBar: CurvedNavigationBar(

          animationCurve: Curves.easeInOut,
          animationDuration: const Duration(milliseconds: 600),
        color: Colors.deepPurple,
          key: navigationKey,
        index: index,

          onTap: (index) => setState(() => this.index = index),
        height: 60,
        buttonBackgroundColor: Colors.white,
          backgroundColor: Colors.transparent,



          items: items ),
      
    );
  }
}
