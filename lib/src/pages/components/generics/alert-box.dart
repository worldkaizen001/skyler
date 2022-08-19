import 'package:flutter/material.dart';


class GenericAlertBox extends StatelessWidget {
  final String? title;
  final String? message;
  final Color? color;
  const GenericAlertBox({this.title, this.message, this.color, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: Icon(Icons.clear,
                  size: 30, color: color,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Text('$title',
            style: TextStyle(
              fontFamily: 'PTSans_Regular',
              color: color,
              fontSize: 16.0,
              fontWeight: FontWeight.w600,
            ),
          )
        ],
      ),
      content: Text('$message',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontFamily: 'PTSans_Regular',
          color: color,
          fontSize: 12.0,
        ),
      ),
      actions: [
        TextButton(
            onPressed: (){
              Navigator.pop(context);
            },
            child:Text('Ok',
              style: TextStyle(
                fontFamily: 'PTSans_Regular',
                color: color,
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
              ),
            )
        ),
      ],
    );
  }
}
