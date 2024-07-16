import 'package:equatable/equatable.dart';

///[Failure] is a model class which extends [Equatable].
///It contains the properties of a failure.
///It is used to handle the failure in the application.
class Failure extends Equatable {
  final String message;

  const Failure({required this.message});

  @override
  List<Object?> get props => [message];
}
