import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';

import './../../../../../lib/features/number_trivia/data/model/number_trivia_model.dart';
import './../../../../../lib/features/number_trivia/domain/entities/number_trivia.dart';
import '../../../../fixtures/fixture_reader.dart';

void main() {
   final tNumberTriviaModel = NumberTriviaModel(number: 1, text: 'Teste model dart');

   test('should be a subclass of NumberTrivia entity', () async {
     expect(tNumberTriviaModel, isA<NumberTrivia>());
   });

   group('fromJson', () {
     test('should return a valid model when the JSON number is an integer', () async {
       // arrange
        final Map <String, dynamic> jsonMap = json.decode(fixture('trivia.json'));
       // act
        final result = NumberTriviaModel.fromJson(jsonMap);
       // assert
       expect(result, equals(tNumberTriviaModel));
     });

     test('should return a valid model when the JSON is regarded as double', () async {
       // arrange
        final Map <String, dynamic> jsonMap = json.decode(fixture('trivia_double.json'));
       // act
        final result = NumberTriviaModel.fromJson(jsonMap);
       // assert
       expect(result, equals(tNumberTriviaModel));
     });
   });

   group('toJson', () {

     test('should return a JSON map containing the proper data', () async {
       // act
       final result = tNumberTriviaModel.toJson();
       
       //assert
       final expectedMap = {
         "text": "Teste model dart",
         "number": 1,
       };

       expect(result, expectedMap);
     });
     
   });
 }