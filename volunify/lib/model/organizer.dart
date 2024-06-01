import 'dart:convert';

import 'package:volunify/model/events.dart';

class Organizer {
  String id;
  String organizationName;
  String email;
  List<Event> eventList;

  Organizer({
    required this.id,
    required this.organizationName,
    required this.email,
    required this.eventList,
  });

  factory Organizer.fromMap(Map<String, dynamic> json) => Organizer(
        id: json["id"] ?? '',
        organizationName: json["organizationName"] ?? '',
        email: json["email"] ?? '',
        eventList: json["eventList"] ?? '',
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "organizationName": organizationName,
        "email": email,
        "eventList": eventList,
      };

  Organizer fromJson(String str) => Organizer.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());
}
