import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/services/device_info_service.dart';
import '../../../../injection_container.dart';
import '../../../navigation/presentation/pages/main_navigation_page.dart';
import '../../presentation/bloc/teacher_login/teacher_login_bloc.dart';
import '../../presentation/bloc/teacher_login/teacher_login_event.dart';
import '../../presentation/bloc/teacher_login/teacher_login_state.dart';
import '../widgets/auth_button.dart';
import '../widgets/auth_text_field.dart';

class TeacherLoginPage extends StatelessWidget {
  const TeacherLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => sl<TeacherLoginBloc>(),
      child: const _TeacherLoginView(),
    );
  }
}

class _TeacherLoginView extends StatefulWidget {
  const _TeacherLoginView();

  @override
  State<_TeacherLoginView> createState() => _TeacherLoginViewState();
}

class _TeacherLoginViewState extends State<_TeacherLoginView> {
  final TextEditingController _pinController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _pinController.dispose();
    super.dispose();
  }

  Future<void> _handleLogin() async {
    if (_formKey.currentState?.validate() ?? false) {
      final deviceInfo = await sl<DeviceInfoService>().getDeviceInfo();

      context.read<TeacherLoginBloc>().add(
        TeacherLoginSubmitted(
          pin: _pinController.text.trim(),
          deviceInfo: deviceInfo,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: BlocConsumer<TeacherLoginBloc, TeacherLoginState>(
          listener: (context, state) {
            if (state is TeacherLoginSuccess) {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (_) => const MainNavigationPage()),
              );
            } else if (state is TeacherLoginError) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.message),
                  backgroundColor: Colors.red,
                ),
              );
            }
          },
          builder: (context, state) {
            final isLoading = state is TeacherLoginLoading;

            return SingleChildScrollView(
              padding: const EdgeInsets.all(24.0),
              child: Form(
                key: _formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 40),
                    const _WelcomeHeader(),
                    const SizedBox(height: 48),
                    if (state is TeacherLoginError) ...[
                      _ErrorMessage(message: state.message),
                      const SizedBox(height: 16),
                    ],
                    AuthTextField(
                      controller: _pinController,
                      label: 'رمز PIN',
                      hint: 'أدخل رمز PIN الخاص بك',
                      prefixIcon: Icons.pin_outlined,
                      keyboardType: TextInputType.number,
                      enabled: !isLoading,
                      validator: _validatePin,
                    ),
                    const SizedBox(height: 32),
                    AuthButton(
                      text: isLoading ? 'جاري تسجيل الدخول...' : 'تسجيل الدخول',
                      onPressed: _handleLogin,
                      isLoading: isLoading,
                    ),
                    const SizedBox(height: 24),
                    _BackButton(isLoading: isLoading),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  String? _validatePin(String? value) {
    if (value == null || value.isEmpty) {
      return 'رمز PIN مطلوب';
    }
    if (value.length < 4) {
      return 'رمز PIN يجب أن يكون 4 أرقام على الأقل';
    }
    return null;
  }
}

class _WelcomeHeader extends StatelessWidget {
  const _WelcomeHeader();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            color: const Color(0xFF2196F3).withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: const Icon(Icons.school, size: 40, color: Color(0xFF2196F3)),
        ),
        const SizedBox(height: 24),
        const Text(
          'تسجيل دخول المعلم',
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold,
            color: Colors.black87,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          'أدخل رمز PIN الخاص بك للمتابعة',
          style: TextStyle(fontSize: 16, color: Colors.grey[600]),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

class _ErrorMessage extends StatelessWidget {
  final String message;

  const _ErrorMessage({required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.red.shade50,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.red.shade200),
      ),
      child: Row(
        children: [
          Icon(Icons.error_outline, color: Colors.red.shade700, size: 20),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              message,
              style: TextStyle(color: Colors.red.shade700, fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}

class _BackButton extends StatelessWidget {
  final bool isLoading;

  const _BackButton({required this.isLoading});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: isLoading ? null : () => Navigator.of(context).pop(),
      icon: const Icon(Icons.arrow_back),
      label: const Text('العودة'),
      style: TextButton.styleFrom(foregroundColor: const Color(0xFF2196F3)),
    );
  }
}
