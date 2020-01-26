 import 'package:clean_code_flutter/features/number_trivia/data/model/number_trivia_model.dart';
import 'package:clean_code_flutter/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
   final tNumberTriviaModel = NumberTriviaModel(number: 1, text: 'Trivia test');

   test('should be a subclass of NumberTrivia entity', () async {
     expect(tNumberTriviaModel, isA<NumberTrivia>());
   });

   group('fromJson',() {
     test('should return a valid model when the JSON number is an integer', () async {
       
     });
   });
 }