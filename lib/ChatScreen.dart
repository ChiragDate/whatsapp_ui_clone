import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_ui_clone/models/ChatModel.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      itemCount: dummyList.length,
      itemBuilder: (context, index) {
        return Column(
          children: [
            Divider(
              height: 10,
              color: Colors.grey,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey,
                backgroundImage: NetworkImage(dummyList[index].imgUrl),
              ),
              title:Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(dummyList[index].name,style: TextStyle(fontSize: 30)),
                      Text(dummyList[index].text,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15)),
                    ],
                  ),
                  Text(dummyList[index].time,style: TextStyle(fontSize: 10,color: Colors.grey))
                  ],
              ),
            ),
          ],
        );
      },
    );
  }
}
