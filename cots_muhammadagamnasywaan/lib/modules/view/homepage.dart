import 'package:cots_muhammadagamnasywaan/design_system/color.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Find food, services, or places...',
                hintStyle: TextStyle(color: ColorCollection.grey),
                prefixIcon: Icon(Icons.search, color: ColorCollection.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: ColorCollection.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide:
                      const BorderSide(color: ColorCollection.primaryblack),
                ),
                contentPadding:
                    EdgeInsets.symmetric(horizontal: 8, vertical: 12),
              ),
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: CircleAvatar(),
            ),
          ], // Warna AppBar
        ),
        body: Center(
          child: Text('Homepage'),
        ));
  }
}
