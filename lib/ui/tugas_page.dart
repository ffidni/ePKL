import 'package:epkl/shared/shared_methods.dart';
import 'package:epkl/shared/shared_values.dart';
import 'package:epkl/shared/theme.dart';
import 'package:epkl/widgets/RoundedButton.dart';
import 'package:epkl/widgets/RoundedTitleDropdown.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';
import 'package:flutter/material.dart';
import 'package:epkl/widgets/RoundedTitleInput.dart';
import 'package:intl/intl.dart';

class TugasPage extends StatefulWidget {
  const TugasPage({super.key});

  @override
  State<TugasPage> createState() => _TugasPageState();
}

class _TugasPageState extends State<TugasPage> {
  List<int> _selectedIds = [];
  final TextEditingController _namaC = TextEditingController();
  final TextEditingController _deadlineC = TextEditingController();
  final List<String> _listPrioritas = ["rendah", "menengah", "tinggi"];
  String _selectedPrioritas = "rendah";

  List<Map<String, dynamic>> dataTugas = [
    {
      "id": 3,
      "is_checked": 1,
      "users_id": 1,
      "nama_tugas": "makan",
      "prioritas": "tinggi",
      "deadline": "2023-07-01 00:00:00",
      "created_at": "2023-06-17T05:46:22.000000Z",
      "updated_at": "2023-06-21T13:35:22.000000Z"
    },
    {
      "id": 32,
      "is_checked": 0,
      "users_id": 1,
      "nama_tugas":
          "TUAN TIGA BELAS TUANG TIGA GELAS BADAN MULAI GONTANG TAPI LIRIK TETAP JELAS MACAM KAU PEDULI JIKA LIRIK INI BIKIN KAU PANAS KEMON KEMARI MARI KITA KEMAS WADUH SALAH LIRIK",
      "prioritas": "tinggi",
      "deadline": "2023-07-01 00:00:00",
      "created_at": "2023-06-20T14:01:21.000000Z",
      "updated_at": "2023-06-20T14:01:21.000000Z"
    },
    {
      "id": 5,
      "is_checked": 0,
      "users_id": 1,
      "nama_tugas": "Neque quia a libero neque.",
      "prioritas": "menengah",
      "deadline": "2023-07-01 00:00:00",
      "created_at": "2023-06-17T05:47:09.000000Z",
      "updated_at": "2023-06-17T05:47:09.000000Z"
    },
    {
      "id": 6,
      "is_checked": 0,
      "users_id": 1,
      "nama_tugas": "Sit hic non qui fuga.",
      "prioritas": "rendah",
      "deadline": "2023-07-01 00:00:00",
      "created_at": "2023-06-17T05:47:09.000000Z",
      "updated_at": "2023-06-17T05:47:09.000000Z"
    },
  ];

  _selectDate(BuildContext dialogContext, {Map<String, dynamic>? tugas}) {
    Navigator.of(dialogContext).pop();
    DatePicker.showDateTimePicker(
      context,
      showTitleActions: true,
      locale: LocaleType.id,
      minTime: DateTime(2022),
      maxTime: DateTime(2024),
      onCancel: () => showDialog(
        context: context,
        builder: (context) =>
            createTugasDialog(context, tugas: tugas, newDate: _deadlineC.text),
      ),
      onConfirm: (time) {
        setState(() {
          print(time);
          _deadlineC.text = time.toString();
          showDialog(
            context: context,
            builder: (context) => createTugasDialog(
              context,
              tugas: tugas,
              newDate: formatDateAndTime(
                time.toString(),
              ),
            ),
          );
        });
      },
    );
  }

