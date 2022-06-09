import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:geolocator/geolocator.dart';

void getLocation() async{
  Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
  print(position);
}

Widget appBarMain (){
  return AppBar(
    toolbarHeight: 70,
    elevation: 3,
    backgroundColor: HexColor('#2E4350'),
    leading: IconButton(
        icon: Icon(Icons.location_on_rounded), onPressed: () {
      getLocation();
    }),
    title: Text('New York,USA'),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 15),
        child: CircleAvatar(
          radius: 20,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 19,
            backgroundImage: AssetImage('images/lagos.jpg'),
          ),
        ),
      ),
    ],
  );
}

Row row1 (){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      TextButton(child: text('Packages', Colors.redAccent), onPressed: (){},),
      TextButton(child: text('Flights', Colors.white70),onPressed: (){},),
      TextButton(child: text('Places', Colors.white70),onPressed: (){},),
      TextButton(child: text('Hotels', Colors.white70),onPressed: (){},),
      TextButton(child: text('Spots', Colors.white70),onPressed: (){},),
      TextButton(child: text('Eateries', Colors.white70),onPressed: (){},),


    ],
  );
}
Row row2(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      TextButton(
        onPressed: (){},
        child: Text(
          '101 Packages',
          style: TextStyle(fontSize: 14, color: Colors.white70),
        ),
      ),
      TextButton(
        onPressed: (){},
        child: Text(
          'See all',
          style: TextStyle(fontSize: 15, color: HexColor('#1754BF'),),
        ),
      ),
    ],
  );
}
Row row3 (constraint){ return
  Row(
      children: [
        picture(constraint, 'abuja', 'Italy', 'Atalanta'),
        SizedBox(
          width: constraint.maxWidth * 0.05,
        ),
        picture(constraint, 'paris', 'France', 'Paris'),
        SizedBox(
          width: constraint.maxWidth * 0.05,
        ),
        picture(constraint, 'dubai', 'England', 'Manchester'),
        SizedBox(
          width: constraint.maxWidth * 0.05,
        ),
        picture(
            constraint, 'england', 'England', 'Manchester'),


      ]
  );
}
Widget picture(
    constraint, images, textOne, textTwo) {
  return Container(
    height: constraint.maxHeight * 0.3,
    width: constraint.maxWidth * 0.5,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage('images/$images.jpg'),
        fit: BoxFit.cover,
      ),
      borderRadius: BorderRadius.circular(30),
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 15, top: 20, right: 15),
      child: SizedBox(
        width: constraint.maxWidth * 0.07,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.white,
                    child: Center(child: IconButton(onPressed: (){}, icon: Icon(Icons.ac_unit,size: 16,)))
                ),
              ],
            ),
            SizedBox(
              height: constraint.maxHeight * 0.085,
            ),
            Row(
              children: [
                iconStar (),
                iconStar (),
                iconStar (),
                iconStar (),
                iconStar (),
                SizedBox(
                  width: constraint.maxWidth * 0.01,
                ),
                Text(
                  '4.5',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            SizedBox(
              height: constraint.maxHeight * 0.01,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '$textOne',
                  style:
                  TextStyle(color: Colors.white, fontSize: 22),
                ),
                SizedBox(
                  height: constraint.maxHeight * 0.005,
                ),
                Text(
                  '$textTwo',
                  style:
                  TextStyle(color: Colors.white, fontSize: 22),
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}

TextStyle textFieldInput(){
  return

   TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      fontFamily: 'SourceSansPro-Italic',
      color: Colors.white);
}

InputDecoration sweetInput (){
  return InputDecoration(
      fillColor: Colors.grey.shade200,
      filled: true,
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(35),
        borderSide: BorderSide(
          color: Colors.black45,
        ),
      ),
      enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(35),
          borderSide: BorderSide(color: Colors.black45)),
      hintStyle: TextStyle(
          color: Colors.black,
          fontSize: 22,
          fontWeight: FontWeight.w400,
          fontFamily: 'Pacifico'),
      hintText: "            Continue with Google");
}

TextStyle font28(){
  return

    TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.w600,
        fontFamily: 'SourceSansPro-Italic',
        color: Colors.white);
}

TextStyle font18(){
  return TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      fontFamily: 'SourceSansPro_Italic',
      color: HexColor('#1754BF'));
}

Container containerLastHomePage (constraint,){
  return
  Container(
    height: constraint.maxHeight * 0.25,
    width: constraint.maxWidth * 0.9,
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage('images/greece.jpg'),
        fit: BoxFit.cover,
      ),
      borderRadius: BorderRadius.circular(30),
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 15, top: 20, right: 15),
      child: SizedBox(
        width: constraint.maxWidth * 0.07,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.ac_unit,
                    color: Colors.red,),
                ),
              ],
            ),
            SizedBox(
              height: constraint.maxHeight * 0.03,
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: Colors.amberAccent,
                  size: 15,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amberAccent,
                  size: 15,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amberAccent,
                  size: 15,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amberAccent,
                  size: 15,
                ),
                Icon(
                  Icons.star,
                  color: Colors.amberAccent,
                  size: 15,
                ),
                SizedBox(
                  width: constraint.maxWidth * 0.02,
                ),
                Text(
                  '4.5',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            SizedBox(
              height: constraint.maxHeight * 0.01,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Greece',
                  style:
                  TextStyle(color: Colors.white,
                    fontSize: 22,
                    fontFamily: 'SourceSansPro',
                  ),

                ),
                SizedBox(
                  height: constraint.maxHeight * 0.005,
                ),
                Text(
                  'Maikanos Beach',
                  style:
                  TextStyle(color: Colors.white, fontSize: 22),
                ),
              ],
            ),
          ],
        ),

      ),
    ),

  );
}

Widget text(text1, color) {
  return Text('$text1',
      style: TextStyle(
          fontSize: 18,
          color: color,
          fontWeight: FontWeight.w600,
          fontFamily: 'Pacifico'));
}

Icon iconStar (){
  return Icon(
    Icons.star,
    color: Colors.amberAccent,
    size: 15,
  );
}



