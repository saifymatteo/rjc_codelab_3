import 'package:flutter/material.dart';
import 'package:rjc_codelab_3/models/bottom_bar_model.dart';

class BottomBarRepo {
  static List<BottomBarModel> barItemsList = [
    BottomBarModel(label: 'Home', isSelected: true, icon: Icons.home),
    BottomBarModel(label: 'Account', isSelected: false, icon: Icons.person),
    BottomBarModel(
        label: 'Bookings', isSelected: false, icon: Icons.pending_actions),
    BottomBarModel(label: 'Payments', isSelected: false, icon: Icons.payments),
    BottomBarModel(label: 'More', isSelected: false, icon: Icons.more_horiz),
  ];
}
