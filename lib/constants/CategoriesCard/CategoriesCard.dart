import 'package:connecta_app/Screens/EmailsScreenAfterCategories/AllEmails.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../re_use_able_widgets/Cicular_avatar/avatarforemail.dart';
class CategoriesCard extends StatelessWidget {
  final indexNo;
  final category;
  CategoriesCard({super.key, this.indexNo, this.category});

  @override
  var arr=["Hanzala","Shahbaz","Wajeeha","Sejeela"];
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
          onTap: () {
            Get.to(Allemails());
          },
      child: Card(

        child:Container(

          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(category,style: const TextStyle(
                  fontWeight: FontWeight.bold
                ),),
                const SizedBox(height: 3,),
                Row(

                  children: [
                    AvatarForCategories(name_letter: arr[indexNo].toString()),
                    const SizedBox(width: 8,),
                    const Text("han bhai sb set hay lets go")
                  ],
                )
              ],
            ),
              const Icon(Icons.arrow_forward_ios,
              size: 24,)
            ],
          ),
        ) ,
      )
      ),
    );
  }
}


