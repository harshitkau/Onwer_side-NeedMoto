import 'package:flutter/material.dart';

import '../onwer_home.dart';

class RatingCongratulation extends StatefulWidget {
  const RatingCongratulation({super.key});

  @override
  State<RatingCongratulation> createState() => _RatingCongratulationState();
}

class _RatingCongratulationState extends State<RatingCongratulation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Congratulation",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Text(
              "You have received 20 points",
              style: TextStyle(fontSize: 23, fontWeight: FontWeight.w400),
            ),
            Stack(
              children: [
                Image(
                  image: AssetImage("image/design.png"),
                  fit: BoxFit.cover,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 125),
                  child: Center(
                    child: Text(
                      "20",
                      style: TextStyle(
                          fontSize: 70,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Text(
              "LEVEL 3",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            _OKButton(context),
          ],
        ),
      ),
    );
  }

  Widget _OKButton(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.4,
      height: 50,
      child: ElevatedButton(
        style: ButtonStyle(
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40),
            )),
            backgroundColor: MaterialStateProperty.all(Colors.green)),
        onPressed: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => OwnerHome()));
        },
        child: Center(
          child: Text(
            "OK",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
