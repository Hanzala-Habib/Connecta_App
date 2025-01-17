
import 'package:connecta_app/Screens/main_screen/msg_tab_bar.dart';
import 'package:connecta_app/constants/all_colors/GlobalColors.dart';
import 'package:flutter/material.dart';

import '../../constants/textfeild/TextFeild.dart';

class MainUnifiedScreen extends StatelessWidget {

  const MainUnifiedScreen({super.key});

  @override

  Widget build(BuildContext context) {

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,

        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "CONNECTA",
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
            Icon(Icons.settings_suggest,
              size: 32,
            color: Colors.white,)
          ],
        ),
        backgroundColor: GlobalColors.AppBarColor,

      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Expanded(
            child: Column(
              children: [
                SearchTextfeild(),
                Container(
                  height: 100,

                  decoration: BoxDecoration(
                    color: GlobalColors.secondaryColor,
                    borderRadius: BorderRadius.circular(12)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                                height: 65,
                                width: 65,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: GlobalColors.primaryColor,
                                ),
                                child: Icon(
                                  Icons.person_4,
                                  size: 32,
                                )),
                          ],
                        )
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 20,),
                Expanded(
                    child: ConnectaTabBar()),


              ],
            ),
          ),
        ),
      ),
    ));
  }
}
