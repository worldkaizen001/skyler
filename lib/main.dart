import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:skyler/views/navigation/navigation.dart';
import 'package:provider/provider.dart';

import 'controllers/providers/auth-provider.dart';


Future<void> main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
 runApp (  MultiProvider(
     providers: [ChangeNotifierProvider(create: (_) => AuthProvider())],
     child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override

  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Navigation(),
    );
  }
}
