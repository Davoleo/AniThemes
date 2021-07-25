import 'package:anithemes/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchStateController extends GetxController {

  AniContentCategory _currentContentChoice = AniContentCategory.ANIME;
  late final TextEditingController textField;

  SearchStateController() {
    textField = TextEditingController();
  }

  AniContentCategory get currentContentChoice => _currentContentChoice;

  set currentContentChoice(AniContentCategory value) {
    _currentContentChoice = value;
    update();
  }
}