
import 'package:connecta_app/constants/re_use_able_widgets/ListViews/All_messages_listview.dart';
import 'package:flutter/material.dart';

import '../../constants/all_colors/GlobalColors.dart';
import 'EmailCategories.dart';

class ConnectaTabBar extends StatefulWidget {
  const ConnectaTabBar({super.key});

  @override
  State<ConnectaTabBar> createState() => _ConnectaTabBarState();
}

class _ConnectaTabBarState extends State<ConnectaTabBar>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabController = TabController(length: 3, vsync: this);
    return Scaffold(
      body: Column(
        children: [
          TabBar(
              controller: _tabController,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(70),
                border: Border.all(
                  color: GlobalColors.primaryColor
                ),

                color: GlobalColors.primaryColor),
              indicatorSize: TabBarIndicatorSize.tab,
              /*indicator:UnderlineTabIndicator(
                  borderSide: BorderSide(width: 5.0),
              ),*/
              labelColor: Colors.white,
              unselectedLabelColor: Colors.black,
              tabs: const [
                Tab(
                  text: "All",
                ),
                Tab(
                  text: "WhatsApp",
                ),
                Tab(
                  text: "Email",
                )
              ]),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 4),
              child: TabBarView(
                  controller: _tabController,
                  children:const [
                    AllMessagesListview(),
                    AllMessagesListview(),
                    Emailcategories()
                  ]
              ),
            ),
          )
        ],
      ),
    );
  }
}
