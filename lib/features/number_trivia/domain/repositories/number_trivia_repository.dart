import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/number_trivia.dart';

/*
 * @@ About FP in DART
 * 
 * The dartz package, which we've added as a dependency, brings functional programming (FP) 
 * to Dart. I won't pretend that I'm some FP pro, at least not yet. You don't need to know 
 * a lot of things either. All we're interested in for the purposes of better error handling 
 * is the Either<L, R> type.
 * 
 * This type can be used to represent any two types at the same time and it's just perfect 
 * for error handling, where L is the Failure and R is the NumberTrivia. This way, the Failures 
 * don't have their own special "error flow" like exceptions do. They will get handled as any
 * other data without using try/catch. Let's leave the details of how to work with Either for
 * when we need it in the next parts of this course.
 */

abstract class NumberTriviaRepository {
  Future<Either<Failure, NumberTrivia>> getConcreteNumberTrivia(int number);
  Future<Either<Failure, NumberTrivia>> getRandomNumberTrivia();
}
