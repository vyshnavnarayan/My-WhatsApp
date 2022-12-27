import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Call_Screen/Call%20Model/call_model.dart';

class CallTile extends StatelessWidget {
  const CallTile({
    Key? key,
    required this.callsData,
  }) : super(key: key);

  final CallModel callsData;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
          backgroundColor: Colors.white,
          backgroundImage: NetworkImage(callsData.image != ""
              ? callsData.image!
              : 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTL9sqiich1IS50oUYm677xwB9QKRy_3hs-Eg&usqp=CAU')),
      title: Text(callsData.name!),
      subtitle: Text(callsData.callAt!),
      trailing: (callsData.isCall!) ? Icon(Icons.call) : Icon(Icons.video_call),
    );
  }
}
