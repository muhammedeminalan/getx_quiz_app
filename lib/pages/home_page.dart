// view/home_page.dart

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quiz_app/core/extension/extension.dart';
import 'package:quiz_app/core/widget/costum_card_text.dart';
import 'package:quiz_app/core/widget/options_button.dart';
import 'package:quiz_app/view_model/home_view_model.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final HomeViewModel controller = Get.put(HomeViewModel());

  Color? _getOptionColor(String option) {
    if (controller.selectedOption.value.isEmpty) return null;

    final selected = controller.selectedOption.value;
    final correct =
        controller
            .questions[controller.currentQuestionIndex.value]
            .correctAnswer;
    final isWrong = selected != correct;

    if (option == correct) {
      return Colors.green;
    }
    if (isWrong && option == selected) {
      return Colors.red;
    }

    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("4 işlemli hesaplama")),
      body: Obx(() {
        if (controller.questions.isEmpty) {
          return const Center(child: CircularProgressIndicator());
        }

        final question =
            controller.questions[controller.currentQuestionIndex.value];

        return Padding(
          padding: context.p24,
          child: Column(
            children: [
              Row(
                children: [
                  CostumCardText(
                    text: "Doğru : ${controller.correctCount.value}",
                    bgColor: context.green,
                  ),
                  CostumCardText(
                    text: "Yanlış : ${controller.wrongCount.value}",
                    bgColor: context.red,
                  ),
                ],
              ),
              const Divider(height: 32),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  question.questionText,
                  style:
                      context.textTheme.titleLarge ??
                      const TextStyle(fontSize: 22),
                ),
              ),
              const SizedBox(height: 24),
              OptionsButton(
                options: "A",
                reply: question.optionA,
                onTap: () => controller.checkAnswer("A"),
                bgColor: _getOptionColor("A"),
              ),
              context.h12,
              OptionsButton(
                options: "B",
                reply: question.optionB,
                onTap: () => controller.checkAnswer("B"),
                bgColor: _getOptionColor("B"),
              ),
              context.h12,
              OptionsButton(
                options: "C",
                reply: question.optionC,
                onTap: () => controller.checkAnswer("C"),
                bgColor: _getOptionColor("C"),
              ),
              context.h12,
              OptionsButton(
                options: "D",
                reply: question.optionD,
                onTap: () => controller.checkAnswer("D"),
                bgColor: _getOptionColor("D"),
              ),
            ],
          ),
        );
      }),
      bottomNavigationBar: Padding(
        padding: context.p32,
        child: Obx(() {
          final isAnswered = controller.selectedOption.isNotEmpty;
          return Row(
            children: [
              const Spacer(),
              GestureDetector(
                onTap: isAnswered ? () => controller.goToNextQuestion() : null,
                child: Icon(
                  Icons.play_circle_filled_rounded,
                  color: isAnswered ? context.blue : context.gray,
                  size: 50,
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
