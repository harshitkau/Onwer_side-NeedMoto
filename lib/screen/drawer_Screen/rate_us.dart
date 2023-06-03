import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../onwer_home.dart';

class RateUs extends StatefulWidget {
  const RateUs({super.key});

  @override
  State<RateUs> createState() => _RateUsState();
}

class _RateUsState extends State<RateUs> {
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
          "RATE US",
          style: TextStyle(color: Colors.black),
        ),
        surfaceTintColor: Colors.black,
        elevation: 1,
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: Image(
                image: AssetImage(
                  "image/img.jpg",
                ),
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
              child: Image(
                image: AssetImage("image/googleplay.png"),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Your opinion matters to us",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(height: 10),
            Text(
              "We work super hard to serve you better and would love to know how would you rate our app?",
              textAlign: TextAlign.center,
              style: TextStyle(
                  height: 1.5,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                  color: Colors.black87),
            ),
            SizedBox(height: 40),
            RatingBar(
              initialRating: 0,
              minRating: 0,
              maxRating: 5,
              allowHalfRating: false,
              itemSize: 60.0,
              ratingWidget: RatingWidget(
                full: const Icon(Icons.star, color: Colors.orange),
                half: const Icon(Icons.star_half, color: Colors.orange),
                empty: const Icon(Icons.star_border, color: Colors.orange),
              ),
              onRatingUpdate: (rating) {
                // Rating is updated
                print('rating update to: $rating');
              },
            ),
            SizedBox(height: 30),
            _submitButton(context)
          ],
        ),
      ),
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
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => OwnerHome()));
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
