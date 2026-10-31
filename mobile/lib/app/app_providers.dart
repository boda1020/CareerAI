import 'package:flutter_riverpod/flutter_riverpod.dart';

// Global providers that are used across the entire application
// Specific feature providers should stay in their respective feature folders.

final initializationProvider = FutureProvider<void>((ref) async {
  // Add initialization logic here (e.g., loading settings, checking auth state)
});
