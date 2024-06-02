import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/ic.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:iconify_flutter/icons/ph.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ChatView extends StatefulWidget {
  const ChatView({super.key});

  @override
  State<ChatView> createState() => _ChatViewState();
}

class _ChatViewState extends State<ChatView> {
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
                      'ChatView',
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
                      width: 350,
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
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Slidable(
                      startActionPane:
                          ActionPane(motion: StretchMotion(), children: [
                        SlidableAction(
                          onPressed: ((context) {
                            //call number
                          }),
                          icon: Icons.phone,
                          backgroundColor: Colors.green,
                        ),
                        SlidableAction(
                          onPressed: ((context) {
                            //text number
                          }),
                          icon: Icons.edit,
                          backgroundColor: Colors.blue,
                        ),
                      ]),
                      endActionPane:
                          ActionPane(motion: StretchMotion(), children: [
                        SlidableAction(
                          onPressed: ((context) {
                            //call number
                          }),
                          icon: Icons.delete,
                          backgroundColor: Colors.red,
                        ),
                      ]),
                      child: Container(
                        color: Colors.grey[300],
                        child: const ListTile(
                          title: Text('Mitch Koko'),
                          subtitle: Text('0789654327'),
                          leading: Icon(
                            Icons.person,
                            size: 40,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                  height: 10,
                ),
                    Slidable(
                      startActionPane:
                          ActionPane(motion: StretchMotion(), children: [
                        SlidableAction(
                          onPressed: ((context) {
                            //call number
                          }),
                          icon: Icons.phone,
                          backgroundColor: Colors.green,
                        ),
                        SlidableAction(
                          onPressed: ((context) {
                            //text number
                          }),
                          icon: Icons.edit,
                          backgroundColor: Colors.blue,
                        ),
                      ]),
                      endActionPane:
                          ActionPane(motion: StretchMotion(), children: [
                        SlidableAction(
                          onPressed: ((context) {
                            //call number
                          }),
                          icon: Icons.delete,
                          backgroundColor: Colors.red,
                        ),
                      ]),
                      child: Container(
                        color: Colors.grey[300],
                        child: const ListTile(
                          title: Text('Mitch Koko'),
                          subtitle: Text('0789654327'),
                          leading: Icon(
                            Icons.person,
                            size: 40,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                  height: 10,
                ),
                    Slidable(
                      startActionPane:
                          ActionPane(motion: StretchMotion(), children: [
                        SlidableAction(
                          onPressed: ((context) {
                            //call number
                          }),
                          icon: Icons.phone,
                          backgroundColor: Colors.green,
                        ),
                        SlidableAction(
                          onPressed: ((context) {
                            //text number
                          }),
                          icon: Icons.edit,
                          backgroundColor: Colors.blue,
                        ),
                      ]),
                      endActionPane:
                          ActionPane(motion: StretchMotion(), children: [
                        SlidableAction(
                          onPressed: ((context) {
                            //call number
                          }),
                          icon: Icons.delete,
                          backgroundColor: Colors.red,
                        ),
                      ]),
                      child: Container(
                        color: Colors.grey[300],
                        child: const ListTile(
                          title: Text('Mitch Koko'),
                          subtitle: Text('0789654327'),
                          leading: Icon(
                            Icons.person,
                            size: 40,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                  height: 10,
                ),
                    Slidable(
                      startActionPane:
                          ActionPane(motion: StretchMotion(), children: [
                        SlidableAction(
                          onPressed: ((context) {
                            //call number
                          }),
                          icon: Icons.phone,
                          backgroundColor: Colors.green,
                        ),
                        SlidableAction(
                          onPressed: ((context) {
                            //text number
                          }),
                          icon: Icons.edit,
                          backgroundColor: Colors.blue,
                        ),
                      ]),
                      endActionPane:
                          ActionPane(motion: StretchMotion(), children: [
                        SlidableAction(
                          onPressed: ((context) {
                            //call number
                          }),
                          icon: Icons.delete,
                          backgroundColor: Colors.red,
                        ),
                      ]),
                      child: Container(
                        color: Colors.grey[300],
                        child: const ListTile(
                          title: Text('Mitch Koko'),
                          subtitle: Text('0789654327'),
                          leading: Icon(
                            Icons.person,
                            size: 40,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                  height: 10,
                ),
                    Slidable(
                      startActionPane:
                          ActionPane(motion: StretchMotion(), children: [
                        SlidableAction(
                          onPressed: ((context) {
                            //call number
                          }),
                          icon: Icons.phone,
                          backgroundColor: Colors.green,
                        ),
                        SlidableAction(
                          onPressed: ((context) {
                            //text number
                          }),
                          icon: Icons.edit,
                          backgroundColor: Colors.blue,
                        ),
                      ]),
                      endActionPane:
                          ActionPane(motion: StretchMotion(), children: [
                        SlidableAction(
                          onPressed: ((context) {
                            //call number
                          }),
                          icon: Icons.delete,
                          backgroundColor: Colors.red,
                        ),
                      ]),
                      child: Container(
                        color: Colors.grey[300],
                        child: const ListTile(
                          title: Text('Mitch Koko'),
                          subtitle: Text('0789654327'),
                          leading: Icon(
                            Icons.person,
                            size: 40,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                  height: 10,
                ),
                    Slidable(
                      startActionPane:
                          ActionPane(motion: StretchMotion(), children: [
                        SlidableAction(
                          onPressed: ((context) {
                            //call number
                          }),
                          icon: Icons.phone,
                          backgroundColor: Colors.green,
                        ),
                        SlidableAction(
                          onPressed: ((context) {
                            //text number
                          }),
                          icon: Icons.edit,
                          backgroundColor: Colors.blue,
                        ),
                      ]),
                      endActionPane:
                          ActionPane(motion: StretchMotion(), children: [
                        SlidableAction(
                          onPressed: ((context) {
                            //call number
                          }),
                          icon: Icons.delete,
                          backgroundColor: Colors.red,
                        ),
                      ]),
                      child: Container(
                        color: Colors.grey[300],
                        child: const ListTile(
                          title: Text('Mitch Koko'),
                          subtitle: Text('0789654327'),
                          leading: Icon(
                            Icons.person,
                            size: 40,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                  height: 10,
                ),
                    Slidable(
                      startActionPane:
                          ActionPane(motion: StretchMotion(), children: [
                        SlidableAction(
                          onPressed: ((context) {
                            //call number
                          }),
                          icon: Icons.phone,
                          backgroundColor: Colors.green,
                        ),
                        SlidableAction(
                          onPressed: ((context) {
                            //text number
                          }),
                          icon: Icons.edit,
                          backgroundColor: Colors.blue,
                        ),
                      ]),
                      endActionPane:
                          ActionPane(motion: StretchMotion(), children: [
                        SlidableAction(
                          onPressed: ((context) {
                            //call number
                          }),
                          icon: Icons.delete,
                          backgroundColor: Colors.red,
                        ),
                      ]),
                      child: Container(
                        color: Colors.grey[300],
                        child: const ListTile(
                          title: Text('Mitch Koko'),
                          subtitle: Text('0789654327'),
                          leading: Icon(
                            Icons.person,
                            size: 40,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                  height: 10,
                ),
                    Slidable(
                      startActionPane:
                          ActionPane(motion: StretchMotion(), children: [
                        SlidableAction(
                          onPressed: ((context) {
                            //call number
                          }),
                          icon: Icons.phone,
                          backgroundColor: Colors.green,
                        ),
                        SlidableAction(
                          onPressed: ((context) {
                            //text number
                          }),
                          icon: Icons.edit,
                          backgroundColor: Colors.blue,
                        ),
                      ]),
                      endActionPane:
                          ActionPane(motion: StretchMotion(), children: [
                        SlidableAction(
                          onPressed: ((context) {
                            //call number
                          }),
                          icon: Icons.delete,
                          backgroundColor: Colors.red,
                        ),
                      ]),
                      child: Container(
                        color: Colors.grey[300],
                        child: const ListTile(
                          title: Text('Mitch Koko'),
                          subtitle: Text('0789654327'),
                          leading: Icon(
                            Icons.person,
                            size: 40,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                  height: 10,
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
