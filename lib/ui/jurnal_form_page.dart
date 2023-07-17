import 'package:epkl/shared/theme.dart';
import 'package:epkl/widgets/CustomEditableText.dart';
import 'package:epkl/widgets/LongTextInput.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class JurnalFormPage extends StatefulWidget {
  const JurnalFormPage({
    super.key,
    this.jurnal,
  });

  final Map<String, dynamic>? jurnal;

  @override
  State<JurnalFormPage> createState() => _JurnalFormPageState();
}

class _JurnalFormPageState extends State<JurnalFormPage> {
  DateTime? selectedDate;
  final TextEditingController _judulController = TextEditingController();
  final TextEditingController _descController = TextEditingController();
  final TextEditingController _contentController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate != null ? selectedDate! : DateTime.now(),
        firstDate: DateTime(2022),
        lastDate: DateTime(2024));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    if (widget.jurnal != null) {
      selectedDate = DateTime.parse(widget.jurnal!['date']);
      _judulController.text = widget.jurnal!['title'];
      _descController.text = widget.jurnal!['desc'];
      _contentController.text = widget.jurnal!['content'];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("${widget.jurnal != null ? 'Edit' : 'Tambah'} Jurnal"),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.check, size: 26),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(22, 15, 22, 40),
          child: Material(
            elevation: 2,
            color: whiteColor,
            borderRadius: BorderRadius.circular(20),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Judul",
                    style: greyText.copyWith(
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 3),
                  CustomEditableText(
                    style: blackText.copyWith(
                      fontSize: 20,
                      fontWeight: semiBold,
                    ),
                    controller: _judulController,
                    labelText: "tulis judul..",
                  ),
                  Text(
                    "Deskripsi",
                    style: greyText.copyWith(
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 3),
                  CustomEditableText(
                    style: blackText.copyWith(
                      fontSize: 16,
                    ),
                    controller: _descController,
                    labelText: "tulis deskripsi..",
                  ),
                  Text(
                    "Tanggal",
                    style: greyText.copyWith(
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 3),
                  InkWell(
                    onTap: () => _selectDate(context),
                    child: Row(
                      children: [
                        const SizedBox(width: 2),
                        Text(
                          widget.jurnal != null
                              ? DateFormat('yyyy-MM-dd').format(selectedDate!)
                              : 'yyyy-mm-dd',
                          style: blackText.copyWith(
                            fontSize: 15,
                          ),
                        ),
                        const SizedBox(width: 5),
                        const Icon(Icons.calendar_today, size: 20),
                      ],
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    "Detail",
                    style: greyText.copyWith(
                      fontSize: 15,
                    ),
                  ),
                  const SizedBox(height: 3),
                  LongTextInput(
                    controller: _contentController,
                    style: blackText.copyWith(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
