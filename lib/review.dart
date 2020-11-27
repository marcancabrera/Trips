import 'package:flutter/material.dart';

class Review extends StatelessWidget{

  String pathImage;
  String userFullName;
  String userInfo;
  String userComment;

  Review(this.pathImage, this.userFullName, this.userInfo, this.userComment);

  @override
  Widget build(BuildContext context) {
    final star = Container(
      width: 16.0,
      child: Icon(
        Icons.star,
        size: 15.0,
        color: Color(0xFFf2C611),
      ),
    );

    final userInformation = Container(
      margin: EdgeInsets.only(
        left: 20.0,
        top: 7.0,
      ),
      child: Text(
        userInfo,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 13.0,
          fontFamily: 'Lato',
          color: Color(0xFFa3a5a7)
        ),
      ),
    );

    List<Widget> listStars(){
      List<Widget> stars = new List();
      for (int i=0; i<5; i++){
        stars.add(star);
      }
      return stars;
    }

    final userComments = Container(
      margin: EdgeInsets.only(
        left: 20.0,
        top: 7.0,
      ),
      child: Text(
        userComment,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 13.0,
          fontFamily: 'Lato',
          fontWeight: FontWeight.w700,
        ),
      ),
    );

    final userName = Container(
      margin: EdgeInsets.only(
        left: 20.0,
      ),
      child: Text(
        userFullName,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 17.0,
          fontWeight: FontWeight.w900,
          fontFamily: 'Lato'
        ),
      ),

    );

    final userInfoWithStars= Row(
      children: <Widget>[
        userInformation,
        Row(
          children: listStars(),
        ),
      ],
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        userInfoWithStars,
        userComments
      ],

    );

    final photo = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage)
        ),
      ),
    );

    return Row(
      children: <Widget>[
        photo,
        userDetails
      ],);
  }
}