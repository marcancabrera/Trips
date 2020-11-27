import 'package:flutter/material.dart';

import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //final listReviews =
    String pathImage = "assets/images/jupiter.png";
    String userName = "Kandinsky Masseir";
    String userInfo = "2 Photos 5 Reviews";
    String userComments = "This place is so great and I'm funny lol";
    return Column(
      children: [
        Review(pathImage, userName, userInfo, userComments),
        Review(pathImage, userName, userInfo, userComments),
        Review(pathImage, userName, userInfo, userComments),
        Review(pathImage, userName, userInfo, userComments),
      ],
    );
  }
}
