class QuizBrain {
  final String suroo;
  final bool joop;

  QuizBrain({required this.suroo, required this.joop});
}

QuizBrain q1 = QuizBrain(
    suroo: 'Dart-Google компаниясы тарабынан иштелип чыккан', joop: true);
QuizBrain q2 =
    QuizBrain(suroo: 'Flutter мобилдик колдонмону иштеп чыгат', joop: true);
QuizBrain q3 = QuizBrain(
    suroo: 'Android жана IOS платформалары Flutterде тиркемесинде жасалбайт',
    joop: false);
QuizBrain q4 = QuizBrain(suroo: 'Кыргызстанда 7 область бар', joop: true);
QuizBrain q5 =
    QuizBrain(suroo: 'Кыргызстанда самалет чыгаруучу завод бар', joop: false);
QuizBrain q6 = QuizBrain(suroo: 'Жер шаары тоголок', joop: true);
QuizBrain q7 = QuizBrain(suroo: 'Телефондо программа жаза алабыз', joop: false);
QuizBrain q8 = QuizBrain(suroo: 'Адам озу асманга уча алат', joop: false);
QuizBrain q9 = QuizBrain(suroo: 'Кыргыз эли коп улуттуу олко', joop: true);
QuizBrain q10 =
    QuizBrain(suroo: 'Компьютер програмистин негизги куралы', joop: true);

final quizList = [q1, q2, q3, q4, q5, q6, q7, q8, q9, q10];
