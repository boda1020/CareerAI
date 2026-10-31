import 'app_exception.dart';
import 'failures.dart';

class ErrorHandler {
  static Failure handleException(dynamic exception) {
    if (exception is NetworkException) {
      return NetworkFailure(exception.message);
    } else if (exception is AuthException) {
      return AuthFailure(exception.message);
    }
    return ServerFailure();
  }
}