  Widget createTugasDialog(BuildContext context,
      {Map<String, dynamic>? tugas, String? newDate}) {
    if (tugas != null) {
      _namaC.text = tugas['nama_tugas'];
      _selectedPrioritas = tugas['prioritas'];
      _deadlineC.text = newDate ?? tugas['deadline'];
    } else {
      _namaC.text = "";
      _selectedPrioritas = "";
      _deadlineC.text = newDate ?? "";
    }

    return AlertDialog(
      backgroundColor: Colors.transparent,
      alignment: Alignment.center,
      insetPadding: EdgeInsets.zero,
      content: Container(
        width: 350,
        height: 458,
        padding: const EdgeInsets.all(30),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Text(
              "${tugas != null ? 'Edit' : 'Tambah'} Tugas",
              style: blackText.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            const SizedBox(height: 25),
            RoundedTitleInput(controller: _namaC, title: "Nama"),
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Prioritas",
                  style: blackText.copyWith(
                    fontSize: 14,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(height: 8),
                RoundedTitleDropdown(
                  items: _listPrioritas,
                  value: tugas != null ? _selectedPrioritas : null,
                  hintText: "Pilih prioritas",
                  onChanged: (String prioritas) => setState(() {
                    _selectedPrioritas = prioritas;
                  }),
                )
              ],
            ),
            const SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Deadline",
                  style: blackText.copyWith(
                    fontSize: 14,
                    fontWeight: medium,
                  ),
                ),
                const SizedBox(height: 8),
                GestureDetector(
                  onTap: () => _selectDate(context, tugas: tugas),
                  child: Container(
                    padding: EdgeInsets.all(12),
                    width: 327,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      border: Border.all(
                        width: 2,
                        color: greyColor,
                      ),
                    ),
                    child: Row(
                      children: [
                        Text(
                          newDate != null
                              ? newDate
                              : tugas != null
                                  ? _deadlineC.text
                                  : '',
                        ),
                        Spacer(),
                        const Icon(Icons.calendar_today, size: 26),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            RoundedButton(onPressed: () {}, text: "Tambah")
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        margin: const EdgeInsets.only(bottom: 30, right: 8),
        child: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          onPressed: () => showDialog(
            context: context,
            builder: (context) => createTugasDialog(context),
          ),
          child: const Icon(Icons.add,
              color: Color.fromARGB(255, 62, 62, 62), size: 32),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 36),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: _selectedIds.isEmpty
                      ? MainAxisAlignment.center
                      : MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Tugas ${_selectedIds.isEmpty ? '' : '(${_selectedIds.length})'}",
                      style: blackText.copyWith(
                          fontSize: 24, fontWeight: semiBold),
                    ),
                    if (_selectedIds.isNotEmpty)
                      Row(
                        children: [
                          IconButton(
                            iconSize: 28,
                            onPressed: () {},
                            icon: Icon(
                              Icons.delete_outline,
                              color: blackColor,
                            ),
                          ),
                          IconButton(
                            iconSize: 28,
                            onPressed: () => setState(() {
                              _selectedIds = [];
                            }),
                            icon: Icon(
                              Icons.cancel,
                              color: blackColor,
                            ),
                          ),
                        ],
                      ),
                  ],
                ),
              ),
              const SizedBox(height: 30),
              Column(
                children: dataTugas
                    .map(
                      (e) => Column(
                        children: [
                          buildTugasCard(e),
                          const SizedBox(height: 24),
                        ],
                      ),
                    )
                    .toList(),
              )
            ],
          ),
        ),
      ),
    );
  }

  void _setSelectedTugas(int id) {
    setState(() {
      if (_selectedIds.contains(id)) {
        _selectedIds.remove(id);
      } else {
        _selectedIds.add(id);
      }
    });
  }

  Widget buildTugasCard(Map<String, dynamic> e) {
    return Material(
      color: whiteColor,
      elevation: 5,
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        onLongPress: () {
          _setSelectedTugas(e['id']);
        },
        onTap: () => _selectedIds.isNotEmpty
            ? _setSelectedTugas(e['id'])
            : showDialog(
                context: context,
                builder: (context) => createTugasDialog(context, tugas: e),
              ),
        borderRadius: BorderRadius.circular(10),
        child: Container(
          padding: const EdgeInsets.all(18),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(
                color: _selectedIds.contains(e['id'])
                    ? yellowColor
                    : Colors.transparent,
                width: 1,
              )),
          child: Row(
            children: [
              Material(
                borderRadius: BorderRadius.circular(21),
                color:
                    e['is_checked'] == 1 ? Colors.transparent : Colors.blueGrey,
                child: InkWell(
                  borderRadius: BorderRadius.circular(21),
                  onTap: () {
                    setState(() {
                      dataTugas = dataTugas.map((old) {
                        if (old['id'] == e['id']) {
                          old['is_checked'] = e['is_checked'] == 1 ? 0 : 1;
                        }
                        return old;
                      }).toList();
                    });
                  },
                  child: e['is_checked'] == 1
                      ? Icon(Icons.check_circle, size: 42, color: greenColor)
                      : const Icon(Icons.circle,
                          size: 42, color: Colors.blueGrey),
                ),
              ),
              const SizedBox(width: 15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 2,
                      ),
                      decoration: BoxDecoration(
                        color: prioritasList[e['prioritas']],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        "Prioritas: ${e['prioritas']}".toUpperCase(),
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: medium,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(height: 3),
                    Text(
                      "Deadline: ${formatDateAndTime(e['deadline'])}",
                      style: greyText.copyWith(fontWeight: bold),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      e['nama_tugas'],
                      style:
                          blackText.copyWith(fontSize: 14, fontWeight: medium),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
