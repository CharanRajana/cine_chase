import 'package:cinechase/src/domain/supabase_repository/supabase_auth_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.watch(supabaseAuthProvider);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Profile ID: ',
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              onPressed: () {
                auth.signOut();
                Navigator.of(
                  context,
                  rootNavigator: true,
                ).pop();
              },
              child: const Text('Sign Out'),
            ),
          ],
        ),
      ),
    );
  }
}
