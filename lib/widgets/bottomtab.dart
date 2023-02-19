import 'package:flutter/material.dart';
import 'package:captaxi/colors/colorpallete.dart';

Widget buildBottomTab(
  {String? hint, required List<Widget> widgetOptions, required int selectedIndex, required onItemTapped}) {
    
  return Scaffold(
      body: Center(
        child: widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event_note),
            label: 'Atividade',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Conta',
          ),
          
        ],
        elevation: 10,
        currentIndex: selectedIndex,
        selectedItemColor: AppColors.secondaryGeen,
        selectedFontSize: 12,
        onTap: onItemTapped,
    ),
  );
}