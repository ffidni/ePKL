import 'package:epkl/shared/theme.dart';
import 'package:epkl/widgets/RoundedButton.dart';
import 'package:flutter/material.dart';
import "package:lottie/lottie.dart";
import 'package:carousel_slider/carousel_slider.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  int dataIndex = 0;
  CarouselController controller = CarouselController();
  List<Map<String, dynamic>> data = [
    {
      'title': "Atur Tugas dan Jadwal Anda",
      "content":
          "Aplikasi kami memilik fitur tugas\nyang memungkinkan anda untuk \nmengatur tugas dan jadwal"
    },
    {
      'title': "Jurnal",
      "content":
          "Kami menyediakan fitur jurnal\nmingguan untuk anda agar bisa\ndigunakan untuk pengembangan\n diri dan salah satu syarat PKL"
    },
    {
      'title': "Rute Tempat PKL",
      "content":
          "Sistem kami dapat menampilkan\nrute jalan dari posisi anda sekarang\n ke tempat PKL anda"
    },
    {
      'title': "Roadmap PKL",
      "content":
          "Sistem kami akan selalu\nmelacak progress anda dan\n menempatkan anda pada roadmap PKL"
    },
  ];

  Widget buildSlider(dynamic lottie, String title, String content) {
    return Column(
      children: [
        lottie,
        Text(
          title,
          style: blackText.copyWith(fontSize: 20, fontWeight: semiBold),
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 21),
        Text(
          content,
          style: greyText.copyWith(fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Center(
        child: Container(
          margin: EdgeInsets.fromLTRB(60, 55, 60, 21),
          child: Column(
            children: [
              CarouselSlider(
                carouselController: controller,
                items: [
                  buildSlider(
                    Lottie.asset("assets/onboarding-1.json",
                        width: 251, height: 290),
                    data[0]['title'],
                    data[0]['content'],
                  ),
                  buildSlider(
                    Lottie.asset("assets/onboarding-2.json",
                        width: 251, height: 290),
                    data[1]['title'],
                    data[1]['content'],
                  ),
                  buildSlider(
                    Lottie.asset("assets/onboarding-3.json",
                        width: 251, height: 290),
                    data[2]['title'],
                    data[2]['content'],
                  ),
                  buildSlider(
                    Lottie.asset("assets/onboarding-4.json",
                        width: 251, height: 290),
                    data[3]['title'],
                    data[3]['content'],
                  ),
                ],
                options: CarouselOptions(
                    height: 600,
                    viewportFraction: 1,
                    enableInfiniteScroll: false,
                    onPageChanged: (index, reason) {
                      setState(() {
                        dataIndex = index;
                      });
                    }),
              ),
              // SizedBox(height: 137),
              Text(
                "Geser/klik tombol",
                style: greyText.copyWith(fontSize: 14, fontWeight: reguler),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: dataIndex == 0 ? blueColor : greyColor),
                  ),
                  SizedBox(width: 6),
                  Container(
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: dataIndex == 1 ? blueColor : greyColor),
                  ),
                  SizedBox(width: 6),
                  Container(
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: dataIndex == 2 ? blueColor : greyColor),
                  ),
                  SizedBox(width: 6),
                  Container(
                    width: 12,
                    height: 12,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: dataIndex == 3 ? blueColor : greyColor),
                  ),
                ],
              ),
              SizedBox(height: 40),
              RoundedButton(
                text: dataIndex == 3 ? "Daftar" : "Lanjut",
                onPressed: () {
                  setState(() {
                    if (dataIndex == 3) {
                      Navigator.pushNamedAndRemoveUntil(
                          context, "/register", (route) => false);
                    } else {
                      dataIndex++;
                      controller.nextPage();
                    }
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
