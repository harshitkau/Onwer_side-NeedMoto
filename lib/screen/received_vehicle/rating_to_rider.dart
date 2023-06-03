import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:onwer/object/bottomNavigationBar.dart';
import 'package:onwer/object/textfield.dart';
import 'package:onwer/screen/received_vehicle/rating_congo.dart';

class RatingToRider extends StatefulWidget {
  const RatingToRider({super.key});

  @override
  State<RatingToRider> createState() => _RatingToRiderState();
}

class _RatingToRiderState extends State<RatingToRider> {
  TextEditingController _messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          "Rating to Rider",
          style: TextStyle(color: Colors.black),
        ),
        surfaceTintColor: Colors.black,
        elevation: 1,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(4),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(80)),
                child: CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.amber,
                  backgroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1511367461989-f85a21fda167?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80"),
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Kiran Kumar reddy",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
              ),
              SizedBox(height: 20),
              Text(
                "Rate you experiance",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              SizedBox(height: 5),
              RatingBar(
                initialRating: 0,
                minRating: 0,
                maxRating: 5,
                allowHalfRating: true,
                itemSize: 40.0,
                ratingWidget: RatingWidget(
                  full: const Icon(Icons.star, color: Colors.red),
                  half: const Icon(Icons.star_half, color: Colors.red),
                  empty: const Icon(Icons.star_border, color: Colors.red),
                ),
                onRatingUpdate: (rating) {
                  // Rating is updated
                  print('rating update to: $rating');
                },
              ),
              SizedBox(height: 30),
              TextFormField(
                controller: _messageController,
                // maxLength: 10,
                maxLines: 10,
                minLines: 5,
                decoration: InputDecoration(
                  // hintText: 'Message',
                  labelText: 'Message',
                  alignLabelWithHint: true,
                  constraints: BoxConstraints(maxHeight: 400, minHeight: 50),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: const BorderSide(
                        color: Colors.grey,
                      )),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              _submitButton(context)
            ],
          ),
        ),
      ),
      // bottomNavigationBar: BottomTab(),
    );
  }

  Widget _submitButton(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      height: 50,
      child: ElevatedButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            )),
            backgroundColor:
                MaterialStateProperty.all(Color.fromARGB(255, 0, 15, 112))),
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => RatingCongratulation()));
        },
        child: Center(
          child: Text(
            "Submit",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
