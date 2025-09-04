import 'package:efraho/core/back_icon.dart';
import 'package:efraho/features/contact/presentation/widgets/contact_body.dart';
import 'package:flutter/material.dart';

class ContactView extends StatelessWidget {
  const ContactView({super.key});
static const routName='contact';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: BackIcon()),
      body: SafeArea(child: ContactBody()),
    );
  }
}
