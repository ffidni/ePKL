import 'package:epkl/blocs/auth/auth_bloc.dart';
import 'package:epkl/models/forms/sign_up_form_model.dart';
import 'package:epkl/shared/shared_methods.dart';
import 'package:epkl/shared/theme.dart';
import 'package:epkl/widgets/CustomTextButton.dart';
import 'package:epkl/widgets/RoundedButton.dart';
import 'package:epkl/widgets/RoundedTitleInput.dart';
import 'package:flutter/material.dart';
import "package:flutter_bloc/flutter_bloc.dart";

class RegisterPage extends StatefulWidget {
  RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController namaC = TextEditingController();

  final TextEditingController emailC = TextEditingController();

  final TextEditingController nisC = TextEditingController();

  final TextEditingController teleponC = TextEditingController();

  final TextEditingController sandiC = TextEditingController();

  void _submit() {
    if (namaC.text.isEmpty ||
        emailC.text.isEmpty ||
        nisC.text.isEmpty ||
        teleponC.text.isEmpty ||
        sandiC.text.isEmpty) {
      showSnackbar(context, "Semua form harus diisi!");
      return;
    }
    final signUpForm = SignUpFormModel(
      email: emailC.text,
      nama_lengkap: namaC.text,
      nis: nisC.text,
      password: sandiC.text,
      tipe_user: "user",
    );
    context.read<AuthBloc>().add(AuthRegister(signUpForm));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          if (state is AuthFailed) {
            showSnackbar(context, state.error);
          } else if (state is AuthFailedApi) {
            showSnackbar(context, state.error.message);
          } else if (state is AuthSuccess) {
            Navigator.pushNamedAndRemoveUntil(
                context, "/email-confirm", (route) => false);
          }
        },
        builder: (context, state) {
          return SingleChildScrollView(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: [
                  Center(
                    child: Container(
                      width: 118,
                      height: 75,
                      margin: EdgeInsets.only(top: 65, bottom: 21),
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
                          controller: namaC,
                          title: "Nama Lengkap",
                        ),
                        const SizedBox(height: 20),
                        RoundedTitleInput(
                          controller: emailC,
                          title: "Email",
                        ),
                        const SizedBox(height: 20),
                        RoundedTitleInput(
                          controller: nisC,
                          title: "Nomor Induk Siswa (NIS)",
                        ),
                        const SizedBox(height: 20),
                        RoundedTitleInput(
                          controller: teleponC,
                          title: "Nomor Telepon",
                        ),
                        const SizedBox(height: 20),
                        RoundedTitleInput(
                          controller: sandiC,
                          title: "Kata Sandi",
                        ),
                        const SizedBox(height: 42),
                        (state is AuthLoading)
                            ? CircularProgressIndicator()
                            : RoundedButton(
                                text: "Buat Akun",
                                onPressed: _submit,
                              ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 18),
                  CustomTextButton(
                      text: "Login",
                      onPressed: () => Navigator.pushNamedAndRemoveUntil(
                          context, "/login", (route) => false))
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
