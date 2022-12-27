import 'package:flutter/material.dart';
import 'package:whatsapp_clone/status_screen/models/status_model.dart';

class StatusTile extends StatelessWidget {
  const StatusTile({
    Key? key,
    required this.statusData,
  }) : super(key: key);

  final StatusList statusData;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundColor: Colors.grey,
        backgroundImage: NetworkImage(statusData.image!),
      ),
      title: Text(statusData.name!),
      subtitle: Text(statusData.updatedAt!),
    );
  }
}