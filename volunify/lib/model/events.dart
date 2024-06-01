import 'dart:convert';

class Event {
  String id;
  String eventName;
  String causeArea;
  DateTime startingDate;
  DateTime endingDate;
  String location;
  String telNo;
  int noOfVolunteers;
  List<String> skills;
  int ageRestriction;
  DateTime deadline;
  String registrationLink;
  String notes;

  Event(
      {required this.id,
      required this.eventName,
      required this.causeArea,
      required this.startingDate,
      required this.endingDate,
      required this.location,
      required this.telNo,
      required this.noOfVolunteers,
      required this.skills,
      required this.ageRestriction,
      required this.deadline,
      required this.registrationLink,
      required this.notes});

  factory Event.fromMap(Map<String, dynamic> json) => Event(
      id: json["id"] ?? '',
      eventName: json["eventName"] ?? '',
      causeArea: json["causeArea"] ?? '',
      startingDate: json["startingDate"] ?? '',
      endingDate: json["endingDate"] ?? '',
      location: json["location"] ?? '',
      telNo: json["telNo"] ?? '',
      noOfVolunteers: json["noOfVolunteers"] ?? '',
      skills: json["skills"] ?? '',
      ageRestriction: json["ageRestriction"] ?? '',
      deadline: json["dealine"] ?? '',
      registrationLink: json["registrationLink"] ?? '',
      notes: json["notes"]);

  Map<String, dynamic> toMap() => {
        "id": id,
        "eventName": eventName,
        "causeArea": causeArea,
        "startingDate": startingDate,
        "endingDate": endingDate,
        "location": location,
        "telNo": telNo,
        "noOfVolunteers": noOfVolunteers,
        "skills": skills,
        "ageRestriction": ageRestriction,
        "dealine": deadline,
        "registrationLink": registrationLink,
        "notes": notes,
      };

  Event fromJson(String str) => Event.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());
}
