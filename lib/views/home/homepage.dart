
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../components/generics/text-field.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx,constraint){
      return Scaffold(

        drawer: Drawer(
          child: SafeArea(
            child: Column(
              children: [
                Text('Name')
              ],
            ),
          ),
        ),
        resizeToAvoidBottomInset: false,
        appBar: AppBar(),
        body: Container(
          margin: EdgeInsets.only(left: 20,right: 20,top: constraint.maxHeight * 0.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hey Kelvin!',style: GoogleFonts.poppins(fontSize: 25,fontWeight: FontWeight.w500),),
              Text("It's a good day to go on a vacation.",style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.grey.shade800),),
              SizedBox(
                width: 250,
                child: GenericTextField(

                  obscure: false,
                  hintText: 'search',
                ),
              ),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //
              //   children: [
              //     Button(color: Colors.teal, title: 'Resorts', height: 0.052, width: 0.24, radius: 5, callback: (){}),
              //     Button(color: Colors.teal, title: 'Flights', height: 0.052, width: 0.24, radius: 5, callback: (){}),
              //     Button(color: Colors.teal, title: 'Resorts', height: 0.052, width: 0.24, radius: 5, callback: (){}),                      ],
              // ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 7,right: 7),


                height: 187,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.grey.shade100,
                    borderRadius: BorderRadius.vertical(bottom: Radius.circular(6),top:Radius.circular(6) )),
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
                                 Icon(Icons.star,size: 18,),
                                  Text("4",style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500,color: Colors.grey.shade800),),

                                ],
                              ),
                              Icon(Icons.favorite,size: 18,
                                color: Colors.red,
                                )
                            ],
                          ),
                          SizedBox(height: 5,),

                          Text('Hotel Name',style: GoogleFonts.poppins(fontSize: 14,fontWeight: FontWeight.w500),),
                          Text("Location",style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w400,color: Colors.grey.shade800),),
                        ],
                      ),
                    )



                  ],
                ),

              )

            ],
          ),
        ),
      );

    });

  }
}
