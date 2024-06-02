import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:volunify/pages/manage_application.dart';
import 'package:volunify/pages/organization/components/create_event_component.dart';
import 'package:volunify/pages/organization/create_event_page1.dart';
import 'package:volunify/utils/global_variable.dart';

class OrganizationDashboard extends StatefulWidget {
  const OrganizationDashboard({super.key});

  @override
  State<OrganizationDashboard> createState() => _OrganizationDashboardState();
}

class _OrganizationDashboardState extends State<OrganizationDashboard> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: GlobalVariables.backgroundColor,
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(fontSize: screenSize.width * 0.06),
        ),
        centerTitle: true,
        leading: null,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: ((context) => const CreateEventComponent())));
        },
        child: const Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Search bar
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(color: GlobalVariables.darkgray),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: Row(
                    children: [
                      Icon(Icons.search),
                      const SizedBox(
                        width: 10,
                      ),
                      Text('Search')
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              // Statistics section
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  _buildStatisticCard(
                      screenSize, "1.3K", "Projects", "Completed"),
                  _buildStatisticCard(
                      screenSize, "754", "Active", "Volunteers"),
                  _buildStatisticCard(
                      screenSize, "\$6M+", "Donations", "Received"),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              // Next Event section
              Container(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Next Event',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              // Event details
              Container(
                width: double.infinity,
                child: Center(
                  child: Column(
                    children: [
                      Image.network(
                        "https://imgs.search.brave.com/N73Ep9c2OljY8aVubbbi12rYTawfar8jrGp4Ss0cgIk/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9tZWRp/YS5pc3RvY2twaG90/by5jb20vaWQvNTU0/MzkyMzM3L3Bob3Rv/L3ZvbHVudGVlcnMt/bGlmdGluZy1jb25z/dHJ1Y3Rpb24tZnJh/bWUtYXQtY29uc3Ry/dWN0aW9uLXNpdGUu/anBnP3M9NjEyeDYx/MiZ3PTAmaz0yMCZj/PWtlVEY0RTdSNWc0/R3l6Z2J4eG9zWUV0/SXp5YlJ6ZnIzVUhu/NzliN0dDN3M9",
                        fit: BoxFit.cover,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Wildlife Habitat Enhancement",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Everglades National Park, Florida",
                          style: TextStyle(
                            color: GlobalVariables.gray,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              // Organizers section
              Container(
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Organizers',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.brown.shade800,
                          radius: 50,
                          backgroundImage: NetworkImage(
                            "https://imgs.search.brave.com/UOEEvB_N7eMjYIYoryzJFk3FXSf5AFpR25y4El8kZ7U/rs:fit:500:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzAyLzY1LzE1LzEz/LzM2MF9GXzI2NTE1/MTM3OV9BcFlyUnNq/UDloSklHVjdxSmNX/VXBWak5oZXVjOG5B/OC5qcGc",
                          ),
                        ),
                        Center(
                          child: Text(
                            "Planet\nProtectors",
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.brown.shade800,
                          radius: 50,
                          backgroundImage: NetworkImage(
                            "https://imgs.search.brave.com/3kP0_nwloKfFbsThA9NRabKmYx7pWh4J4vHUazr9ULE/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9pbWFn/ZXMuZnJlZWNyZWF0/aXZlcy5jb20vd3At/Y29udGVudC91cGxv/YWRzLzIwMTYvMDQv/UGxhbnQtUGxhbi1s/b2dvLUZvci1GbG9y/aXN0cy5qcGc",
                          ),
                        ),
                        Center(
                          child: Text(
                            "Clean Air\nInitiative",
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.brown.shade800,
                          radius: 50,
                          backgroundImage: NetworkImage(
                            "https://imgs.search.brave.com/wJm4vgiXoVijvlYWkPIFfR4JTaLVakvXVRLIl7k4n2w/rs:fit:500:0:0/g:ce/aHR0cHM6Ly9jZG4u/ZHJpYmJibGUuY29t/L3VzZXJ1cGxvYWQv/MTM3NDE1NzgvZmls/ZS9vcmlnaW5hbC0x/MDYxMzkwNjEzYWQ2/ZTllYzRmMmRiOTBj/NjQ0ZmEyMy5qcGc_/cmVzaXplPTQwMHgw",
                          ),
                        ),
                        Center(
                          child: Text(
                            "Unity in\nAction",
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.brown.shade800,
                          radius: 50,
                          backgroundImage: NetworkImage(
                            "https://imgs.search.brave.com/WS7UjDFTVFzOvrsUwhSshVMYj0_S50bAHOBMZtdAPKs/rs:fit:500:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzAzLzE1LzUxLzI5/LzM2MF9GXzMxNTUx/Mjk2MV90VTlCYWdo/WmhCZDYwWFptVGJz/THRSN1hIWWZibDg3/Vi5qcGc",
                          ),
                        ),
                        Center(
                          child: Text(
                            "Active\nLives",
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.brown.shade800,
                          radius: 50,
                          backgroundImage: NetworkImage(
                            "https://imgs.search.brave.com/XbAXoTSSMIrEPVKdXB5b8H-7PVMQBRWzRRq0xAcO0Ek/rs:fit:500:0:0/g:ce/aHR0cHM6Ly90My5m/dGNkbi5uZXQvanBn/LzAxLzM1LzYwLzQ0/LzM2MF9GXzEzNTYw/NDQ4MF9kcU1rY2FD/RklNbW1VVEFiaW1w/c01QR2VJQVN2YjBS/NS5qcGc",
                          ),
                        ),
                        Center(
                          child: Text(
                            "Hope in\nCrisis",
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 40,
              ),
              Container(
                width: 100,
                height: 50,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatisticCard(
      Size screenSize, String number, String title1, String title2) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            number,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
          ),
          Text(
            title1,
            style: TextStyle(
                color: Color.fromARGB(255, 103, 103, 103).withOpacity(0.9)),
          ),
          Text(
            title2,
            style: TextStyle(
                color: Color.fromARGB(255, 103, 103, 103).withOpacity(0.9)),
          ),
        ],
      ),
      width: screenSize.width * 0.3,
      height: screenSize.width * 0.3,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: Colors.black12,
      ),
    );
  }
}
