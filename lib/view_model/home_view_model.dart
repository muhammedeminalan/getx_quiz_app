// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/model/question_model.dart';
import 'package:quiz_app/services/SQL/database_helper.dart';

class HomeViewModel extends GetxController {
  var currentQuestionIndex = 0.obs;

  var questions = <Question>[].obs;

  var correctCount = 0.obs;

  var wrongCount = 0.obs;

  var selectedOption = ''.obs;

  @override
  void onInit() {
    super.onInit();
    fetchAllQuestions();
  }

  void fetchAllQuestions() async {
    try {
      final allQuestions = await DatabaseHelper().getAllQuestions();

      questions.value = allQuestions;
    } catch (e) {
      print("hata: $e");
    }
  }

  void checkAnswer(String selected) {
    if (selectedOption.isNotEmpty) return;

    selectedOption.value = selected;

    final current = questions[currentQuestionIndex.value];

    if (selected == current.correctAnswer) {
      correctCount++;
    } else {
      wrongCount++;
    }
  }

  void goToNextQuestion() {
    if (currentQuestionIndex.value + 1 < questions.length) {
      currentQuestionIndex++;

      selectedOption.value = '';
    } else {
      Get.defaultDialog(
        title: "Test Bitti",

        content: Column(
          children: [
            Text("Doğru: ${correctCount.value}"),
            Text("Yanlış: ${wrongCount.value}"),

            ElevatedButton(
              onPressed: () {
                currentQuestionIndex.value = 0;
                correctCount.value = 0;
                wrongCount.value = 0;
                selectedOption.value = '';

                Get.back();
              },
              child: const Text("Tekrar Oyna"),
            ),
          ],
        ),
      );
    }
  }
}
