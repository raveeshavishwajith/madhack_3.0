import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [Padding(
              padding: const EdgeInsets.all(25.0),
              child: Image.asset('asset/logo.png', width: 50,),
            )],
          ),
          const Spacer(),
           Padding(
            padding:  const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
               children: [Text('Voluntify',style: TextStyle(fontSize: screensize.width*0.14,fontWeight: FontWeight.bold),),
             Text('Make a different Minute by ',style: TextStyle(fontSize: screensize.width*0.05,fontWeight: FontWeight.w300)),
             Text('Minute',style: TextStyle(fontSize: screensize.width*0.05,fontWeight: FontWeight.w300)),],
            ),
          )
         


          
        ],
      ),
    );
  }
}
