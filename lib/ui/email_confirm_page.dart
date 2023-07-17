import 'package:epkl/shared/theme.dart';
import 'package:epkl/widgets/CustomTextButton.dart';
import 'package:epkl/widgets/RoundedButton.dart';
import 'package:flutter/material.dart';

class EmailConfirmPage extends StatelessWidget {
  bool isConfirmed = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                Center(
                  child: Container(
                    width: 118,
                    height: 75,
                    margin: const EdgeInsets.only(top: 65, bottom: 21),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/main-logo.png"),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 345,
                  padding: EdgeInsets.symmetric(vertical: 32, horizontal: 28),
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 32, horizontal: 10),
                    decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Column(
                      children: [
                        isConfirmed
                            ? Column(
                                children: [
                                  const Text(
                                    "Selamat, akun anda berhasil dibuat!\nAkun anda belum diaktifkan oleh admin dan email anda belum terkonfirmasi",
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(height: 10),
                                  Text(
                                    "Link konfirmasi email\nsudah dikirim ke email anda:\nrealityinaship@gmail.com",
                                    textAlign: TextAlign.center,
                                  ),
                                  const SizedBox(height: 25),
                                  CustomTextButton(
                                    text:
                                        "Tidak menerima email?\n klik teks ini untuk kirim ulang",
                                    onPressed: () => Navigator.pushNamed(
                                      context,
                                      "/lupa-sandi",
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              )
                            : const Text(
                                "Selamat, akun anda berhasil dibuat!\nAkun anda belum diaktifkan oleh admin",
                                textAlign: TextAlign.center,
                              ),
                        const SizedBox(height: 35),
                        RoundedButton(
                          onPressed: () =>
                              Navigator.pushNamed(context, "/login"),
                          text: "Logout",
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
