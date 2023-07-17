import 'package:epkl/shared/theme.dart';
import 'package:epkl/widgets/RoundedButton.dart';
import 'package:epkl/widgets/RoundedTitleInput.dart';
import 'package:flutter/material.dart';

class LupaSandiPage extends StatelessWidget {
  final TextEditingController _emailC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lupa Sandi"),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 35, vertical: 30),
          child: Material(
            elevation: 2,
            borderRadius: BorderRadius.circular(20),
            child: Container(
              padding: const EdgeInsets.all(30),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: whiteColor,
              ),
              child: Column(
                children: [
                  RoundedTitleInput(
                    title: "Email",
                    controller: _emailC,
                  ),
                  SizedBox(height: 35),
                  RoundedButton(
                    onPressed: () {},
                    text: "Kirim Link Reset ke Email",
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
