import 'package:flutter/material.dart';
import '../../../../core/services/token_storage_service.dart';
import '../../../../injection_container.dart';
import '../../../navigation/presentation/pages/main_navigation_page.dart';
import 'account_type_selection_page.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    _checkLoginState();
  }

  Future<void> _checkLoginState() async {
    // Artificial delay to show splash screen (optional)
    await Future.delayed(const Duration(seconds: 1));

    try {
      final tokenStorage = sl<TokenStorageService>();
      final isLoggedIn = await tokenStorage.isLoggedIn();

      if (!mounted) return;

      if (isLoggedIn) {
        // Here you might want to differentiate between teacher and student
        // based on tokenStorage.getUserType() if the UI should be different.
        // For now, both go to MainNavigationPage as per current implementation.
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const MainNavigationPage()),
        );
      } else {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const AccountTypeSelectionPage()),
        );
      }
    } catch (e) {
      if (!mounted) return;
      // Fallback to account selection on error
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const AccountTypeSelectionPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // App Logo or Icon
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                color: const Color(0xFF2196F3).withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.school_rounded,
                size: 60,
                color: Color(0xFF2196F3),
              ),
            ),
            const SizedBox(height: 24),
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
