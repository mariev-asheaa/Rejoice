import 'package:device_preview/device_preview.dart';
import 'package:efraho/core/back_icon.dart';
import 'package:efraho/core/constants.dart';
import 'package:efraho/features/camp/presentation/views/camp_view.dart';
import 'package:efraho/features/camp/presentation/views/vibes_view.dart';
import 'package:efraho/features/contact/presentation/views/contact_view.dart';
import 'package:efraho/features/splash/views/splash_view.dart';
import 'package:efraho/features/teams/presentation/views/members_view.dart';
import 'package:efraho/features/teams/presentation/views/teams_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'features/camp/presentation/views/stations_view.dart';
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
          backgroundColor: kBackgroundColor,
        ),
    scaffoldBackgroundColor: kBackgroundColor
      ),
      routes: {
        HomeView.routeName: (context) => const HomeView(),
        ContactView.routName:(context) => const ContactView(),
        CampView.routeName:(context) => const CampView(),
        VibesView.routeName:(context) => const VibesView(),
        StationsView.routeName:(context) => const StationsView(),
        TeamsView.routeName:(context) => const TeamsView(),
        MembersView.routeName:(context) => const MembersView(),
      },
      home: SplashView(),
    );
  }
}
