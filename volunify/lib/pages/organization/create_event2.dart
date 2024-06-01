import 'package:flutter/material.dart';
import 'package:volunify/pages/organization/components/form_fields.dart';

enum AgeType { Teenager, Undergraduate, Adult }

enum Age { mode1, mode2 }

class CreateEvent2 extends StatefulWidget {
  const CreateEvent2({super.key});

  @override
  State<CreateEvent2> createState() => _CreateEvent2State();
}

class _CreateEvent2State extends State<CreateEvent2> {
  AgeType selectedAgeType = AgeType.Teenager;
  Age selectedAge = Age.mode1;

  final eventController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: screensize.height * 0.15),
        child: Column(
          children: [
            FormFields(
                controller: eventController,
                hinttext: 'Number of volunteers needed',
                obscuretext: false,
                height: 50,
                width: 350,
                right: 20,
                left: 20),
            SizedBox(
              height: 2,
            ),
            FormFields(
              controller: eventController,
              hinttext: 'Skills',
              obscuretext: false,
              height: 50,
              width: 350,
              right: 20,
              left: 20,
            ),
            SizedBox(
              height: 2,
            ),
            Container(
              margin: const EdgeInsets.only(
                  left: 20.0, right: 20, bottom: 8.0, top: 5.0),
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color(0xFFDADADA),
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(9.0),
              ),
              child: DropdownMenu(
                width: 350,
                textStyle: const TextStyle(
                  fontSize: 15,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.normal,
                  color: Color(0xFFACACAC),
                ),
                label: const Text(
                  'Age Restrictions',
                  style: TextStyle(
                    fontSize: 15,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.normal,
                    color: Color(0xFFACACAC),
                  ),
                ),
                enableSearch: true,
                onSelected: (AgeType) {
                  if (AgeType != null) {
                    setState(() {
                      selectedAgeType = AgeType;
                    });
                  }
                },
                dropdownMenuEntries: const <DropdownMenuEntry<AgeType>>[
                  DropdownMenuEntry(value: AgeType.Teenager, label: 'Teenager'),
                  DropdownMenuEntry(
                      value: AgeType.Undergraduate, label: 'Undergraduate'),
                  DropdownMenuEntry(value: AgeType.Adult, label: 'Adult'),
                ],
              ),
            ),
            SizedBox(
              height: 0.5,
            ),
            FormFields(
              controller: eventController,
              hinttext: 'Deadline',
              obscuretext: false,
              height: 50,
              width: 350,
              right: 20,
              left: 20,
            ),
            SizedBox(
              height: 1,
            ),
            FormFields(
              controller: eventController,
              hinttext: 'Registration Link',
              obscuretext: false,
              height: 50,
              width: 350,
              right: 20,
              left: 20,
            ),
            SizedBox(
              height: 1,
            ),
            FormFields(
                controller: eventController,
                hinttext: 'Notes',
                obscuretext: false,
                height: 200,
                width: 350,
                right: 20,
                left: 20),
            SizedBox(
              height: 1,
            ),
          ],
        ),
      ),
    );
  }
}
