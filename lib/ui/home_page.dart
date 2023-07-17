import 'package:epkl/shared/shared_methods.dart';
import 'package:epkl/shared/theme.dart';
import 'package:epkl/widgets/RoundedNotificationButton.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
    required this.openDrawer,
  });

  final VoidCallback openDrawer;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPklStep = 2;
  List<Map<dynamic, dynamic>> steps = [
    {
      "id": 1,
      "title": "Seleksi",
      "dates": ["2023-05-01", "2023-05-15"],
      "order": 1,
      "created_at": "2023-06-28T09:53:54.000000Z",
      "updated_at": "2023-06-28T09:53:54.000000Z"
    },
    {
      "id": 2,
      "title": "Pembekalan",
      "dates": ["2023-05-15", "2023-06-02"],
      "order": 2,
      "created_at": "2023-06-28T09:53:54.000000Z",
      "updated_at": "2023-06-28T09:53:54.000000Z"
    },
    {
      "id": 3,
      "title": "Penempatan",
      "dates": ["2023-07-01", "2023-07-06"],
      "order": 3,
      "created_at": "2023-06-28T09:53:54.000000Z",
      "updated_at": "2023-06-28T09:53:54.000000Z"
    },
    {
      "id": 4,
      "title": "Pelaksanaan",
      "dates": ["2023-07-26", "2023-11-01"],
      "order": 4,
      "created_at": "2023-06-28T09:53:54.000000Z",
      "updated_at": "2023-06-28T09:53:54.000000Z"
    },
    {
      "id": 5,
      "title": "Bimbingan",
      "dates": ["2023-07-05", "2023-11-10"],
      "order": 5,
      "created_at": "2023-06-28T09:53:54.000000Z",
      "updated_at": "2023-06-28T09:53:54.000000Z"
    },
    {
      "id": 6,
      "title": "Monitoring",
      "dates": ["2023-07-01", "2023-09-01", "2023-11-01"],
      "order": 6,
      "created_at": "2023-06-28T09:53:54.000000Z",
      "updated_at": "2023-06-28T09:53:54.000000Z"
    },
    {
      "id": 7,
      "title": "Sidang",
      "dates": ["2023-11-01", "2023-11-15"],
      "order": 7,
      "created_at": "2023-06-28T09:53:54.000000Z",
      "updated_at": "2023-06-28T09:53:54.000000Z"
    }
  ];

  List<int> activesSteps = [1, 2];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greyBgColor,
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.fromLTRB(24, 38, 24, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Selamat pagi,",
                        style: greyText.copyWith(
                          fontSize: 16,
                        ),
                      ),
                      Text(
                        "Muhammad Haikal",
                        style: blackText.copyWith(
                            fontSize: 16, fontWeight: medium),
                      ),
                    ],
                  ),
                  Spacer(),
                  IconButton(
                    onPressed: widget.openDrawer,
                    icon: Icon(Icons.menu, size: 30),
                  ),
                ],
              ),
              const SizedBox(height: 25),
              Material(
                elevation: 1,
                child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Tempat PKL :",
                              style: blackText.copyWith(fontSize: 14),
                            ),
                            Spacer(),
                            Text(
                              "Gamelab",
                              style: blackText.copyWith(
                                  fontSize: 13, fontWeight: semiBold),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Total Tugas :",
                              style: blackText.copyWith(
                                fontSize: 14,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "0",
                              style: blackText.copyWith(
                                  fontSize: 13, fontWeight: semiBold),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              "Total Jurnal :",
                              style: blackText.copyWith(
                                fontSize: 14,
                              ),
                            ),
                            Spacer(),
                            Text(
                              "0",
                              style: blackText.copyWith(
                                  fontSize: 13, fontWeight: semiBold),
                            ),
                          ],
                        ),
                      ],
                    )),
              ),
              SizedBox(height: 20),
              HomeText(text: "Reminder", icon: Icons.notifications),
              RoundedNotificationButton(
                onPressed: () {},
                icon: Icons.fact_check,
                text: "Buat desain login..",
              ),
              SizedBox(height: 14),
              RoundedNotificationButton(
                onPressed: () {},
                icon: Icons.edit,
                text: "Anda belum membuat jurnal minggu ini",
                bgColor: redErrorColor,
              ),
              SizedBox(height: 22),
              HomeText(text: "Roadmap PKL 2023"),
              Material(
                elevation: 1,
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: steps
                            .map((e) => DotStep(
                                  dates: e['dates'],
                                  number: e['order'].toString(),
                                  title: e['title'],
                                  onPressed: () {},
                                  isSelected: activesSteps.contains(e['id']),
                                  isEnd: e['id'] == steps.length,
                                  isStart: e['id'] == 1,
                                ))
                            .toList()),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ignore: must_be_immutable
class DotStep extends StatelessWidget {
  DotStep({
    super.key,
    required this.number,
    required this.onPressed,
    required this.title,
    required this.dates,
    this.isSelected = false,
    this.isStart = false,
    this.isEnd = false,
  });

  bool isSelected;
  bool isStart;
  bool isEnd;
  final String number;
  final String title;
  final List<String> dates;
  final VoidCallback onPressed;

  String formatDates() {
    List<String> formatted = dates
        .map(
          (e) => formatIndonesianDate(
            DateTime.parse(e),
            hideDays: title == "Monitoring",
          ),
        )
        .toList();
    return formatted.join(formatted.length > 2 ? "\n" : " - ");
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (!isStart)
          Container(
            margin: const EdgeInsets.only(left: 10),
            height: 18,
            width: 2,
            decoration: BoxDecoration(
              color: isSelected ? yellowColor : greyColor,
            ),
          ),
        Row(
          children: [
            CircleAvatar(
              backgroundColor: isStart
                  ? blueColor
                  : (isEnd
                      ? redErrorColor
                      : (isSelected ? yellowColor : greyColor)),
              radius: 12,
              child: CircleAvatar(
                backgroundColor: whiteColor,
                radius: 8,
                child: Text(
                  number,
                  style: blackText.copyWith(fontSize: 12),
                ),
              ),
            ),
            const SizedBox(width: 5),
            Text(
              title,
              style: blackText.copyWith(
                fontSize: 12,
              ),
            ),
            const Spacer(),
            Text(
              formatDates(),
              style: isSelected
                  ? blackText.copyWith(fontSize: 12, fontWeight: semiBold)
                  : greyText.copyWith(
                      fontSize: 12,
                      fontWeight: black,
                    ),
            ),
          ],
        ),
        if (!isEnd) const SizedBox(height: 3)
      ],
    );
  }
}

// ignore: must_be_immutable
class HomeText extends StatelessWidget {
  HomeText({
    super.key,
    required this.text,
    this.icon,
  });

  final String text;
  IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              text,
              style: blackText.copyWith(fontSize: 16, fontWeight: semiBold),
            ),
            SizedBox(width: 3),
            if (icon != null) Icon(icon, size: 20)
          ],
        ),
        SizedBox(height: 9),
      ],
    );
  }
}
