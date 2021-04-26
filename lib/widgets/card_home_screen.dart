import 'package:flutter/material.dart';

class CardHomeScreen extends StatelessWidget {
  Widget buildCardTrailing(String number, String text, Color color) {
    return Container(
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 5, bottom: 8),
            child: Text(
              number,
              style: TextStyle(
                color: color,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            text,
            style: TextStyle(
              fontSize: 11,
              color: Colors.black38,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
            BoxShadow(
                color: Colors.black12,
                blurRadius: 2.0,
                spreadRadius: 0.0,
                offset: Offset(2.0, 2.0), // shadow direction: bottom right
            )
        ],
      ),
      margin: EdgeInsets.symmetric(
        vertical: 7,
        horizontal: 15,
      ),
      height: 100,
      child: ListTile(
        title: Container(
          margin: EdgeInsets.only(
            top: 22,
            bottom: 5,
          ),
          child: Text(
            'Economics',
            style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
        ),
        subtitle: Text(
          'CET-183',
          style: TextStyle(color: Colors.black26),
        ), //Subject code
        trailing: Container(
          width: 200,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildCardTrailing(
                '03',
                'LEAVES LEFT',
                Color(0xFFE3735E),
              ),
              SizedBox(width: 8,),
              buildCardTrailing(
                '85%',
                'ATTENDANCE',
                Color.fromRGBO(0, 0, 0, 0.65),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
