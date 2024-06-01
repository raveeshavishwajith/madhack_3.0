import 'package:flutter/material.dart';
import 'package:volunify/pages/organization/components/form_fields.dart';

class CreateEvent1 extends StatefulWidget {
  const CreateEvent1({super.key});

  @override
  State<CreateEvent1> createState() => _CreateEvent1State();
}

class _CreateEvent1State extends State<CreateEvent1> {
  final eventController = TextEditingController();
  @override
  Widget build(BuildContext context) {
     var screensize = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding:EdgeInsets.only(top: screensize.height*0.15),
        child: Column(
          children: [
        
            FormFields(controller: eventController, hinttext: 'Event Name', obscuretext:false, height: 50, width: 350, right: 20, left: 20),
            SizedBox(height: 2,),
            FormFields(controller: eventController, hinttext: 'Cause Area', obscuretext:false, height: 50, width: 350, right: 20, left: 20),
             SizedBox(height: 2,),
            FormFields(controller: eventController, hinttext: 'Description', obscuretext:false, height: 200, width: 350, right: 20, left: 20),
             SizedBox(height: 2,),
             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              FormFields(controller: eventController, hinttext: 'Starting Date', obscuretext:false, height: 50, width: 150, right: 20, left: 20),
              FormFields(controller: eventController, hinttext: 'End Date', obscuretext:false, height: 50, width: 150, right: 20, left: 20)
             ],),
             SizedBox(height: 2,),
              FormFields(controller: eventController, hinttext: 'Location', obscuretext:false, height: 50, width: 350, right: 20, left: 20),
              SizedBox(height: 2),
               FormFields(controller: eventController, hinttext: 'Telephone Number', obscuretext:false, height: 50, width: 350, right: 20, left: 20),


           
            
            ],
        ),
      ),
    );
  }
}