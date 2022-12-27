import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Call_Screen/callPage.dart';
import 'package:whatsapp_clone/chat_screeen/chat_screen.dart';
import 'package:whatsapp_clone/status_screen/statusPage.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4, initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text('WhatsApp'),
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt)),
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            PopupMenuButton(
              itemBuilder: (context) {
                return const [
                  PopupMenuItem(child: Text('New group')),
                  PopupMenuItem(child: Text('New broadcast')),
                  PopupMenuItem(child: Text('Linked devices')),
                  PopupMenuItem(child: Text('Starred messages')),
                  PopupMenuItem(child: Text('Payments')),
                  PopupMenuItem(child: Text('Settings'))
                ];
              },
            )
          ],
        bottom: const TabBar(tabs: [
          Tab(child: Icon(Icons.camera_alt),),
          Tab(child: Text('CHATS')),
          Tab(child: Text('STATUS')),
          Tab(child: Text('CALLS'),)
        ]),
        ),
        body: TabBarView(children: [
          Center(child: Text('This is Camera page')),
          ChatScreen(),
          StatusScreen(),
          CallScreen()
        ]),
        
      ),
    );
  }
}
