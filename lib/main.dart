import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:statemanagement101/stm101/view/themePage/theme_provider.dart';

import 'package:statemanagement101/stm101/view/themePage/theme_settingpage.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool isDark = ref.watch(themeProvider);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: isDark == true
          ? ThemeData.dark()
          : ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            ),
      home: ThemeSettingPage(),
    );
  }
}
