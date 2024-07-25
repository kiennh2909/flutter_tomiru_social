import 'package:flutter/material.dart';
import 'package:tomiru_social_flutter/features/Business_Screen/Screens/transaction_confirmation_screen.dart';
import 'package:tomiru_social_flutter/features/Group_Screen/Widgets/cutom_input_event.dart';
import 'package:tomiru_social_flutter/widgets/ui/custom_mainbar.dart';
class ServiceRegisterForm extends StatelessWidget {
  final String price;
  final String period;
  final String packageName;
  const ServiceRegisterForm(
      {Key? key,
      required this.price,
      required this.period,
      required this.packageName})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        onBackPress: () => Navigator.of(context).pop(),
        mainTitle: "Gia hạn gói dịch vụ",
        padding: 0,
        widget: [
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomInputEventWidget(
              controller: TextEditingController(),
              title: 'Số lượng cần chuyển',
              hintText: price,
              inputType: TextInputType.text,
              onValueChanged: (value) {
                // Change event name
              },
            ),
            SizedBox(height: 16),
            CustomInputEventWidget(
              controller: TextEditingController(),
              title: 'Tên đăng nhập hoặc Email người nhận',
              hintText: "giahan@tomiru.com",
              inputType: TextInputType.text,
              onValueChanged: (value) {
                // Change event name
              },
            ),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Lời nhắn', style: TextStyle(fontWeight: FontWeight.bold)),
                  Text('Phí GD: 0 TOMXU', style: TextStyle(color: Colors.grey)),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                maxLines: 3,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText:
                      'Mã thành viên: XTS!2312\nGia hạn gói dịch vụ: Gói Premium Biz',
                ),
              ),
            ),
            Spacer(),
            SizedBox(
              height: 54,
              width: double.infinity,
              child:  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ElevatedButton(
                  onPressed: () {
                    // Add your registration logic here
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> TransactionConfirmationScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 12),
                  ),
                  child: const Center(
                    child: Text(
                      'Tiếp tục',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
