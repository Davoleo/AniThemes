import 'package:anithemes/constants.dart';
import 'package:anithemes/controller/search_state_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchSection extends StatelessWidget {

  final SearchStateController searchStateController = Get.put(SearchStateController());

  SearchSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Column(children: [
            GetBuilder<SearchStateController>(builder: (controller) =>
                TextField(
                  enabled: searchStateController.currentContentChoice != AniContentCategory.EVERYTHING,
                  decoration: InputDecoration(
                      hintText: searchStateController.currentContentChoice == AniContentCategory.EVERYTHING ? "Not Implemented Yet" : "Search here...",
                      prefixIcon: Icon(Icons.search),
                      suffix: IconButton(
                          onPressed: () => searchStateController.textField.text = "",
                          icon: Icon(Icons.clear)
                      )
                  ),
                ),),
            GetBuilder<SearchStateController>(builder: (controller) =>
                DropdownButton<AniContentCategory>(
                  value: searchStateController.currentContentChoice,
                  onChanged: (selected) {
                    if (selected != null)
                      searchStateController.currentContentChoice = selected;
                  },
                  items: List<DropdownMenuItem<AniContentCategory>>.generate(4,
                    (index) {
                      AniContentCategory cat = AniContentCategory.values[index];
                      return DropdownMenuItem(
                      child: Text(cat.toString().substring(cat.toString().lastIndexOf(".") + 1)),
                      value: cat,
                    );
                    }
                  )
                ),
            )
          ],),
          GetBuilder<SearchStateController>(builder: (controller) =>
              Column(
                children: [
                  Text(searchStateController.currentContentChoice.toString().substring(searchStateController.currentContentChoice.toString().lastIndexOf(".") + 1) + " Search results"),
                ],
              )
          )
        ],
      ),
    );
  }
}
