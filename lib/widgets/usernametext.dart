import 'package:flutter/material.dart';
import 'package:captaxi/colors/colorpallete.dart';

Widget usernameText({
  String? hint,
}) {
  return Container(    
    padding: EdgeInsets.only(right: 5, top: 35, bottom: 25),  
    margin: EdgeInsets.only(left: 20),  
    alignment: Alignment.centerLeft,  
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Row(
          children: const<Widget>[
            Text(
              "Nome Usuário", 
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34)
            ), 
            SizedBox(width: 50,),
            Icon(Icons.account_circle_sharp, size: 80,)
          ],
        )
      ],
    ) 
  );
}
