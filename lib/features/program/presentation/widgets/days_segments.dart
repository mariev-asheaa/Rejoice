import 'package:flutter/material.dart';
import '../../../../core/utils/Constants.dart';

class DaysSegments extends StatelessWidget {
  const DaysSegments({super.key, required this.index});
final int index;
  @override
  Widget build(BuildContext context) {
    final List<List<Map<String, String>>> program = [
      // Day 1
      [
        {"title": "وصول و تسكين", "time": "٢:٨"},
        {"title": "الغداء", "time": "٤:٣"},
        {"title": "حمام السباحة", "time": "٥.٣٠:٤"},
        {"title": "صلاة غروب و نوم", "time": "٧:٦.٣٠"},
        {"title": "محاضرة", "time": "٨:٧"},
        {"title": "ورشة دفاعات", "time": "٩.٣٠:٨.٣٠"},
        {"title": "عشاء", "time": "١٠:٩.٣٠"},
        {"title": "أمسية طقسية + اجتماع صلاة", "time": "١١.٣٠:١٠"},
      ],

      // Day 2
      [
        {"title": "قداس", "time": "٩:٧"},
        {"title": "فطار", "time": "١٠.٣٠:٩.٣٠"},
        {"title": "ترانيم", "time": "١١:١٠.٣٠"},
        {"title": "درس كتاب", "time": "١٢:١١"},
        {"title": "محاضرة", "time": "٢:١٢.٣٠"},
        {"title": "الغداء", "time": "٣:٢"},
        {"title": "Stations", "time": "٥:٣"},
        {"title": "حمام سباحة", "time": "٦:٥"},
        {"title": "ترانيم وصلاة غروب و نوم", "time": "٨:٧"},
        {"title": "محاضرة", "time": "٩.٣٠:٨"},
        {"title": "تسبحة", "time": "١١.٣٠:١٠.٣٠"},
        {"title": "قداس", "time": "٢:١٢"},
        {"title": "العشاء", "time": "٢.٣٠:٢"},
      ],

      // Day 3
      [
        {"title": "فطار", "time": "١٠.٣٠:٩.٣٠"},
        {"title": "ترانيم", "time": "١١:١٠.٣٠"},
        {"title": "درس كتاب", "time": "١٢:١١"},
        {"title": "محاضرة", "time": "١:١٢"},
        {"title": "غداء", "time": "٣:٢"},
        {"title": "Stations", "time": "٥:٣"},
        {"title": "حمام سباحة", "time": "٦:٥"},
        {"title": "ترانيم و صلاة غروب و نوم", "time": "٧.٣٠:٧"},
        {"title": "محاضرة", "time": "٨.٣٠:٧.٣٠"},
        {"title": "Workshop", "time": "١٠.٣٠:٩"},
        {"title": "عشاء", "time": "١١.٣٠:١٠.٣٠"},
        {"title": "حفلة السمر", "time": "٢:١٢"},
      ],
    ];

    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .8,
      child: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: program[index].length,

        itemBuilder: (context, i) {
          return ListTile(
            leading: Icon(Icons.access_time, color: kPrimaryColor),
            title: Text(
              program[index][i]["title"] ?? "",
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              program[index][i]["time"] ?? "",
              style: const TextStyle(fontSize: 18),
            ),
          );
        },
        separatorBuilder: (context, index) => const Divider(),
      ),
    );

  }
}
