import 'package:flutter/material.dart';
import 'package:captaxi/colors/colorpallete.dart';
import 'package:captaxi/widgets/usernametext.dart';

Widget profile(
  {String? hint, required context}) {
  return Scaffold(
    backgroundColor: AppColors.defaultWhite,
      body: Column(
        children: <Widget>[
          const SizedBox(height: 10,),
          usernameText(),
        ],
      )
  );
}