import 'package:flutter/material.dart';
import '../../../../core/utils/Constants.dart';

class DaysSegments extends StatelessWidget {
  const DaysSegments({super.key, required this.index});
final int index;
  @override
  Widget build(BuildContext context) {
    final List<List<String>> program = [
      [
        "وصول و تسكين",
        "الغداء",
        "حمام السباحة",
        "صلاة غروب و نوم",
        "محاضرة",
        "درس كتاب",
        "عشاء",
        "أمسية طقسية + اجتماع صلاة",
      ],
      [
        "قداس",
        "فطار",
        "درس كتاب",
        "محاضرة",
        "الغداء",
        "Stations",
        "حمام سباحة",
        "صلاة غروب و نوم",
        "محاضرة",
        "تسبحة",
        "قداس",
        "العشاء",
      ],
      [
        "فطار",
        "درس كتاب",
        "محاضرة",
        "غداء",
        "Stations",
        "حمام سباحة",
        "صلاة غروب و نوم",
        "محاضرة",
        "عشاء",
        "حفلة السمر",
      ],
    ];

    return SizedBox(
      height: MediaQuery.sizeOf(context).height*.8,
      child: ListView.separated(
        padding: const EdgeInsets.all(16),
        itemCount: program[index].length,
        itemBuilder: (context, i) {
          return ListTile(
            leading: Icon(Icons.access_time, color: kPrimaryColor),
            title: Text(
              program[index][i],
              style: const TextStyle(fontSize: 18),
            ),
          );
        },
        separatorBuilder: (context, index) => const Divider(),
      ),
    );
  }
}
