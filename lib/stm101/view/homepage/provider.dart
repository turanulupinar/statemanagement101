import 'package:flutter_riverpod/flutter_riverpod.dart';

final welcomeProvider = Provider<String>((ref) {
  return "Hello World, this is state management";
});
