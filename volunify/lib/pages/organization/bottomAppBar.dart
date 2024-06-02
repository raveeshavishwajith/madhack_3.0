import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';

import 'package:flutter/widgets.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/mdi.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:volunify/pages/organization/dashboard.dart';
import 'package:volunify/utils/global_variable.dart';

class CurvedBar extends StatefulWidget {
  const CurvedBar({super.key});

  @override
  State<CurvedBar> createState() => _CurvedBarState();
}

class _CurvedBarState extends State<CurvedBar> {
  int _currentindex = 0;

  List<Widget> body = const [
    OrganizationDashboard(),
    Text('hi'),
    Text('hi'),
    Text('Profile'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: body[_currentindex],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        color: GlobalVariables.darkBlue,
        backgroundColor: Colors.white,
        animationCurve: Curves.easeInOut,
        items: const [
          CurvedNavigationBarItem(
              child: Icon(
            Icons.home,
            color: Colors.white,
            size: 30,
          )),
          CurvedNavigationBarItem(
              child: Icon(
            Icons.web_outlined,
            color: Colors.white,
            size: 30,
          )),
          CurvedNavigationBarItem(
              child: Icon(
            Icons.window_outlined,
            color: Colors.white,
            size: 30,
          )),
          CurvedNavigationBarItem(
              child: Icon(
            Icons.person,
            color: Colors.white,
            size: 30,
          )),
        ],
        onTap: (index) {
          setState(() {
            _currentindex = index;
          });
        },
      ),
    );
  }
}
