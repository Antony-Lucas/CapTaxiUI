import 'package:flutter/material.dart';
import 'package:captaxi/colors/colorpallete.dart';
import 'package:captaxi/widgets/activitytext.dart';

Widget activity(
  {String? hint, required String data, required String subData, required context}) {
  return Scaffold(
    backgroundColor: AppColors.defaultWhite,
      body: Column(
        children: <Widget>[
          const SizedBox(height: 15,),
          activityText(),
        ],
      )
  );
}