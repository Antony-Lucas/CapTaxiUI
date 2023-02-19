import 'package:captaxi/routes/selectsaved.dart';
import 'package:flutter/material.dart';
import 'package:captaxi/colors/colorpallete.dart';

Widget savedLocations(
  {String? hint, required context}) {
  final autowidth = MediaQuery.of(context).size.width * 0.94;
  return ElevatedButton(
    onPressed: (){
      Navigator.push(
        context, 
        MaterialPageRoute(builder: (context) => const Selectadress())
      );
    },
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.defaultWhite,
      elevation: 0,
      maximumSize: Size.fromWidth(autowidth),
      padding: const EdgeInsets.all(15),
      shadowColor: Colors.transparent,
    ), 
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Row(
          children: <Widget>[
            Icon(Icons.star, size: 18),
            SizedBox(width: 14,),
            Text("Escolha um destino salvo", textAlign: TextAlign.center,),

            SizedBox(width: 123,),
            Icon(Icons.chevron_right, size: 22),
          ],
        ),
      ],
    ),
  );
}