class Question {
  final int? id;
  final String questionText;
  final String optionA;
  final String optionB;
  final String optionC;
  final String optionD;
  final String correctAnswer; 

  Question({
    this.id,
    required this.questionText,
    required this.optionA,
    required this.optionB,
    required this.optionC,
    required this.optionD,
    required this.correctAnswer,
  });

  factory Question.fromMap(Map<String, dynamic> map) {
    return Question(
      id: map['id'],
      questionText: map['question'],
      optionA: map['optionA'],
      optionB: map['optionB'],
      optionC: map['optionC'],
      optionD: map['optionD'],
      correctAnswer: map['correct_answer'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'question': questionText,
      'optionA': optionA,
      'optionB': optionB,
      'optionC': optionC,
      'optionD': optionD,
      'correct_answer': correctAnswer,
    };
  }
}