import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:iconify_flutter/icons/ph.dart';

class ManageApplicationView extends StatefulWidget {
  const ManageApplicationView({super.key});

  @override
  State<ManageApplicationView> createState() => _ManageApplicationViewState();
}

class _ManageApplicationViewState extends State<ManageApplicationView> {
  
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
                      'ManageApplicationView',
                      style: TextStyle(
                          fontSize: 33,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff393939)),
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
                            color: Color(0xff393939),
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
                          color: Color(0xff393939),
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
                    color: Color(0xff393939),
                    thickness: 2,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),

               Row(
                mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                  SizedBox(width: 10,),
                   Container(
                          width: 100,
                          height: 30,
                          decoration: BoxDecoration(
                              color: const Color(0xff393939),
                              borderRadius: BorderRadius.circular(5)),
                          child: const Center(
                            child: Text(
                              'Recieved',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 10,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                        Spacer(),
                   Container(
                          width: 200,
                          height: 30,
                          decoration: BoxDecoration(
                              color:  Colors.transparent,
                              borderRadius: BorderRadius.circular(5)),
                          child: const Center(
                            child: Text(
                              'Carbon Neutral Program',
                              style: TextStyle(
                                color: Color(0xffACACAC),
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                 ],
               ),
               SizedBox(height: 30,),

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 350,
                          height: 70,
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
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.person),
                                Spacer(),
                                Text(
                                  'Gary Monroe sent an application \nfor Mexican Stoves Project.',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xff393939),
                                      fontWeight: FontWeight.bold),
                                ),
                               
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    
                  ],
                ),
                SizedBox(height: 10,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 350,
                          height: 70,
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
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.person),
                                Spacer(),
                                Text(
                                  'Gary Monroe sent an application \nfor Mexican Stoves Project.',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xff393939),
                                      fontWeight: FontWeight.bold),
                                ),
                               
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    
                  ],
                ),
                SizedBox(height: 10,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 350,
                          height: 70,
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
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.person),
                                Spacer(),
                                Text(
                                  'Gary Monroe sent an application \nfor Mexican Stoves Project.',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xff393939),
                                      fontWeight: FontWeight.bold),
                                ),
                               
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    
                  ],
                ),
                SizedBox(height: 10,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 350,
                          height: 70,
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
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.person),
                                Spacer(),
                                Text(
                                  'Gary Monroe sent an application \nfor Mexican Stoves Project.',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xff393939),
                                      fontWeight: FontWeight.bold),
                                ),
                               
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    
                  ],
                ),
                SizedBox(height: 10,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 350,
                          height: 70,
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
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.person),
                                Spacer(),
                                Text(
                                  'Gary Monroe sent an application \nfor Mexican Stoves Project.',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xff393939),
                                      fontWeight: FontWeight.bold),
                                ),
                               
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    
                  ],
                ),
                SizedBox(height: 10,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: 350,
                          height: 70,
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
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(Icons.person),
                                Spacer(),
                                Text(
                                  'Gary Monroe sent an application \nfor Mexican Stoves Project.',
                                  style: TextStyle(
                                      fontSize: 16,
                                      color: Color(0xff393939),
                                      fontWeight: FontWeight.bold),
                                ),
                               
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                    
                  ],
                ),
                SizedBox(height: 10,),
                
              ],
            ),
          ],
        ),
      ),
    );
  }
}
