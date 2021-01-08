import 'package:flutter/material.dart';
import 'package:platzi_trips_app/card_image_list.dart';

import 'gradient.dart';

class HeaderAppBar extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GradientBack('Welcome'),
        CardImageList()
      ],
    );
  }
}