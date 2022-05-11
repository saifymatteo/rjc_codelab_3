import 'package:flutter/material.dart';
import 'package:rjc_codelab_3/models/attraction_model.dart';
import 'package:rjc_codelab_3/repositories/attraction_repo.dart';

import '../../constant/constant.dart';
import '../components/attraction_card.dart';
import '../components/bottom_bar_widget.dart';

class ListPage extends StatelessWidget {
  ListPage({Key? key}) : super(key: key);

  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final list = AttractionRepo.attractionsList;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
        title: const Center(child: Icon(AppIcon.mainIcon)),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 15),
            child: const Icon(Icons.notifications),
          ),
        ],
      ),
      backgroundColor: AppColor.mainThemeColor,
      body: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
        child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: ListView.builder(
                  controller: scrollController,
                  itemCount: list.length,
                  itemBuilder: (_, index) {
                    AttractionModel currItem = list[index];
                    return AttractionCard(item: currItem);
                  },
                ),
              ),
              const BottomBarWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
