import 'package:flutter/material.dart';

class CreateEventComponent extends StatefulWidget {
  const CreateEventComponent({super.key});

  @override
  State<CreateEventComponent> createState() => _CreateEventComponentState();
}

class _CreateEventComponentState extends State<CreateEventComponent> {
  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          const Text('Create Event'),
          Center(
            child: GestureDetector(
              onTap: () {},
              child: Container(
                decoration: const BoxDecoration(
                    color: Color(0xff1C94CC),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                width: screensize.width * 0.85,
                height: screensize.height * 0.07,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        fontSize: screensize.width * 0.06, color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
