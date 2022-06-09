
import 'package:flutter/material.dart';

import '../components/url-launcher.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';




class Support extends StatelessWidget {
  const Support({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (ctx,constraint){
      return Scaffold(
        appBar: AppBar(
          elevation: 0.5,
          backgroundColor: Colors.white,
          leading: IconButton(onPressed: () {
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back, color: Colors.black,)),
          title: Text(
            'Support',
            style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 18,
                color: Color(0xff131313)),
          ),


        ),
        body: Container(
          margin: EdgeInsets.only(left: 20,right: 20,top: constraint.maxHeight * 0.03),
          height: constraint.maxHeight * 1,
          width: constraint.maxWidth * 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Get help from our support team 😊',style: TextStyle(fontWeight: FontWeight.w700,fontFamily: 'PTSans_Regular',fontSize: 23,color: Color(0xff363131)),),

              SizedBox(height: constraint.maxHeight * 0.03,),
              Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.09,
                    width: double.infinity,
                    child: ElevatedButton(


                        style: ElevatedButton.styleFrom(
                            primary: Color(0xffE0E8F3),
                            elevation: 1,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))
                        ),
                        onPressed: (){
                          openUrlBrowser(url: 'mailto:hello@spreentar.com', status: false);
                        }, child: ListTile(
                      contentPadding: EdgeInsets.only(left: 1,top: 5),
                      leading: FaIcon(FontAwesomeIcons.message,size: 26, color: Color(0xff0B449C), ),
                      title: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Mail',style: TextStyle(fontWeight: FontWeight.w700,fontFamily: 'PTSans_Regular',fontSize: 14,color: Color(0xff0B449C)),),
                            SizedBox(height: 2.5,),
                            Text('Want to reach us by mail tap here',style: TextStyle(fontWeight: FontWeight.w400,fontFamily: 'PTSans_Regular',fontSize: 13,color: Color(0xff000000)),),
                          ],
                        ),
                      ),
                    )),
                  ),
                  SizedBox(height: constraint.maxHeight * 0.018,)
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.09,
                    width: double.infinity,
                    child: ElevatedButton(


                        style: ElevatedButton.styleFrom(
                            primary: Color(0xffE0E8F3),
                            elevation: 1,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))
                        ),
                        onPressed: (){
                          openUrlBrowser(url: 'https://twitter.com/spreentar?t=-IHHCXofGG1wJm0RTqoSVg&s=09', status: false);
                        }, child: ListTile(
                      contentPadding: EdgeInsets.only(left: 1,top: 5),
                      leading: FaIcon(FontAwesomeIcons.twitter,size: 26, color: Color(0xff0B449C), ),
                      title: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Twitter',style: TextStyle(fontWeight: FontWeight.w700,fontFamily: 'PTSans_Regular',fontSize: 14,color: Color(0xff0B449C)),),
                            SizedBox(height: 2.5,),
                            Text('Want to reach us by twitter tap here',style: TextStyle(fontWeight: FontWeight.w400,fontFamily: 'PTSans_Regular',fontSize: 13,color: Color(0xff000000)),),
                          ],
                        ),
                      ),
                    )),
                  ),
                  SizedBox(height: constraint.maxHeight * 0.018,)
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.09,
                    width: double.infinity,
                    child: ElevatedButton(


                        style: ElevatedButton.styleFrom(
                            primary: Color(0xffE0E8F3),
                            elevation: 1,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))
                        ),
                        onPressed: (){
                          openUrlBrowser(url: 'https://www.facebook.com/spreentar/', status: false);
                        }, child: ListTile(
                      contentPadding: EdgeInsets.only(left: 1,top: 5),
                      leading: FaIcon(FontAwesomeIcons.facebook,size: 26, color: Color(0xff0B449C), ),
                      title: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Facebook',style: TextStyle(fontWeight: FontWeight.w700,fontFamily: 'PTSans_Regular',fontSize: 14,color: Color(0xff0B449C)),),
                            SizedBox(height: 2.5,),
                            Text('Want to reach us by facebook tap here',style: TextStyle(fontWeight: FontWeight.w400,fontFamily: 'PTSans_Regular',fontSize: 13,color: Color(0xff000000)),),
                          ],
                        ),
                      ),
                    )),
                  ),
                  SizedBox(height: constraint.maxHeight * 0.018,)
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.09,
                    width: double.infinity,
                    child: ElevatedButton(


                        style: ElevatedButton.styleFrom(
                            primary: Color(0xffE0E8F3),
                            elevation: 1,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))
                        ),
                        onPressed: (){
                          openUrlBrowser(url: 'https://www.instagram.com/spreentar/', status: false);
                        }, child: ListTile(
                      contentPadding: EdgeInsets.only(left: 1,top: 5),
                      leading: FaIcon(FontAwesomeIcons.instagram,size: 26, color: Color(0xff0B449C), ),
                      title: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Instagram',style: TextStyle(fontWeight: FontWeight.w700,fontFamily: 'PTSans_Regular',fontSize: 14,color: Color(0xff0B449C)),),
                            SizedBox(height: 2.5,),
                            Text('Want to reach us by instagram tap here',style: TextStyle(fontWeight: FontWeight.w400,fontFamily: 'PTSans_Regular',fontSize: 13,color: Color(0xff000000)),),
                          ],
                        ),
                      ),
                    )),
                  ),
                  SizedBox(height: constraint.maxHeight * 0.018,)
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.09,
                    width: double.infinity,
                    child: ElevatedButton(


                        style: ElevatedButton.styleFrom(
                            primary: Color(0xffE0E8F3),
                            elevation: 1,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))
                        ),
                        onPressed: (){
                          openUrlBrowser(url: 'https://wa.me/message/TQKP7DWMWXNAH1', status: false);
                        }, child: ListTile(
                      contentPadding: EdgeInsets.only(left: 1,top: 5),
                      leading: FaIcon(FontAwesomeIcons.whatsapp,size: 26, color: Color(0xff0B449C), ),
                      title: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Whatsapp',style: TextStyle(fontWeight: FontWeight.w700,fontFamily: 'PTSans_Regular',fontSize: 14,color: Color(0xff0B449C)),),
                            SizedBox(height: 2.5,),
                            Text('Want to reach us by whatsapp tap here',style: TextStyle(fontWeight: FontWeight.w400,fontFamily: 'PTSans_Regular',fontSize: 13,color: Color(0xff000000)),),
                          ],
                        ),
                      ),
                    )),
                  ),
                  SizedBox(height: constraint.maxHeight * 0.018,)
                ],
              ),
              Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.09,
                    width: double.infinity,
                    child: ElevatedButton(


                        style: ElevatedButton.styleFrom(
                            primary: Color(0xffE0E8F3),
                            elevation: 1,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))
                        ),
                        onPressed: (){
                          openUrlBrowser(url: 'tel: +2349062547181', status: false);
                        }, child: ListTile(
                      contentPadding: EdgeInsets.only(left: 1,top: 5),
                      leading: FaIcon(FontAwesomeIcons.phone,size: 25, color: Color(0xff0B449C), ),
                      title: Padding(
                        padding: const EdgeInsets.only(top: 10),
                        child: Column(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Phone',style: TextStyle(fontWeight: FontWeight.w700,fontFamily: 'PTSans_Regular',fontSize: 14,color: Color(0xff0B449C)),),
                            SizedBox(height: 2.5,),
                            Text('Want to reach us by phone tap here',style: TextStyle(fontWeight: FontWeight.w400,fontFamily: 'PTSans_Regular',fontSize: 13,color: Color(0xff000000)),),
                          ],
                        ),
                      ),
                    )),
                  ),
                  SizedBox(height: constraint.maxHeight * 0.018,)
                ],
              ),
              // SocialMedia( title: 'Mail',callback: (){openUrlBrowser(url: 'mailto:hello@spreentar.com', status: false);}, subTitle: 'mail', icon: Icons.mail, ),
              // SocialMedia(title: 'Twitter',callback: (){ openUrlBrowser(url: 'https://twitter.com/spreentar?t=-IHHCXofGG1wJm0RTqoSVg&s=09', status: false);},  subTitle: 'twitter',  icon: Icons.facebook ),
              // SocialMedia(title: 'Facebook',callback: (){ openUrlBrowser(url: 'https://www.facebook.com/spreentar/', status: false);},  subTitle: 'facebook', icon: Icons.facebook, ),
              // SocialMedia(title: 'Instagram',callback: (){ openUrlBrowser(url: 'https://www.instagram.com/spreentar/', status: false);},  subTitle: 'instagram', icon: Icons.facebook, ),
              // SocialMedia(title: 'Whatsapp',callback: (){ openUrlBrowser(url: 'https://wa.me/message/TQKP7DWMWXNAH1', status: false);},  subTitle: 'whatsapp', icon: Icons.facebook, ),
              // SocialMedia(title: 'Phone',callback: (){ openUrlBrowser(url: 'tel: +2349062547181', status: false);},  subTitle: 'phone', icon: Icons.facebook, ),
              //
              // Social(subTitle: 'twitter', title: 'Twitter', callback: (){},),



            ],
          ),
        ) ,
      );
    });
  }
}

