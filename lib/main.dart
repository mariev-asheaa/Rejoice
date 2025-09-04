import 'package:device_preview/device_preview.dart';
import 'package:efraho/features/camp/presentation/views/camp_view.dart';
import 'package:efraho/features/contact/presentation/views/contact_view.dart';
import 'package:efraho/features/splash/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'features/home/presentaion/views/home_view.dart';
import 'generated/l10n.dart';

void main() {
  runApp(
      DevicePreview(
      enabled: true,
      builder: (context) => Efraho()
      )
  );
}

class Efraho extends StatelessWidget {
  const Efraho({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      locale: Locale('ar'),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Color(0xffFAF2E7),
        ),
    scaffoldBackgroundColor: Color(0xffFAF2E7),
      ),
      routes: {
        HomeView.routeName: (context) => const HomeView(),
        ContactView.routName:(context) => const ContactView(),
        CampView.routeName:(context) => const CampView(),
      },
      home: SplashView(),
    );
  }
}
