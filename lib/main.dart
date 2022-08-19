import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';


import 'package:provider/provider.dart';
import 'package:skyler/src/pages/homepage/screens/tryscreen.dart';



import 'controllers/api-services/hotels-api.dart';
import 'src/models/auth-provider.dart';


Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
 runApp (  MultiProvider(
     providers: [ChangeNotifierProvider(create: (_) => AuthProvider()),
                 ChangeNotifierProvider(create: (_) => Hotels())],
     child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override

  Widget build(BuildContext context) {
    return  const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BololoScreen(),
    );
  }
}
