import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:fluttertoast/fluttertoast.dart';


import 'package:http/http.dart' as http;
class TryScreen extends StatefulWidget {
  const TryScreen({Key? key}) : super(key: key);

  @override
  State<TryScreen> createState() => _TryScreenState();
}

class _TryScreenState extends State<TryScreen> {

  var client = http.Client();

  var postjson = [];

  Future getHotelData () async {

    try{
      var response = await client.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
      if (response.statusCode == 200){
        final jsondata = jsonDecode(response.body) as List;

        setState(() {
          postjson = jsondata;
        });
      }
      else{
        return
        Fluttertoast.showToast(msg: 'something went wrong');
      }
    }
    catch (e){
      Fluttertoast.showToast(msg: e.toString());
    }

  }

  @override
  void initState() {
    // getHotelData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {





    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        actions: [
          IconButton(onPressed: (){
            getHotelData();
          }, icon: const Icon(Icons.refresh))
        ],
      ),
      body: RefreshIndicator(
        onRefresh: () async {getHotelData();},
        child: Column(
          children: [
            SizedBox(
              height: 200,
              child: ListView.builder(
                  itemCount: postjson.length,
                  itemBuilder: (context,index){
                    // final post = postjson[index];

                    return NewWidget(post: postjson[index],);
                  }),
            ),
            IconButton(onPressed: (){
              getHotelData();
            }, icon: const Icon(Icons.refresh)),
            ElevatedButton(onPressed: (){
              getHotelData();
            }, child: Text('refresh'))
          ],
        ),
      ),
    );
  }
}

class NewWidget extends StatelessWidget {
  final dynamic post;


  const NewWidget({
   required this.post,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 7,right: 7),


      height: 187,
      width: 150,
      decoration: BoxDecoration(
          color: Colors.grey.shade100,
          borderRadius: const BorderRadius.vertical(bottom: Radius.circular(6),top:Radius.circular(6) )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
              borderRadius:BorderRadius.circular(10),
              child: Image.asset('images/china.jpg',height: 100,width: 180,fit: BoxFit.cover,)),
          Padding(
            padding: const EdgeInsets.only(left: 2,right: 6,top: 12,bottom: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.star,size: 18,),
                        Text("4",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.grey.shade800),),

                      ],
                    ),
                    const Icon(Icons.favorite,size: 18,
                      color: Colors.red,
                    )
                  ],
                ),
                const SizedBox(height: 5,),

                 Text("${post['body']}",style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w400,color: Colors.grey.shade800),),


              ],
            ),
          )



        ],
      ),

    );
  }
}
