import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

import 'package:volunify/pages/manage_application.dart';
import 'package:volunify/pages/notification/chat_view.dart';
import 'package:volunify/pages/notification/notification.dart';
import 'package:volunify/pages/organization/bottomAppBar.dart';
import 'package:volunify/pages/organization/dashboard.dart';

import 'package:volunify/pages/organization/components/create_event_component.dart';
import 'package:volunify/pages/organization/create_event2.dart';
import 'package:volunify/pages/organization/create_event3.dart';
import 'package:volunify/pages/organization/create_event_page1.dart';
import 'package:volunify/pages/organization/events.dart';
import 'package:volunify/pages/organization/manage_application.dart';
import 'package:volunify/pages/organization/manage_application_view.dart';
import 'package:volunify/pages/splash_screen.dart';
import 'package:volunify/pages/loginScreen.dart';

void main() {
  
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Raleway',
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ChatView(),
    );

  }
}