import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:volunify/utils/global_variable.dart';

class AddReview extends StatefulWidget {
  const AddReview({super.key});

  @override
  State<AddReview> createState() => _AddReviewState();
}

class _AddReviewState extends State<AddReview> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_rounded),
        title: Row(
          children: [
            SizedBox(
              width: 80,
            ),
            Text(
              "Add Review",
              style: TextStyle(
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: GlobalVariables.gray.withOpacity(0.5),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    width: 150,
                    height: 150,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.upload,
                          size: 50,
                        ),
                        Text("Upload photos")
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Nature Nurturers",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "Rally",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w700),
                      ),
                      Text(
                        "May 24 2024",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                            color: GlobalVariables.gray.withOpacity(0.9)),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: screenSize.width * 0.9,
                height: 4,
                color: GlobalVariables.gray.withOpacity(0.2),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "How would you rate this event?",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                ),
              ),
              RatingBar(
                initialRating: 0,
                minRating: 0,
                maxRating: 5,
                allowHalfRating: true,
                itemSize: 30.0,
                glowColor: Colors.yellow,
                ratingWidget: RatingWidget(
                  full: const Icon(Icons.star, color: Colors.blueAccent),
                  half: const Icon(Icons.star_half, color: Colors.blueAccent),
                  empty:
                      const Icon(Icons.star_border, color: Colors.blueAccent),
                ),
                onRatingUpdate: (rating) {
                  // Rating is updated
                  // log('rating update to: $rating');
                },
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Organization",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  RatingBar(
                    initialRating: 0,
                    minRating: 0,
                    maxRating: 5,
                    allowHalfRating: true,
                    itemSize: 30.0,
                    glowColor: Colors.yellow,
                    ratingWidget: RatingWidget(
                      full: const Icon(Icons.star, color: Colors.blueAccent),
                      half:
                          const Icon(Icons.star_half, color: Colors.blueAccent),
                      empty: const Icon(Icons.star_border,
                          color: Colors.blueAccent),
                    ),
                    onRatingUpdate: (rating) {
                      // Rating is updated
                      // log('rating update to: $rating');
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Communication",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  RatingBar(
                    initialRating: 0,
                    minRating: 0,
                    maxRating: 5,
                    allowHalfRating: true,
                    itemSize: 30.0,
                    glowColor: Colors.yellow,
                    ratingWidget: RatingWidget(
                      full: const Icon(Icons.star, color: Colors.blueAccent),
                      half:
                          const Icon(Icons.star_half, color: Colors.blueAccent),
                      empty: const Icon(Icons.star_border,
                          color: Colors.blueAccent),
                    ),
                    onRatingUpdate: (rating) {
                      // Rating is updated
                      // log('rating update to: $rating');
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Support",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                  RatingBar(
                    initialRating: 0,
                    minRating: 0,
                    maxRating: 5,
                    allowHalfRating: true,
                    itemSize: 30.0,
                    glowColor: Colors.yellow,
                    ratingWidget: RatingWidget(
                      full: const Icon(Icons.star, color: Colors.blueAccent),
                      half:
                          const Icon(Icons.star_half, color: Colors.blueAccent),
                      empty: const Icon(Icons.star_border,
                          color: Colors.blueAccent),
                    ),
                    onRatingUpdate: (rating) {
                      // Rating is updated
                      // log('rating update to: $rating');
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Review Title",
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                maxLines: 5,
                decoration: InputDecoration(label: Text("Review")),
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 2, color: GlobalVariables.backgroundColor),
                    color: GlobalVariables.darkBlue,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                  width: screenSize.width * 0.70,
                  height: screenSize.height * 0.07,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Sumbit',
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
      ),
    );
  }
}
