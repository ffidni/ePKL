import 'package:epkl/shared/theme.dart';
import 'package:epkl/ui/jurnal_form_page.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class JurnalPage extends StatefulWidget {
  const JurnalPage({super.key});

  @override
  State<JurnalPage> createState() => _JurnalPageState();
}

class _JurnalPageState extends State<JurnalPage> {
  List<int> _selectedIds = [];
  final List<Map<String, dynamic>> dataJurnal = [
    {
      "id": 2,
      "users_id": 1,
      "date": "2023-06-17",
      "title": "tidur",
      "desc": "test",
      "content": "test",
      "created_at": "2023-06-17T05:52:53.000000Z",
      "updated_at": "2023-06-22T08:06:19.000000Z"
    },
    {
      "id": 3,
      "users_id": 1,
      "date": "2023-06-17",
      "title": "Odit omnis.",
      "desc": "Quasi aliquid ab.",
      "content":
          "Molestias voluptatem aliquid ut et. Eos quia inventore commodi nemo nesciunt aut. Mollitia cupiditate omnis vitae.",
      "created_at": "2023-06-17T05:52:53.000000Z",
      "updated_at": "2023-06-17T05:52:53.000000Z"
    }
  ];

  void _setSelectedJurnal(int id) {
    setState(() {
      if (_selectedIds.contains(id)) {
        _selectedIds.remove(id);
      } else {
        _selectedIds.add(id);
      }
    });
  }

  // ignore: unused_element
  void _goToJurnalForm({Map<String, dynamic>? jurnal}) {
    PersistentNavBarNavigator.pushNewScreen(
      context,
      screen: JurnalFormPage(jurnal: jurnal),
      pageTransitionAnimation: PageTransitionAnimation.sizeUp,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        margin: const EdgeInsets.only(bottom: 30, right: 8),
        child: FloatingActionButton(
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          onPressed: () => _goToJurnalForm(),
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
                      "Jurnal ${_selectedIds.isEmpty ? '' : '(${_selectedIds.length})'}",
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
                children: dataJurnal
                    .map(
                      (e) => Column(
                        children: [
                          buildJurnalCard(e),
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

  Widget buildJurnalCard(Map<String, dynamic> e) {
    return Material(
      color: whiteColor,
      elevation: 5,
      borderRadius: BorderRadius.circular(10),
      child: InkWell(
        onLongPress: () => _setSelectedJurnal(e['id']),
        onTap: () => _selectedIds.isNotEmpty
            ? _setSelectedJurnal(e['id'])
            : _goToJurnalForm(jurnal: e),
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    e['title'],
                    style: blackText.copyWith(
                      fontSize: 16,
                    ),
                  ),
                  Spacer(),
                  Text(
                    e['date'],
                    style: blackText.copyWith(fontSize: 14),
                  ),
                ],
              ),
              SizedBox(height: 6),
              Text(
                e['desc'],
                style: greyText.copyWith(fontSize: 14),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
