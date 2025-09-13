import 'package:device_preview/device_preview.dart';
import 'package:efraho/core/utils/constants.dart';
import 'package:efraho/features/camp/presentation/views/bible_study_view.dart';
import 'package:efraho/features/camp/presentation/views/camp_view.dart';
import 'package:efraho/features/camp/presentation/views/competition_view.dart';
import 'package:efraho/features/camp/presentation/views/media_and_radio_view.dart';
import 'package:efraho/features/camp/presentation/views/night_prayers_view.dart';
import 'package:efraho/features/camp/presentation/views/party_view.dart';
import 'package:efraho/features/camp/presentation/views/praise_and_mass_view.dart';
import 'package:efraho/features/camp/presentation/views/savers_view.dart';
import 'package:efraho/features/camp/presentation/views/vibes_view.dart';
import 'package:efraho/features/camp/presentation/views/workshop_view.dart';
import 'package:efraho/features/contact/presentation/views/contact_view.dart';
import 'package:efraho/features/program/presentation/views/program_view.dart';
import 'package:efraho/features/slogan/presentation/views/slogan_view.dart';
import 'package:efraho/features/splash/views/splash_view.dart';
import 'package:efraho/features/teams/presentation/views/teams_view.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'core/services/shared_prefrences_singelton.dart';
import 'features/camp/presentation/views/stations_view.dart';
import 'features/carols/presentation/views/carol_view.dart';
import 'features/home/presentaion/views/home_view.dart';
import 'firebase_options.dart';
import 'generated/l10n.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Prefs.init();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
      Efraho()
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
        ProgramView.routeName:(context) => const ProgramView(),
        CompetitionView.routeName:(context) => const CompetitionView(),
        SloganView.routeName:(context) => const SloganView(),
        SaversView.routeName:(context) => const SaversView(),
        NightPrayersView.routeName:(context) => const NightPrayersView(),
        BibleStudyView.routeName:(context) => const BibleStudyView(),
        CarolView.routeName:(context) => const CarolView(),
        MediaAndRadioView.routeName:(context) => const MediaAndRadioView(),
        PraiseAndMassView.routeName:(context) => const PraiseAndMassView(),
        PartyView.routeName:(context) => const PartyView(),
        WorkshopView.routeName:(context) => const WorkshopView(),
         },
      home: SplashView(),
    );
  }
}
