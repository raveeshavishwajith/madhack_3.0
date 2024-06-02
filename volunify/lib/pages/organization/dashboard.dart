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
              //search bar
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: screenSize.width * 0.3,
                    height: screenSize.width * 0.3,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1, color: GlobalVariables.darkgray),
                        borderRadius: BorderRadius.circular(12.0)),
                  ),
                  Container(
                    width: screenSize.width * 0.3,
                    height: screenSize.width * 0.3,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1, color: GlobalVariables.darkgray),
                        borderRadius: BorderRadius.circular(12.0)),
                  ),
                  Container(
                    width: screenSize.width * 0.3,
                    height: screenSize.width * 0.3,
                    decoration: BoxDecoration(
                        border: Border.all(
                            width: 1, color: GlobalVariables.darkgray),
                        borderRadius: BorderRadius.circular(12.0)),
                  )
                ],
              ),
              Container(
                child: Text(
                  'Next Event',
                  style: TextStyle(fontSize: 15),
                ),
              ),
              Container(
                  width: double.infinity,
                  height: 300,
                  decoration: BoxDecoration(
                      border: Border.all(width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(12.0))),
                  child: Center(
                    child: Text('event image'),
                  )),
              Container(
                child: Text(
                  'Organizers',
                  style: TextStyle(fontSize: screenSize.width * 0.075),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
