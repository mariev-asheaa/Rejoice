import 'package:efraho/features/home/presentaion/widgets/home_body.dart';
import 'package:flutter/material.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});
static const routeName='home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body: SafeArea(child: HomeBody()),
      // bottomNavigationBar: const ButtonNavBar(),
    );
  }
}
