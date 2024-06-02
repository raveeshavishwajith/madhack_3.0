import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChatContent extends StatefulWidget {
  const ChatContent({super.key});

  @override
  State<ChatContent> createState() => _ChatContentState();
}

class _ChatContentState extends State<ChatContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                width: 400,
                height: 70,
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
                child: const Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.person,
                        size: 60,
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            'Gary Monroe',
                            style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF095B66),
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Online',
                            style: TextStyle(
                                fontSize: 11,
                                color: Color(0xFF095B66),
                                fontWeight: FontWeight.normal),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 90,
                            ),
                            Icon(Icons.phone),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.video_call_rounded,
                              color: Colors.black,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 70,
          ),
          Container(
            width: 300,
            height: 200,
            decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 10,
                      color: Colors.black.withOpacity(0.5))
                ],
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            child: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Hi Sarah! Thanks for reaching out. We'd love to have you volunteer for the Sustainable City Initiative. You can sign up through the event page on our website. Do you have any specific questions or need assistance with the registration?",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const Text(
            '9.11am',
            textAlign: TextAlign.left,
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: 300,
            height: 70,
            decoration: BoxDecoration(
                color: Color(0xff393939),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 10,
                      color: Colors.black.withOpacity(0.5))
                ],
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            child: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Hi! I’m excited to help out. I have some experience in urban gardening.",
                style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            width: 300,
            height: 70,
            decoration: BoxDecoration(
                color: Color(0xff393939),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 10,
                      spreadRadius: 10,
                      color: Colors.black.withOpacity(0.5))
                ],
                borderRadius: const BorderRadius.all(Radius.circular(10))),
            child: const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "Is there a particular role where you need more help?.",
                style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
              ),
            ),
          ),
          const Text(
            '9.19am',
            textAlign: TextAlign.left,
          ),
          const SizedBox(
            height: 150,
          ),

          Stack(
            children: [
              Container(
                width: 370,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 10,
                          color: Colors.black.withOpacity(0.5))
                    ],
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Text(
                        "Type Here",
                        style: TextStyle(fontWeight: FontWeight.bold,color: Color(0xffACACAC)),
                      ),
                      Spacer(),
                      Icon(Icons.emoji_emotions_outlined),
                      SizedBox(width: 10,),
                      Icon(Icons.gif_box_outlined),
                      SizedBox(width: 10,)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
