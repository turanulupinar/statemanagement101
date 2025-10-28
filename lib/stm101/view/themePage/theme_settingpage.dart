import 'package:flutter/material.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:statemanagement101/stm101/view/themePage/theme_provider.dart';

class ThemeSettingPage extends ConsumerWidget {
  const ThemeSettingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    bool isdark = ref.watch(themeProvider);
    return Scaffold(
      appBar: AppBar(title: Text("Theme Ayarları")),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Dark Mode"),
            Switch(
              value: isdark,
              onChanged: (val) {
                ref.read(themeProvider.notifier).state = val;
              },
            ),
          ],
        ),
      ),
    );
  }
}

