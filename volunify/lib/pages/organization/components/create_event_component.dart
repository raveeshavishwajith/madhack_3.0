import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:volunify/pages/organization/create_event2.dart';
import 'package:volunify/pages/organization/create_event3.dart';
import 'package:volunify/pages/organization/create_event_page1.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CreateEventComponent extends StatefulWidget {
  const CreateEventComponent({super.key});

  @override
  State<CreateEventComponent> createState() => _CreateEventComponentState();
}

class _CreateEventComponentState extends State<CreateEventComponent> {
  final _controller = PageController();
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Stack(
          children: [
            PageView(
              controller: _controller,
              onPageChanged: (int page) {
                setState(() {
                  _currentPage = page;
                });
              },
              children: const [
                CreateEvent1(),
                CreateEvent2(),
                CreateEvent3()
              ],
            ),
            const Padding(
              padding:  EdgeInsets.only(top:40),
              child: Align(
                  alignment: Alignment.topCenter,
                  child: Text('Create Event', textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15.0),
                    child: Center(
                      child: SmoothPageIndicator(
                        controller:
                            _controller, // Connect to PageView controller
                        count: 3,
                        effect:const ColorTransitionEffect(
                          activeDotColor: Color(0xff041B26),
                          dotColor: Color.fromARGB(255, 208, 230, 240),
                          spacing: 15,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: GestureDetector(
                      onTap: () {
                        if (_currentPage < 2) {
                          _controller.nextPage(
                            duration: const Duration(milliseconds: 500),
                            curve: Curves.easeInOut,
                          );
                        }
                      },
                      child: Container(
                        decoration: const BoxDecoration(
                            color: Color(0xff041B26),
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        width: screensize.width * 0.85,
                        height: screensize.height * 0.07,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            _currentPage != 2 ? 'Next' : 'Create',
                            style: TextStyle(
                                fontSize: screensize.width * 0.06,
                                color: Colors.white),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
