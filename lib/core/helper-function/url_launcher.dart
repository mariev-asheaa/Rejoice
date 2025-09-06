import 'package:url_launcher/url_launcher.dart';

Future<void> openFacebook() async {

  final Uri fbAppUrl = Uri.parse("fb://facewebmodal/f?href=https://www.facebook.com/share/g/16yKq6GdUv/");

  final Uri fbWebUrl = Uri.parse("https://www.facebook.com/share/g/16yKq6GdUv/");

  try {
    if (!await launchUrl(fbAppUrl, mode: LaunchMode.externalApplication)) {
      await launchUrl(fbWebUrl, mode: LaunchMode.externalApplication);
    }
  } catch (e) {
    await launchUrl(fbWebUrl, mode: LaunchMode.externalApplication);
  }
}

Future<void> openWhatsApp() async {
  final Uri waAppUrl = Uri.parse("whatsapp://send?text=Check%20this%20out!%20https://whatsapp.com/channel/0029Vb4n6fV17EmpWQqKby3s");

  final Uri waWebUrl = Uri.parse("https://whatsapp.com/channel/0029Vb4n6fV17EmpWQqKby3s");

  try {
    if (!await launchUrl(waAppUrl, mode: LaunchMode.externalApplication)) {
      await launchUrl(waWebUrl, mode: LaunchMode.externalApplication);
    }
  } catch (e) {
    await launchUrl(waWebUrl, mode: LaunchMode.externalApplication);
  }
}
