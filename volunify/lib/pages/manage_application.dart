import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class ManageApplication extends StatefulWidget {
  const ManageApplication({super.key});

  @override
  State<ManageApplication> createState() => _ManageApplicationState();
}

class _ManageApplicationState extends State<ManageApplication> {
  List<dynamic> details = [];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Manage Application',
            style: TextStyle(fontSize: screenSize.width * 0.05),
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios_new_rounded),
          ),
        ),
        body: Center(
          child: GridView.count(
            crossAxisCount: 2,
            children: List.generate(
              4,
              (index) {
                return Container(
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(12.0))),
                  margin: const EdgeInsets.all(10),
                  child: Center(
                    child: Text(
                      'Item $index',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ));
  }
}
