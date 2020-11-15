import 'package:flutter/material.dart';
//import 'package:flutter/semantics.dart';

class DescriptionPlace extends StatelessWidget{
  final String namePlace;
  final String descriptionPlace;
  final int stars;

  DescriptionPlace(this.namePlace, this.descriptionPlace, this.stars);
  @override
  Widget build(BuildContext context) {

    final star_half = Container(
      margin: EdgeInsets.only(
        top: 320.0,
        right: 3.0
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );


    final star_border = Container(
      margin: EdgeInsets.only(
        top: 320.0,
        right: 3.0
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );

    final star = Container(
      margin: EdgeInsets.only(
        top: 320.0,
        right: 3.0
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    List<Widget> printStars(){
      List<Widget> listStars = new List();
      int rest = 5 - stars;
      for(int i=0 ; i<stars ; i++){
        listStars.add(star);
      }
      for(int i=0 ; i<rest ; i++){
        listStars.add(star_border);
      }
      return listStars;
    }

    final description = Container(
      margin: EdgeInsets.only(
        top: 15,
        right: 40.0,
        left: 20.0
      ),
      child: new Text(
        descriptionPlace,
        style: TextStyle(
          color: Color.fromRGBO(0, 0, 0, .6),
          fontSize: 16.0,
          fontFamily: 'Lato'
        ),
        textAlign: TextAlign.left,
      ),
    );

    final title_stars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0
          ),
          child: Text(
            namePlace,
            style: TextStyle(
              fontFamily: 'Lato',
              fontSize: 30.0,
              fontWeight: FontWeight.w900
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Row (
          children: printStars(),
        ),
      ],
    );

    return Column(
      children: <Widget>[
        title_stars,
        description,
        description
        ],
      );
  }
}