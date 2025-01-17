import 'package:connecta_app/constants/CategoriesCard/CategoriesCard.dart';
import 'package:flutter/material.dart';

class Emailcategories extends StatefulWidget {
  const Emailcategories({super.key});

  @override
  State<Emailcategories> createState() => _EmailcategoriesState();
}

class _EmailcategoriesState extends State<Emailcategories> {
  @override
  Widget build(BuildContext context) {
    var Categories=["All","Promotional","Business"];
    return ListView.separated(

        itemBuilder: (context,index){
          return CategoriesCard(indexNo: index,category: Categories[index],);
        },
        separatorBuilder:  (context, index) {
          return const Divider(
            height: 20,
            thickness: 0.8,
          );
        }, itemCount:Categories.length);
  }
}
