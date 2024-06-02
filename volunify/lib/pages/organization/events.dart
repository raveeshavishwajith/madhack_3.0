import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:iconify_flutter/icons/ph.dart';

class Events extends StatefulWidget {
  const Events({super.key});

  @override
  State<Events> createState() => _EventsState();
}

class _EventsState extends State<Events> {
  Future viewCareer() {
    return showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext context) {
          return Wrap(
            children: <Widget>[
              Row(
                children: [
                  const Spacer(),
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.cancel,
                        color: Color(0xFF095B66),
                      ))
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Sustainable City Initiative',
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF095B66)),
                    ),
                    const Text(
                      'Saturday,June 8,2024',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.normal,
                          color: Color(0xFF095B66)),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Container(
                          width: 70,
                          height: 20,
                          decoration: BoxDecoration(
                              color: const Color(0xFF095B66),
                              borderRadius: BorderRadius.circular(5)),
                          child: const Center(
                            child: Text(
                              'Environment',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 70,
                          height: 20,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(20)),
                          child: const Center(
                            child: Icon(
                              Icons.call,
                              size: 23,
                              color: Color(0xFF095B66),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Row(
                      children: [
                        Spacer(),
                        Text(
                          '261',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF095B66)),
                        ),
                        Text(
                          '+',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                              color: Color(0xFF095B66)),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                    const Text(
                      ' Description',
                      style: TextStyle(
                        color: Color(0xFF095B66),
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      width: 370,
                      child: Divider(
                        thickness: 2,
                        color: Color(0xFF095B66),
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    const Text(
                      'This event brings together community members, local businesses, and environmental organizations to transform our urban environment through tree planting, urban gardening, recycling drives, and community clean-ups. Attend educational workshops on sustainable living and contribute to making Seattle greener and more resilient. All volunteers are welcome to help create a more sustainable future for our city.',
                      style: TextStyle(
                        color: Color(0xFF095B66),
                        fontWeight: FontWeight.normal,
                        fontSize: 12,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'Key Details',
                      style: TextStyle(
                        color: Color(0xFF095B66),
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      width: 370,
                      child: Divider(
                        thickness: 2,
                        color: Color(0xFF095B66),
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    RichText(
                      textAlign: TextAlign.justify,
                      text: const TextSpan(
                        children: [
                          WidgetSpan(
                            child: Padding(
                              padding: EdgeInsets.only(right: 5),
                              child: Icon(
                                Icons.circle,
                                color: Color(0xFF095B66),
                                size: 8,
                              ),
                            ),
                          ),
                          TextSpan(
                            text:
                                'No specific skills needed; training will be provided on-site.\n',
                            style: TextStyle(
                                color: Color(0xFF095B66),
                                fontSize: 13,
                                fontWeight: FontWeight.normal),
                          ),
                          WidgetSpan(
                            child: Padding(
                              padding: EdgeInsets.only(right: 5),
                              child: Icon(
                                Icons.circle,
                                color: Color(0xFF095B66),
                                size: 8,
                              ),
                            ),
                          ),
                          TextSpan(
                            text:
                                'Please submit your volunteer application by June 1, 2024.\n',
                            style: TextStyle(
                                color: Color(0xFF095B66),
                                fontSize: 13,
                                fontWeight: FontWeight.normal),
                          ),
                          WidgetSpan(
                            child: Padding(
                              padding: EdgeInsets.only(right: 5),
                              child: Icon(
                                Icons.circle,
                                color: Color(0xFF095B66),
                                size: 8,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text(
                      'Contactus',
                      style: TextStyle(
                        color: Color(0xFF095B66),
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      width: 370,
                      child: Divider(
                        thickness: 2,
                        color: Color(0xFF095B66),
                      ),
                    ),
                    const SizedBox(
                      height: 7,
                    ),
                    RichText(
                      textAlign: TextAlign.justify,
                      text: const TextSpan(
                        children: [
                          WidgetSpan(
                            child: Padding(
                              padding: EdgeInsets.only(right: 5),
                              child: Icon(
                                Icons.circle,
                                color: Color(0xFF095B66),
                                size: 8,
                              ),
                            ),
                          ),
                          TextSpan(
                            text: 'jane.doe@example.org',
                            style: TextStyle(
                                color: Color(0xFF095B66),
                                fontSize: 13,
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                  ],
                ),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Wrap(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 35.0, top: 30, bottom: 10),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Events',
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF095B66)),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 50,
                      width: 280,
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5), // Shadow color
                            spreadRadius: 2, // Spread radius
                            blurRadius: 5, // Blur radius
                            offset: Offset(0, 3),
                            // Offset
                          ),
                        ],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.search,
                            color: Color(0xFF095B66),
                            size: 30,
                          ),
                          fillColor: Colors.white,
                          border: InputBorder.none,
                          hintText: 'Search Activity',
                          hintStyle: TextStyle(
                              color: Color(0xFFBAD5D9),
                              fontSize: 20,
                              fontWeight: FontWeight.w200),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    Stack(children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color(0xFF095B66),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      const Positioned(
                        left: 8,
                        top: 5,
                        child: Iconify(
                          Ph.bookmark_bold,
                          size: 35,
                          color: Colors.white,
                        ),
                      )
                    ]),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  width: 350,
                  child: Divider(
                    color: Color(0xFF095B66),
                    thickness: 2,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                          color: const Color(0xFF095B66),
                          borderRadius: BorderRadius.circular(5)),
                      child: const Center(
                        child: Text(
                          'Environment',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                          color: const Color(0xFF095B66),
                          borderRadius: BorderRadius.circular(5)),
                      child: const Center(
                        child: Text(
                          'Health',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Container(
                      width: 100,
                      height: 30,
                      decoration: BoxDecoration(
                          color: const Color(0xFF095B66),
                          borderRadius: BorderRadius.circular(5)),
                      child: const Center(
                        child: Text(
                          '6-12 months',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Stack(
                  children: [
                    Container(
                      width: 350,
                      height: 115,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white, width: 1),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5), // Shadow color
                            spreadRadius: 2, // Spread radius
                            blurRadius: 5, // Blur radius
                            offset: Offset(0, 3),
                            // Offset
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Sustainable City Initiative',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFF095B66),
                                  fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              'Santa Marina Beach',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF095B66),
                                  fontWeight: FontWeight.normal),
                            ),
                            const Text(
                              'California',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF095B66)),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 70,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFF095B66),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: const Center(
                                    child: Text(
                                      'Environment',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 70,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFF095B66),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: const Center(
                                    child: Text(
                                      'Full Day',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFF4BDDB1),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: IconButton(
                                      iconSize: 60,
                                      onPressed: viewCareer,
                                      icon: const Iconify(
                                        Ic.outline_remove_red_eye,
                                        color: Colors.white,
                                      )),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 280,
                      child: Container(
                        height: 20,
                        width: 60,
                        decoration: const BoxDecoration(
                          color: Color(0xFFF67A7A),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(5),
                              bottomRight: Radius.circular(5)),
                        ),
                        child: const Center(
                            child: Text(
                          '3 days',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Stack(
                  children: [
                    Container(
                      width: 350,
                      height: 115,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white, width: 1),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5), // Shadow color
                            spreadRadius: 2, // Spread radius
                            blurRadius: 5, // Blur radius
                            offset: Offset(0, 3),
                            // Offset
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Clean the cost',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFF095B66),
                                  fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              'Santa Marina Beach',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF095B66),
                                  fontWeight: FontWeight.normal),
                            ),
                            const Text(
                              'California',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF095B66)),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 70,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFF095B66),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: const Center(
                                    child: Text(
                                      'Environment',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 70,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFF095B66),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: const Center(
                                    child: Text(
                                      'Full Day',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFF4BDDB1),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: IconButton(
                                      iconSize: 60,
                                      onPressed: viewCareer,
                                      icon: const Iconify(
                                        Ic.outline_remove_red_eye,
                                        color: Colors.white,
                                      )),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 280,
                      child: Container(
                        height: 20,
                        width: 60,
                        decoration: const BoxDecoration(
                          color: Color(0xFFF67A7A),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(5),
                              bottomRight: Radius.circular(5)),
                        ),
                        child: const Center(
                            child: Text(
                          '3 days',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Stack(
                  children: [
                    Container(
                      width: 350,
                      height: 115,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white, width: 1),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5), // Shadow color
                            spreadRadius: 2, // Spread radius
                            blurRadius: 5, // Blur radius
                            offset: Offset(0, 3),
                            // Offset
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Clean the cost',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFF095B66),
                                  fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              'Santa Marina Beach',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF095B66),
                                  fontWeight: FontWeight.normal),
                            ),
                            const Text(
                              'California',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF095B66)),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 70,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFF095B66),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: const Center(
                                    child: Text(
                                      'Environment',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 70,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFF095B66),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: const Center(
                                    child: Text(
                                      'Full Day',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFF4BDDB1),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: IconButton(
                                      iconSize: 60,
                                      onPressed: viewCareer,
                                      icon: const Iconify(
                                        Ic.outline_remove_red_eye,
                                        color: Colors.white,
                                      )),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 280,
                      child: Container(
                        height: 20,
                        width: 60,
                        decoration: const BoxDecoration(
                          color: Color(0xFFF67A7A),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(5),
                              bottomRight: Radius.circular(5)),
                        ),
                        child: const Center(
                            child: Text(
                          '3 days',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Stack(
                  children: [
                    Container(
                      width: 350,
                      height: 115,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white, width: 1),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5), // Shadow color
                            spreadRadius: 2, // Spread radius
                            blurRadius: 5, // Blur radius
                            offset: Offset(0, 3),
                            // Offset
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Wildlife Habitat Experience',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xFF095B66),
                                  fontWeight: FontWeight.bold),
                            ),
                            const Text(
                              'Santa Marina Forest',
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Color(0xFF095B66),
                                  fontWeight: FontWeight.normal),
                            ),
                            const Text(
                              'California',
                              style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF095B66)),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Container(
                                  width: 70,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFF095B66),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: const Center(
                                    child: Text(
                                      'Environment',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: 70,
                                  height: 20,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFF095B66),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: const Center(
                                    child: Text(
                                      'Full Day',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 10,
                                      ),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                Container(
                                  width: 30,
                                  height: 30,
                                  decoration: BoxDecoration(
                                      color: const Color(0xFF4BDDB1),
                                      borderRadius: BorderRadius.circular(5)),
                                  child: IconButton(
                                      iconSize: 60,
                                      onPressed: viewCareer,
                                      icon: const Iconify(
                                        Ic.outline_remove_red_eye,
                                        color: Colors.white,
                                      )),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 280,
                      child: Container(
                        height: 20,
                        width: 60,
                        decoration: const BoxDecoration(
                          color: Color(0xFFF67A7A),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(5),
                              bottomRight: Radius.circular(5)),
                        ),
                        child: const Center(
                            child: Text(
                          '3 days',
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
