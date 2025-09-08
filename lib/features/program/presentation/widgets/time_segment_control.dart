import 'package:efraho/features/program/presentation/widgets/days_segments.dart';
import 'package:flutter/material.dart';
import '../../../../core/utils/Constants.dart';

class TimeSegmentedControl extends StatefulWidget {
  const TimeSegmentedControl({super.key});

  @override
  State<TimeSegmentedControl> createState() => _TimeSegmentedControlState();
}

class _TimeSegmentedControlState extends State<TimeSegmentedControl> {
  int selectedIndex = 0;

  final List<String> labels = ["اليوم الاول", "اليوم الثانى", "اليوم الثالث"];
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: const Color(0xFFF2F2F2),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            children: List.generate(labels.length, (index) {
              final isSelected = index == selectedIndex;
              return Expanded(
                child: GestureDetector(
                  onTap: () => setState(() => selectedIndex = index),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      color: isSelected ? kPrimaryColor : Colors.transparent,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        labels[index],
                        style: TextStyle(
                          color: isSelected ? Colors.white : const Color(0xFFADA4A5),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
        DaysSegments(index: selectedIndex),
      ],
    );
  }
}
