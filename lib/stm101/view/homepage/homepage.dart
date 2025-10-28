import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:statemanagement101/stm101/view/homepage/provider.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final welcome = ref.watch(welcomeProvider);
    return Scaffold(body: Center(child: Text(welcome)));
  }
}