class Social extends StatelessWidget {
  final String? subTitle;
  final String? title;
  final Function? callback;
  final FontAwesomeIcons? fontAwesomeIcons;
  const Social({
    this.fontAwesomeIcons,
    required this.callback,
    required this.title,
    required this.subTitle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.09,
          width: double.infinity,
          child: ElevatedButton(


              style: ElevatedButton.styleFrom(
                  primary: Color(0xffE0E8F3),
                  elevation: 1,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6))
              ),
              onPressed: (){callback!();}, child: ListTile(
            contentPadding: EdgeInsets.only(left: 1,top: 5),
            leading: FaIcon(FontAwesomeIcons.twitter,size: 30, color: Color(0xff0B449C), ),
            title: Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Column(

                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('$title',style: TextStyle(fontWeight: FontWeight.w700,fontFamily: 'PTSans_Regular',fontSize: 14,color: Color(0xff0B449C)),),
                  SizedBox(height: 2.5,),
                  Text('Want to reach us by $subTitle tap here',style: TextStyle(fontWeight: FontWeight.w400,fontFamily: 'PTSans_Regular',fontSize: 13,color: Color(0xff000000)),),
                ],
              ),
            ),
          )),
        ),
        SizedBox(height: 4,)
      ],
    );
  }
}
PreferredSizeWidget generalAppBar(context, title,icon){
  return AppBar(
    elevation: 0.1,
    backgroundColor: Colors.white,
    leading: IconButton(onPressed: () {
      Navigator.pop(context);
    }, icon: Icon(icon, color: Colors.black,)),
    title: Text(
      '$title',
      style: TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 18,
          color: Color(0xff131313)),
    ),


  );
}

class SocialMedia extends StatelessWidget {
  final String? title,subTitle;
  final Widget? child;
  final Function? callback;
  final IconData? icon;

  const SocialMedia({this.child,required this.title,required this.subTitle, required this.callback,required this.icon, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.095,
          width: double.infinity,
          child: InkWell(
            splashColor: Colors.white10,
            onTap: (){callback!();},
            child: Card(
              child: Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: Icon(icon)
                  ),
                  SizedBox(width: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('$title',style: TextStyle(fontWeight: FontWeight.w700,fontFamily: 'PTSans_Regular',fontSize: 14,color: Color(0xff0B449C)),),
                      SizedBox(height: 2.5,),
                      Text('Want to reach us by $subTitle? tap here',style: TextStyle(fontWeight: FontWeight.w400,fontFamily: 'PTSans_Regular',fontSize: 13,color: Color(0xff000000)),),

                    ],
                  ),
                ],
              ),
              elevation: 0.2,

              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),

              color: Color(0xffE0E8F3),
            ),
          ),
        ),
        SizedBox(height: 4,)
      ],
    );
  }
}









