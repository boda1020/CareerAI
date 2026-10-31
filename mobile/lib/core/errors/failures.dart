abstract class Failure {
  final String message;
  Failure(this.message);
}

class ServerFailure extends Failure {
  ServerFailure([String message = 'Server Error']) : super(message);
}

class NetworkFailure extends Failure {
  NetworkFailure([String message = 'No Internet Connection']) : super(message);
}

class AuthFailure extends Failure {
  AuthFailure(String message) : super(message);
}
