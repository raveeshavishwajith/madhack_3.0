import 'package:flutter/material.dart';
import 'package:volunify/pages/organization/components/form_fields.dart';
import 'package:dotted_border/dotted_border.dart';

enum AgeType { Teenager, Undergraduate, Adult }

enum Age { mode1, mode2 }

class CreateEvent3 extends StatefulWidget {
  const CreateEvent3({super.key});

  @override
  State<CreateEvent3> createState() => _CreateEvent3State();
}

class _CreateEvent3State extends State<CreateEvent3> {
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: DottedBorder(
                borderType: BorderType.RRect,
                color: const Color(0xFF095B66),
                radius: const Radius.circular(10),
                dashPattern: const [10, 4],
                strokeCap: StrokeCap.round,
                child: Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                        child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.upload),
                        Text(
                          'Upload photos and videos',
                          style: TextStyle(
                              color: Color(0xFF095B66),
                              fontWeight: FontWeight.w500,
                              fontSize: 15),
                        ),
                      ],
                    ))),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding:  EdgeInsets.only(left:20.0),
                  child: Text(
                    'Add Tags',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                ),
                FormFields(
                    controller: eventController,
                    hinttext: 'Enter text here',
                    obscuretext: false,
                    height: 50,
                    width: 350,
                    right: 20,
                    left: 20),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
