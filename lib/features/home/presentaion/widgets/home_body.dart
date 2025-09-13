import 'package:efraho/core/services/firestore_service.dart';
import 'package:efraho/core/utils/constants.dart';
import 'package:efraho/core/utils/custom_bar.dart';
import 'package:flutter/material.dart';
import 'package:efraho/generated/assets.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import '../../../../core/services/shared_prefrences_singelton.dart';
import 'category_gridview.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  final FireStoreService fireStoreService=FireStoreService();

  void _setOwnerStatus(bool value) {
    Prefs.setOwner(value);
    setState(() {});
  }

  void _showOwnerDialog() {
    final controller = TextEditingController();
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text("Enter secret Code"),
        content: TextField(controller: controller),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancel"),
          ),
          ElevatedButton(
            onPressed: () {
              const secretCode = "22mar";
              if (controller.text == secretCode) {
                _setOwnerStatus(true);
                Navigator.pop(context);
                showBar(context, 'Logged in as Owner', SnackBarType.success);
              } else {
                showBar(context, 'Invalid code', SnackBarType.error);
              }
            },
            child: const Text("Confirm"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height,
      width: MediaQuery.sizeOf(context).width,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Image.asset(Assets.imagesEfrahoLogo),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: ClipPath(
              clipper: WaveClipperTwo(reverse: true),
              child: Container(
                color: Colors.white,
                height: MediaQuery.sizeOf(context).height * .6,
                width: double.infinity,
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.sizeOf(context).height * .4,
            left: 0,
            right: 0,
            bottom: 0,
            child: CategoryGridview(),
          ),
          Positioned(
            top: 10,
            right: 20,
            child: Prefs.isOwner
                ? SizedBox.shrink()
                : ElevatedButton(
              onPressed: _showOwnerDialog,
              child: Text(
                "تسجيل دخول خادم",
                style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          // Positioned(
          //     bottom: 0,
          //     child: ElevatedButton(
          //   onPressed: () async {
          //     await fireStoreService.addConferenceData();
          //     ScaffoldMessenger.of(context).showSnackBar(
          //       const SnackBar(content: Text("تم رفع بيانات المؤتمر بنجاح")),
          //     );
          //   },
          //   child: const Text("رفع بيانات المؤتمر"),
          // )
          // )
        ],
      ),
    );
  }
}
