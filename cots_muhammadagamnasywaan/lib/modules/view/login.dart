import 'package:cots_muhammadagamnasywaan/design_system/color.dart';
import 'package:cots_muhammadagamnasywaan/modules/view/homepage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Image.asset('assets/logo/gojek_logo.png'),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Image.asset(
                'assets/logo/indonesia.png',
              ),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Enter your registered phone number to log in',
                style: TextStyle(fontSize: 16, color: ColorCollection.grey),
              ),
              SizedBox(height: 16),
              Text(
                'Phone number*',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
                    decoration: BoxDecoration(
                      border: Border.all(color: ColorCollection.grey),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Text(
                      '+62',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintText: 'Enter your phone number',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 8),
              GestureDetector(
                onTap: () {},
                child: Text(
                  'Issue with number?',
                  style: TextStyle(
                    color: ColorCollection.gojekGreen,
                    fontSize: 14,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
              Spacer(),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.to(() => HomePage());
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: ColorCollection.gojekGreen,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: Text(
                    'Continue',
                    style: TextStyle(
                        fontSize: 16, color: ColorCollection.lightGrey),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
