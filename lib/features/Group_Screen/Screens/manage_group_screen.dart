import 'package:flutter/material.dart';
import 'package:tomiru_social_flutter/features/Group_Screen/Screens/Members_Group_Screen.dart';
import 'package:tomiru_social_flutter/features/Group_Screen/Screens/approve_group_screen.dart';


class ManageGroupScreen extends StatefulWidget {
  final bool isAdmin;
  const ManageGroupScreen({super.key, required this.isAdmin});

  @override
  State<ManageGroupScreen> createState() => _ManageGroupScreenState();
}

class _ManageGroupScreenState extends State<ManageGroupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Quản lý',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 20,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Scaffold(
        backgroundColor: Colors.grey[50],
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Kiểm duyệt",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Icon(Icons.article),
                trailing: Text(
                  "5",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold
                  )
                  ),
                title: Text(
                  'Bài viết đang chờ',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text('0 bài mới hôm nay',
                    style: TextStyle(
                      fontSize: 12,
                    )),
              ),
               Divider(
                thickness: 1,
                color: Colors.grey[300],
              ),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Icon(Icons.report),
                title: Text(
                  'Nội dung thành viên báo cáo',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text('2 tin mới hôm nay',
                    style: TextStyle(
                      fontSize: 12,
                    )),
                    trailing: Text(
                      "3",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold
                      )
                      ),
              ),
               Divider(
                thickness: 1,
                color: Colors.grey[300],
              ),
              ListTile(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ApproveGroupScreen()));
                },
                contentPadding: EdgeInsets.zero,
                leading: Icon(Icons.notifications),
                title: Text(
                  'Thông tin kiểm duyệt',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text('0 Thông báo mới hôm nay',
                    style: TextStyle(
                      fontSize: 12,
                    )),
                    trailing: Text(
                      "3",
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold
                      )
                      ),
              ),
              SizedBox(height: 16),
              Text(
                "Thành viên",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  Image.asset("assets/images/user (3) 1.png"),
                  SizedBox(width: 8),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MembersGroupScreen(
                        isAdmin: widget.isAdmin
                      )));
                    },
                    child: Text(
                      "Thành viên",
                      style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                    ),
                  ),
                ]
              ),
              SizedBox(height: 25),
              Text(
                "Hoạt động",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 12),
              Row(
                children: [
                  Image.asset("assets/images/Vector.png"),
                  SizedBox(width: 8),
                  Text(
                    "Nhật ký hoạt động",
                    style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                  ),
                ]
              )
            ],
          ),
        ),
      ),
    );
  }
}