import 'package:flutter_test/flutter_test.dart';

import 'package:exercicios/main.dart';
import 'package:exercicios/question.dart';

void main() {
  int _questionNumber = 0;
  const index = 0;

  int totalCorrect = 0;
  int totalQuestions = 0;

  List<Question> _questions = [
    Question('Brasilia is the capital of Brazil', true),
    Question('The Indian Ocean is the third largest ocean in the world', true),
    Question('The city of Utrecht is in Holland', false),
    Question('There are more countries in Africa than Asia', true),
    Question('Seattle is more northerly than New York', true),
  ];

  int questionsLength() {
    return _questions.length;
  }

  bool isFinshed() {
    if (_questionNumber >= _questions.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  test("Teste do tamanho da quantidade de questões", () {
    expect(questionsLength(), 5);
  });

  test("Teste de conclusão", () {
    expect(isFinshed(), false);
  });

  test("Teste de acertos perfeitos", () {
    expect(totalCorrect, 5);
  });
}
