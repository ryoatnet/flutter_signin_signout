import 'package:flutter/material.dart';
import 'package:flutter_signin_signout/providers/sign_out_process_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final process = ref.watch(signOutProcessProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            await ref.read(signOutProcessProvider.notifier).signOut();
          },
          child: switch (process.isLoading) {
            true => const CircularProgressIndicator(),
            false => const Text('Sign Out'),
          },
        ),
      ),
    );
  }
}
