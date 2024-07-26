import 'package:flutter/material.dart';

class Message {
  final String username;
  final String content;
  final String deliveredTime;
  final bool isNew;
  final String avatar;

  Message({
    required this.username,
    required this.content,
    required this.deliveredTime,
    required this.isNew,
    required this.avatar,
  });
}

class PageView5 extends StatefulWidget {
  @override
  _PageView5State createState() => _PageView5State();
}

class _PageView5State extends State<PageView5> {
  final paddingTextInTextField = 14.0;

 List<Message> messages = [
    Message(
      username: 'Nhóm A',
      avatar: 'assets/images/icon-tomiru-appbar.jpg',
      content: 'How are you?',
      deliveredTime: "15 phút",
      isNew: true,
    ),
    Message(
      username: 'Nhóm B',
      avatar: 'assets/images/app-avatar.png',
      content: 'I am good. Thank you!',
      deliveredTime: "1 giờ trước",
      isNew: true,
    ),
    Message(
      username: 'Nhóm C',
      avatar: 'assets/images/mark-zuckerberg.jpg',
      content: 'What are you doing tomorrow?',
      deliveredTime: "2 ngày trước",
      isNew: true,
    ),
    Message(
      username: 'Nhóm D',
      avatar: 'assets/images/logo-tomiru-v2.png',
      content: 'Tôi đang ko vui',
      deliveredTime: "1 phút trước",
      isNew: true,
    ),
    Message(
      username: 'Nhóm E',
      avatar: 'assets/images/kem.jpg',
      content: 'Đi chơi không em',
      deliveredTime: "Hôm qua",
      isNew: true,
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20.0),
            ListView.builder(
              shrinkWrap: true,
              itemCount: messages.length,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                Message message = messages[index];
                return Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: ListTile(
                        contentPadding: EdgeInsets.all(0),
                        leading: SizedBox(
                          width: 56,
                          height: 56,
                          child: CircleAvatar(
                            backgroundImage: AssetImage(message.avatar),
                          ),
                        ),
                        title: Text(message.username,
                            style: TextStyle(fontWeight: FontWeight.bold)),
                        subtitle: Text(message.content,
                            style: TextStyle(fontSize: 14)),
                        trailing: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(message.deliveredTime),
                            if (message.isNew)
                              Container(
                                margin: EdgeInsets.only(top: 5.0),
                                width: 20,
                                height: 20,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.red,
                                ),
                                child: Center(
                                  child: Text(
                                    '1',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                    Divider(
                      color: Colors.grey[300], // Set Divider color
                      thickness: 1, // Set Divider thickness
                      indent: 20, // Set start indent
                      endIndent: 20, // Set end indent
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}