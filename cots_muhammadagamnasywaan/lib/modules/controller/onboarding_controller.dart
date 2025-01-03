import 'package:get/get.dart';

class OnboardingController extends GetxController {
  final onboardingPages = [
    {
      "image": "assets/illustration/illus-1.png",
      "title": "Selamat datang di gojek!",
      "description":
          "Aplikasi yang bikin hidupmu lebih mudah. Bantuin semua kebutuhanmu, kapanpun, dan dimanapun.",
    },
    {
      "image": "assets/illustration/illus-2.png",
      "title": "Transportasi & logistik",
      "description":
          "Antarin kamu jalan atau ambilin barang lebih gampang tinggal ngeklik doang.",
    },
    {
      "image": "assets/illustration/illus-3.png",
      "title": "Pesan makan & belanja",
      "description": "Lagi ngidam sesuatu? Gojek beliin gak pakai lama.",
    },
  ].obs;

  var currentPage = 0.obs;

  void setPage(int index) {
    currentPage.value = index;
  }
}