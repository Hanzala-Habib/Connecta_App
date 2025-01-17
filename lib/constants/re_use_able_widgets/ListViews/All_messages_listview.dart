
import 'package:connecta_app/Screens/WhatsAppChatScreen/WhatsAppChatSreen.dart';
import 'package:connecta_app/constants/re_use_able_widgets/Cicular_avatar/Avatar_circle.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class AllMessagesListview extends StatefulWidget {

  const AllMessagesListview({super.key});
  @override
  State<AllMessagesListview> createState() => _AllMessagesListviewState();
}

class _AllMessagesListviewState extends State<AllMessagesListview> {
  var arr=["Hanzala","Shahbaz","Wajeeha","Sejeela"];
  var sub_title=["Habib","Rana","Umer","Fatima"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(itemBuilder: (context, index) {
        return ListTile(
          onTap: (){
            Get.to(Whatsappchatsreen());
            print("tabbbed");
          },
          leading: AvatarCircle(name_letter: arr[index].toString()),
          trailing:const Text("29/03/2024"),
          title:Text(arr[index],),
          subtitle:Text(sub_title[index])
        );

      }, separatorBuilder: (context, index) {
        return const Divider(
          height: 20,
          thickness: 0.8,
        );
      }, itemCount:arr.length),
    );
  }
}
