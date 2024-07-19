import 'package:nav_splash_bloc/presentation/custom_widgets/day_date_widget.dart';
import 'package:nav_splash_bloc/presentation/custom_widgets/tri_circle_widget.dart';
import 'package:nav_splash_bloc/presentation/custom_widgets/app_bar.dart';
import 'package:nav_splash_bloc/utils/app_colors.dart';
import 'package:flutter/material.dart';

class HealthScreen extends StatelessWidget {
  const HealthScreen({super.key});

  @override
  Widget build(BuildContext context) {

    String getDayOfWeek(DateTime date) {
      List<String> daysOfWeek = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'];

      int dayIndex = date.weekday - 1;

      return daysOfWeek[dayIndex];
    }

    List<String> generateDateList() {
      List<String> dateList = [];

      // Start from 10 days ago (adjust as needed)
      DateTime startDate = DateTime.now().subtract(const Duration(days: 10));
      DateTime currentDate = DateTime.now();

      // Generate dates from startDate to currentDate
      for (var i = startDate; i.isBefore(currentDate); i = i.add(const Duration(days: 1))) {
        // String formattedDate = DateFormat('dd/MM/yyyy').format(i);
        dateList.add(getDayOfWeek(i));
        // dateList.add(formattedDate);
      }

      // // Add currentDate
      // String formattedCurrentDate = DateFormat('dd/MM/yyyy').format(currentDate);
      // dateList.add(formattedCurrentDate);

      return dateList;
    }
    List<String> dayArray = generateDateList();

    return Scaffold(
      backgroundColor: AppColors.scaffoldBgColor,
      appBar: customAppBar(context: context),
      body: Column(
        children: [
          const SizedBox(height: 10),
          SizedBox(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return DayWithTriCircularWidget(
                  eventOnePercentage: 25,
                  eventTwoCircleOnePercentage: 37,
                  eventTwoCircleTwoPercentage: 46,
                  eventThreeCircleOnePercentage: 59,
                  eventThreeCircleTwoPercentage: 63,
                  eventThreeCircleThreePercentage: 70,
                  day: dayArray[index],
                  enableLoadingAnimation: true,
                );
              },
              itemCount: dayArray.length,
            ),
          ),
          const TriCircleWidget(
            eventOnePercentage: 25,
            eventTwoCircleOnePercentage: 37,
            eventTwoCircleTwoPercentage: 46,
            eventThreeCircleOnePercentage: 59,
            eventThreeCircleTwoPercentage: 63,
            eventThreeCircleThreePercentage: 70,
            eventOneTitle: "Sleep",
            eventTwoTitle: "Activity",
            eventThreeTitle: "Food",
          ),
        ],
      ),
    );
  }
}
