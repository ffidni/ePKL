import 'package:epkl/shared/theme.dart';
import 'package:epkl/widgets/RoundedButton.dart';
import 'package:epkl/widgets/RoundedTitleInput.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final TextEditingController _nameC = TextEditingController();
  final TextEditingController _telpC = TextEditingController();
  final TextEditingController _passC = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Profil Anda"),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 30, horizontal: 35),
          padding: const EdgeInsets.all(25),
          width: double.infinity,
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              RoundedTitleInput(
                controller: _nameC,
                title: "Nama Lengkap",
              ),
              const SizedBox(height: 10),
              RoundedTitleInput(
                controller: TextEditingController(),
                title: "Email",
                readOnly: true,
              ),
              const SizedBox(height: 10),
              RoundedTitleInput(
                controller: TextEditingController(),
                title: "Nomor Induk Siswa",
                readOnly: true,
              ),
              const SizedBox(height: 10),
              RoundedTitleInput(
                controller: _telpC,
                title: "Nomor HP",
              ),
              const SizedBox(height: 10),
              RoundedTitleInput(
                controller: _passC,
                title: "Password",
              ),
              const SizedBox(height: 30),
              RoundedButton(onPressed: () {}, text: "Ubah")
            ],
          ),
        ),
      ),
    );
  }
}
