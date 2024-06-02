import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:volunify/utils/global_variable.dart';

class ProfileViewOrganization extends StatefulWidget {
  const ProfileViewOrganization({super.key});

  @override
  State<ProfileViewOrganization> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileViewOrganization> {
  bool available = true;
  bool notifications = true;

  // final WidgetStateProperty<Icon?> thumbIcon =
  //     WidgetStateProperty.resolveWith<Icon?>(
  //   (Set<WidgetState> states) {
  //     if (states.contains(WidgetState.selected)) {
  //       return const Icon(Icons.check);
  //     }
  //     return const Icon(Icons.close);
  //   },
  // );

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        actions: [
          Icon(Icons.edit),
          SizedBox(
            width: 15,
          ),
          Icon(Icons.share),
          SizedBox(
            width: 15,
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            CircleAvatar(
              backgroundColor: Colors.brown.shade800,
              radius: 100,
              backgroundImage: NetworkImage(
                "https://imgs.search.brave.com/ohFG1JRUZmFrVhukkf7_CczPjMZzAIox-s0tAE9vAl8/rs:fit:860:0:0/g:ce/aHR0cHM6Ly9pbWcu/ZnJlZXBpay5jb20v/ZnJlZS1waG90by9w/b3J0cmFpdC1tb2Rl/cm4tbWFuXzIzLTIx/NDc5NjA5OTAuanBn/P3NpemU9NjI2JmV4/dD1qcGc",
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "Green Plant",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.location_on_outlined,
                  color: GlobalVariables.gray,
                ),
                Text(
                  "Colombo, Sri Lanka",
                  style: TextStyle(
                    color: GlobalVariables.gray,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Text(
              "greenplanet11@gmail.com",
              style: TextStyle(
                color: GlobalVariables.gray,
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Text(
                      "1.3K",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "Events",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 25,
                  width: 2,
                  color: GlobalVariables.gray,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Text(
                      "1.3K",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "Events",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  height: 25,
                  width: 2,
                  color: GlobalVariables.gray,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Text(
                      "1.3K",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "Events",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              width: screenSize.width * 0.9,
              height: 1,
              color: GlobalVariables.gray,
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: screenSize.width * 0.09),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Available",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                  ),
                  // Switch(
                  //   value: available,
                  //   thumbIcon: thumbIcon,
                  //   onChanged: (bool value) {
                  //     setState(() {
                  //       available = value;
                  //     });
                  //   },
                  // )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: screenSize.width * 0.09),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Notifications",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                  ),
                  // Switch(
                  //   value: notifications,
                  //   thumbIcon: thumbIcon,
                  //   onChanged: (bool value) {
                  //     setState(() {
                  //       notifications = value;
                  //     });
                  //   },
                  // )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: screenSize.width * 0.09),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Impact Statistics",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                  ),
                  Text(
                    ">",
                    style: TextStyle(fontSize: 30),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: screenSize.width * 0.09),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Certifications",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                  ),
                  Text(
                    ">",
                    style: TextStyle(fontSize: 30),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding:
                  EdgeInsets.symmetric(horizontal: screenSize.width * 0.09),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Feedbacks",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
                  ),
                  Text(
                    ">",
                    style: TextStyle(fontSize: 30),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(width: 2, color: GlobalVariables.red),
                  color: GlobalVariables.red,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                width: screenSize.width * 0.70,
                height: screenSize.height * 0.07,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Logout',
                    style: TextStyle(
                      fontSize: screenSize.width * 0.06,
                      fontWeight: FontWeight.w600,
                      color: GlobalVariables.backgroundColor,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
