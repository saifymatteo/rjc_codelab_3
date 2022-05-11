import 'package:flutter/material.dart';

import '../../constant/constant.dart';
import '../pages/list_page.dart';

class LandingSearchBar extends StatelessWidget {
  const LandingSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      padding: const EdgeInsets.fromLTRB(20, 5, 5, 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(50),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'Search hotel',
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => ListPage(),
                ),
              );
            },
            child: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: AppColor.mainThemeColor,
                borderRadius: BorderRadius.circular(25),
              ),
              child: const Icon(
                Icons.search_rounded,
                color: Colors.white,
                size: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}