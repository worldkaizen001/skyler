

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Hotels with ChangeNotifier{
  Map <String,dynamic> _map = {};
  bool _isError = false;
  String? _errorMessage = '';

  Map<String,dynamic> get map => _map;
  bool get error => _isError;
  String? get errorMessage => _errorMessage;



  var client = http.Client();

  Future getHotelData () async {

   final response = await client.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));

   if(response.statusCode == 200){
     try{
       _map = jsonDecode(response.body);
       _isError = false;
     }
         catch(e){
       _isError = true;
       _errorMessage= e.toString();
       _map= {};
         }

   }
   else{

     _isError = true;
     _errorMessage= 'Error: kindly check your internet connection';
     _map= {};
   }

   notifyListeners();

  }

  void initialValue (){

  _map = {};
    _isError = false;
   _errorMessage = '';
    notifyListeners();
  }


}