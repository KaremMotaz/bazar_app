part of 'register_cubit.dart';

abstract class RegisterState extends Equatable {
  const RegisterState();

  @override
  List<Object?> get props => [];
}

/// Initial
class RegisterInitial extends RegisterState {}

/// Loading
class RegisterLoading extends RegisterState {}

/// Success
class RegisterSuccess extends RegisterState {
  final RegisterResponse registerResponse;

  const RegisterSuccess(this.registerResponse);

  @override
  List<Object?> get props => [RegisterResponse];
}

/// Error
class RegisterError extends RegisterState {
  final String message;

  const RegisterError(this.message);

  @override
  List<Object?> get props => [message];
}
