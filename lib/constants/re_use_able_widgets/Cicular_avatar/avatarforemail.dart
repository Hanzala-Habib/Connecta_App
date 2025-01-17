import 'package:flutter/material.dart';

import '../../all_colors/GlobalColors.dart';
class AvatarForCategories extends StatelessWidget {
  final String name_letter;
  const AvatarForCategories({super.key, required this.name_letter});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 25,
        width: 25,
        child: CircleAvatar(
          backgroundColor: GlobalColors.primaryColor,
          child: Text(name_letter[0],style: TextStyle(fontWeight: FontWeight.normal),),



        ),
      ),
    );;
  }
}
