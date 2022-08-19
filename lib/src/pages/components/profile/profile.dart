import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class  ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx,constraint){
      return Scaffold(
        body: Container(
          height: constraint.maxHeight * 1,
          width: constraint.maxWidth * 1,
          margin: EdgeInsets.only(left: 20,right: 20,top: constraint.maxHeight * 0.16),
          child: Column(
            children: [
              CircleAvatar(
                maxRadius: 50,
              ),
              SizedBox(
                height: constraint.maxHeight * 0.009,
              ),
              Text('Aigbe Kelvin',style: GoogleFonts.poppins(fontSize: 20,fontWeight: FontWeight.w600,letterSpacing: 1.2),),

              ProfileSegments(callback: (){}, title: 'Edit',icon: Icons.house,),
              ProfileSegments(callback: (){}, title: 'Edit',icon: Icons.house,),
              ProfileSegments(callback: (){}, title: 'Settings',icon: Icons.settings,),
              ProfileSegments(callback: (){}, title: 'Edit',icon: Icons.house,),
              ProfileSegments(callback: (){}, title: 'Edit',icon: Icons.house,),

            ],
          ),
        ),
      );
    });
  }
}

class ProfileSegments extends StatelessWidget {
  final Function? callback;
  final String? title;
  final IconData? icon;

  const ProfileSegments({
   required this.callback,required this.title,this.icon,

    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, ) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 68,
          child: InkWell(
            splashColor: Colors.white,
            onTap: (){callback!();},
            child: Card(
              child: ListTile(
                leading: Icon(icon,color: Colors.black.withOpacity(0.8),),
                title:  Text(title!,style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.black.withOpacity(0.8)),),
                trailing: Icon(Icons.arrow_forward_ios_outlined,size: 17,) ,
              ),

              color: Colors.white,
              elevation: 0.3,
              shape: RoundedRectangleBorder(
                side: BorderSide(color:Color(0xff50b8e7).withOpacity(0.2)),
                  borderRadius: BorderRadius.circular(6)),
            ),
          ),
        ),

      ],
    );
  }
}
