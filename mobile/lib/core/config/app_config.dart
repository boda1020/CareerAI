import 'environment.dart';

class AppConfig {
  final String appName;
  final String baseUrl;
  final Environment environment;

  AppConfig({
    required this.appName,
    required this.baseUrl,
    required this.environment,
  });

  static AppConfig get development => AppConfig(
        appName: 'CareerAI Dev',
        baseUrl: 'http://localhost:8000/api/v1',
        environment: Environment.development,
      );

  static AppConfig get production => AppConfig(
        appName: 'CareerAI',
        baseUrl: 'https://api.careerai.com/api/v1',
        environment: Environment.production,
      );
}
