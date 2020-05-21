import 'package:flutter/material.dart';

class CustomAppBarWidget extends StatefulWidget {
  @override
  _CustomAppBarWidgetState createState() => _CustomAppBarWidgetState();
}

class _CustomAppBarWidgetState extends State<CustomAppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return new Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(right:220.0),
          child: new IconButton(icon: new Icon(
            Icons.menu,
            color:Color(0xff0000000),
          ),
           onPressed: null,
           ),
        ),
        
      ],
      
    );
  }
}