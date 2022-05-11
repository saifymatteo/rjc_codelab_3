import 'package:flutter/material.dart';
import 'package:rjc_codelab_3/constant/colors.dart';
import 'package:rjc_codelab_3/models/bottom_bar_model.dart';
import 'package:rjc_codelab_3/repositories/bottom_bar_repo.dart';

class BottomBarWidget extends StatefulWidget {
  const BottomBarWidget({Key? key}) : super(key: key);

  @override
  State<BottomBarWidget> createState() => _BottomBarWidgetState();
}

class _BottomBarWidgetState extends State<BottomBarWidget> {
  List<BottomBarModel> barItems = BottomBarRepo.barItemsList;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 20, 20, 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(barItems.length, (index) {
          BottomBarModel barItem = barItems[index];
          return GestureDetector(
            onTap: () {
              setState(() {
                for (BottomBarModel element in barItems) {
                  element.isSelected = barItem == element;
                }
              });
            },
            child: Column(
              children: [
                Icon(
                  barItem.icon,
                  color: barItem.isSelected!
                      ? AppColor.mainThemeColor
                      : Colors.grey,
                ),
                Text(
                  barItem.label!,
                  style: TextStyle(
                    color: barItem.isSelected!
                        ? AppColor.mainThemeColor
                        : Colors.grey,
                    fontSize: 11,
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
