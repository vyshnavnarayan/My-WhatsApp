import 'package:flutter/material.dart';
import 'package:whatsapp_clone/chat_screeen/chat_details.dart';
import 'package:whatsapp_clone/chat_screeen/chat_screen.dart';
import 'package:whatsapp_clone/chat_screeen/models/chat_model.dart';
import 'package:whatsapp_clone/status_screen/models/status_model.dart';
import 'package:whatsapp_clone/status_screen/statusTile.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({super.key});

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  List<StatusList> statusData = [
    StatusList(
        name: 'Adam',
        updatedAt: '1 minutes ago',
        image:
            'https://i.pinimg.com/originals/31/44/7e/31447e25b7bc3429f83520350ed13c15.jpg'),
    StatusList(
        name: 'Henna',
        updatedAt: '9 minutes ago',
        image:
            'https://xyzshayari.com/wp-content/uploads/2022/05/girl-photo-with-cap-1024x1024.png'),
    StatusList(
        name: 'Kane',
        updatedAt: '18 minutes ago',
        image:
            'https://shayarimaza.com/files/boys-dp-images/sad-boy-dp-images/Sad-boy-Profile-Pic.jpg'),
    StatusList(
        name: 'Balye',
        updatedAt: 'Today 10:24 pm',
        image:
            'https://smileworld.in/wp-content/uploads/2021/09/Facebook-Profile-Photo-Free-Download.jpg'),
    StatusList(
        name: 'Jane',
        updatedAt: 'Today 8:26 pm',
        image:
            'https://images.unsplash.com/photo-1484800089236-7ae8f5dffc8e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Z2lybCUyMHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80'),
    StatusList(
        name: 'Jane',
        updatedAt: 'Today 8:26 pm',
        image:
            'https://images.unsplash.com/photo-1484800089236-7ae8f5dffc8e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Z2lybCUyMHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80'),
    StatusList(
        name: 'Jane',
        updatedAt: 'Today 8:26 pm',
        image:
            'https://images.unsplash.com/photo-1484800089236-7ae8f5dffc8e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8Z2lybCUyMHByb2ZpbGV8ZW58MHx8MHx8&w=1000&q=80'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          //  Column(
          //   children: [
          //     Container(
          //       child: Column(
          //         children: [
          //           ListTile(
          //             leading: Stack(
          //               children: [
          //                 CircleAvatar(
          //                   backgroundColor: Colors.blue,
          //                   backgroundImage: NetworkImage(
          //                       'https://images.unsplash.com/photo-1618641986557-1ecd230959aa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80'),
          //                 ),
          //                 Positioned(
          //                   right: -10,
          //                   bottom: -1,
          //                   child: Padding(
          //                     padding: const EdgeInsets.only(right: 10),
          //                     child: CircleAvatar(
          //                       radius: 10,
          //                       backgroundColor: Colors.teal,
          //                       child: Icon(Icons.add),
          //                     ),
          //                   ),
          //                 )
          //               ],
          //             ),
          //             title: const Text('My Status'),
          //             subtitle: Text('Tap to add status update'),
          //           ),
          //         ],
          //       ),
          //     ),
          //     Row(
          //       children: [
          //         Padding(
          //           padding: const EdgeInsets.symmetric(horizontal: 10),
          //           child: Text('Recent updates'),
          //         ),
          //       ],

          //     ),
          //   ],
          // ),
          // floatingActionButton: Column(
          //   mainAxisAlignment: MainAxisAlignment.end,
          //   children: [
          //     FloatingActionButton(
          //         backgroundColor: Colors.teal,
          //         onPressed: () {},
          //         mini: true,
          //         child: Icon(Icons.edit)),
          //     FloatingActionButton(
          //       backgroundColor: Colors.green,
          //       onPressed: () {},
          //       child: Icon(Icons.camera_alt),
          //     ),
          //   ],
          // ),
          SingleChildScrollView(
        physics: ScrollPhysics(),
        child: Column(
          children: <Widget>[
            Column(
              children: [
                ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>Scaffold(
                            body: 
                            Center(child: Text('Status selection page')),
                          ),
                        ));
                  },
                  leading: Stack(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.blue,
                        backgroundImage: NetworkImage(
                            'https://images.unsplash.com/photo-1618641986557-1ecd230959aa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cHJvZmlsZXxlbnwwfHwwfHw%3D&w=1000&q=80'),
                      ),
                      Positioned(
                        right: -10,
                        bottom: -1,
                        child: Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: CircleAvatar(
                            radius: 10,
                            backgroundColor: Colors.teal,
                            child: Icon(Icons.add),
                          ),
                        ),
                      )
                    ],
                  ),
                  title: const Text('My Status'),
                  subtitle: Text('Tap to add status update'),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Row(
                    children: [
                      Text(
                          style: TextStyle(fontWeight: FontWeight.bold),
                          'Recent updates'),
                    ],
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>Scaffold(
                            body: 
                            Center(child: Text('Status')),
                          ),
                        ));
              },
              child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: statusData.length,
                  itemBuilder: (context, index) {
                    return StatusTile(statusData: statusData[index]);
                  }),
            )
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
              backgroundColor: Colors.teal,
              onPressed: () {
                Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>Scaffold(
                            body: 
                            Center(child: Text('Text here')),
                          ),
                        ));
              },
              mini: true,
              child: Icon(Icons.edit)),
          FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: () {
              Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>Scaffold(
                            body: 
                            Center(child: Text('Camera')),
                          ),
                        ));
            },
            child: Icon(Icons.camera_alt),
          ),
        ],
      ),
    );
  }
}
