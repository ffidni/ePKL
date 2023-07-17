import 'package:epkl/shared/theme.dart';
import 'package:epkl/widgets/CustomTextButton.dart';
import 'package:epkl/widgets/RoundedButton.dart';
import 'package:flutter/material.dart';
import 'package:epkl/widgets/RoundedTitleInput.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailC = TextEditingController();
  final TextEditingController sandiC = TextEditingController();

  // @override
  // void initState() {
  //   super.initState();
  //   // WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
  //   //   scaffold.currentState!.openDrawer();
  //   // });
  // }

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
                  child: Column(
                    children: [
                      RoundedTitleInput(
                        controller: emailC,
                        title: "Email",
                      ),
                      const SizedBox(height: 20),
                      RoundedTitleInput(
                        controller: sandiC,
                        title: "Kata Sandi",
                      ),
                      const SizedBox(height: 42),
                      RoundedButton(
                        text: "Login",
                        onPressed: () => Navigator.pushNamedAndRemoveUntil(
                            context, "/persistent-tab", (route) => false),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 18),
                CustomTextButton(
                  text: "Register",
                  onPressed: () => Navigator.pushNamedAndRemoveUntil(
                      context, "/register", (route) => false),
                ),
                const SizedBox(height: 10),
                CustomTextButton(
                  text: "Lupa Sandi",
                  onPressed: () => Navigator.pushNamed(context, "/lupa-sandi"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
