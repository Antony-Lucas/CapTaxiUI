import 'package:flutter/material.dart';
import 'package:captaxi/widgets/bottomtab.dart';
import 'package:captaxi/screens/home.dart';
import 'package:captaxi/screens/activity.dart';
import 'package:captaxi/screens/profile.dart';

class Wellcome extends StatefulWidget {
  const Wellcome({Key? key}) : super(key: key);

  @override
  State<Wellcome> createState() => _WellcomeState();
}

class _WellcomeState extends State<Wellcome> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontWeight: FontWeight.bold);
  

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> widgetOptions = <Widget>[
      homeScreen(data: 'Faça sua viagem com rapidez e segurança.', subData: "CapTaxi", context: context),
      activity(data: "Atividade", subData: "Anteriores", context: context),
      profile(context: context)
    ];
    
    return buildBottomTab(
        widgetOptions: widgetOptions,
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped
    );
  }
}
