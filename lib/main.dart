import 'package:epkl/shared/theme.dart';
import 'package:epkl/ui/email_confirm_page.dart';
import 'package:epkl/ui/home_page.dart';
import 'package:epkl/ui/jurnal_form_page.dart';
import 'package:epkl/ui/jurnal_page.dart';
import 'package:epkl/ui/login_page.dart';
import 'package:epkl/ui/onboarding_page.dart';
import 'package:epkl/ui/persistent_tab.dart';
import 'package:epkl/ui/profile_page.dart';
import 'package:epkl/ui/register_page.dart';
import 'package:epkl/ui/splash_page.dart';
import 'package:epkl/ui/tempat_pkl_page.dart';
import 'package:epkl/ui/lupa_sandi_page.dart';
import 'package:epkl/ui/tugas_page.dart';
import 'package:flutter/material.dart';
import "package:flutter_bloc/flutter_bloc.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: TextTheme(
          bodyMedium: blackText,
        ),
        iconTheme: IconThemeData(
          color: blackColor,
        ),
        primaryColor: greenColor,
        errorColor: redErrorColor,
        colorScheme: ColorScheme.light(
          primary: greenColor,
          onPrimary: whiteColor,
        ),
        scaffoldBackgroundColor: greyBgColor,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0,
          iconTheme: IconThemeData(color: blackColor),
          titleTextStyle:
              blackText.copyWith(fontSize: 24, fontWeight: semiBold),
          centerTitle: true,
        ),
      ),
      routes: {
        '/': (context) => SplashPage(),
        '/persistent-tab': (context) => PersistentTab(),
        // '/home': (context) => HomePage(),
        '/tugas': (context) => TugasPage(),
        '/lupa-sandi': (context) => LupaSandiPage(),
        '/email-confirm': (context) => EmailConfirmPage(),
        '/jurnal': (context) => JurnalPage(),
        '/jurnal-form': (context) => JurnalFormPage(),
        '/tempat-pkl': (context) => TempatPKLPage(),
        '/profile-page': (context) => ProfilePage(),
        '/register': (context) => RegisterPage(),
        '/login': (context) => LoginPage(),
        '/onboarding': (context) => OnBoardingPage(),
      },
    );
  }
}
