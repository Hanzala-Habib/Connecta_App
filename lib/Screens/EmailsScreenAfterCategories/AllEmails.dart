import 'package:connecta_app/constants/all_colors/GlobalColors.dart';
import 'package:connecta_app/constants/re_use_able_widgets/ListViews/All_messages_listview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Allemails extends StatelessWidget {
  const Allemails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: GlobalColors.AppBarColor,
        title:
            Text("Emails", style: TextStyle(color: Colors.white, fontSize: 20)),
        leading: IconButton(onPressed: () {
          Get.back();
        }, icon: Icon(Icons.arrow_back, size: 32,
          color: Colors.white,)),
      ),
      body: AllMessagesListview(),
    );
  }
}
