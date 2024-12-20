
import 'package:connecta_app/constants/re_use_able_widgets/ListViews/All_messages_listview.dart';
import 'package:flutter/material.dart';

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
              // indicator: BoxDecoration(
              //     borderRadius: BorderRadius.circular(10),
              //     color: GlobalColors.primaryColor),
              indicator:UnderlineTabIndicator(
                  borderSide: BorderSide(width: 5.0),
              ),
              labelPadding: EdgeInsets.symmetric(horizontal: 30),
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
            child: TabBarView(
                controller: _tabController,
                children:const [
                  AllMessagesListview(),
                  Center(child: Text("WhatsApp messages")),
                  Center(child: Text("Email messages"))
                ]
            ),
          )
        ],
      ),
    );
  }
}
