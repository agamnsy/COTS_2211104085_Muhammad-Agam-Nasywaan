import 'package:cots_muhammadagamnasywaan/design_system/color.dart';
import 'package:cots_muhammadagamnasywaan/modules/view/login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/illustration/illus-1.png',
              height: 200,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Transportasi & logistik',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Antarin kamu jalan atau ambilin barang lebih gampang tinggal ngeklik doang~',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey[700],
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  4,
                  (index) {
                    return Container(
                      margin: const EdgeInsets.symmetric(horizontal: 4.0),
                      width: 8,
                      height: 8,
                      decoration: BoxDecoration(
                        color: index == 0 ? Colors.green : Colors.grey,
                        shape: BoxShape.circle,
                      ),
                    );
                  },
                )),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Get.to(() => LoginPage());},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: ColorCollection.gojekGreen,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'Masuk',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: ColorCollection.lightGrey,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(
                        onPressed: () {},
                        style: OutlinedButton.styleFrom(
                          side: BorderSide(color: ColorCollection.gojekGreen),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: Text(
                          'Belum Daftar Akun? Daftar dulu',
                          style: TextStyle(color: ColorCollection.gojekGreen),
                        )),
                  ),
                  const SizedBox(height: 8),
                  Text(
                      'Dengan masuk atau mendaftar, kamu menyetujui Ketentuan layanan dan Kebijakan privasi.',
                      style:
                          TextStyle(fontSize: 12, color: Colors.grey.shade600))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
