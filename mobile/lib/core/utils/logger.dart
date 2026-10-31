class AppLogger {
  static void info(String message) => print('INFO: $message');
  static void error(String message, [dynamic error, StackTrace? stack]) => print('ERROR: $message');
}