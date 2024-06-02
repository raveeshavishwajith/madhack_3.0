import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:iconify_flutter/icons/ph.dart';

class ManageApplications extends StatefulWidget {
  const ManageApplications({super.key});

  @override
  State<ManageApplications> createState() => _ManageApplicationsState();
}

class _ManageApplicationsState extends State<ManageApplications> {
  
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
                      'ManageApplications',
                      style: TextStyle(
                          fontSize: 33,
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
                          hintText: 'Search Applications',
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
                    Stack(
                      children: [
                        Container(
                          width: 150,
                          height: 115,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.white, width: 1),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey
                                    .withOpacity(0.5), // Shadow color
                                spreadRadius: 2, // Spread radius
                                blurRadius: 5, // Blur radius
                                offset: Offset(0, 3),
                                // Offset
                              ),
                            ],
                          ),
                          child: const Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Recieved',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF095B66),
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '146',
                                  style: TextStyle(
                                      fontSize: 40,
                                      color: Color(0xFF095B66),
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          width: 150,
                          height: 115,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.white, width: 1),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey
                                    .withOpacity(0.5), // Shadow color
                                spreadRadius: 2, // Spread radius
                                blurRadius: 5, // Blur radius
                                offset: Offset(0, 3),
                                // Offset
                              ),
                            ],
                          ),
                          child: const Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Approved',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF095B66),
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '9',
                                  style: TextStyle(
                                      fontSize: 40,
                                      color: Color(0xFF095B66),
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 40,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 150,
                          height: 115,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.white, width: 1),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey
                                    .withOpacity(0.5), // Shadow color
                                spreadRadius: 2, // Spread radius
                                blurRadius: 5, // Blur radius
                                offset: Offset(0, 3),
                                // Offset
                              ),
                            ],
                          ),
                          child: const Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Rejected',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF095B66),
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '2',
                                  style: TextStyle(
                                      fontSize: 40,
                                      color: Color(0xFF095B66),
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    Stack(
                      children: [
                        Container(
                          width: 150,
                          height: 115,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: Colors.white, width: 1),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey
                                    .withOpacity(0.5), // Shadow color
                                spreadRadius: 2, // Spread radius
                                blurRadius: 5, // Blur radius
                                offset: Offset(0, 3),
                                // Offset
                              ),
                            ],
                          ),
                          child: const Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Pending',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xFF095B66),
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '11',
                                  style: TextStyle(
                                      fontSize: 40,
                                      color: Color(0xFF095B66),
                                      fontWeight: FontWeight.normal),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
