import 'package:attendance_app/features/auth/widgets/btn_login.dart';
import 'package:attendance_app/features/auth/widgets/field_password.dart';
import 'package:attendance_app/features/auth/widgets/field_username.dart';
import 'package:attendance_app/features/dashboard/provider/dashboard_provider.dart';
import 'package:attendance_app/features/dashboard/view/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/login_provider.dart';
import '../provider/shared_preferences_provider.dart';
import '../provider/validator_auth_provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool visible = false;
  SnackBar customSnackBar({
    required String text,
  }) {
    return SnackBar(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      content: Text(
        text,
        style: const TextStyle(color: Colors.red),
      ),
      backgroundColor: Colors.red.shade100,
      behavior: SnackBarBehavior.floating,
    );
  }

  void _login(BuildContext context) async {
    final provider = Provider.of<LoginProvider>(context, listen: false);
    final String email = provider.usernameController.text.trim();
    final String password = provider.passwordController.text.trim();

    if (provider.formKey.currentState!.validate()) {
      provider.setIsError(false);
      // Proses login jika validasi sukses
      try {
        provider.setIsVisible(true);
        await Future.delayed(const Duration(seconds: 1));
        if (context.mounted) {
          await Provider.of<SharedPreferencesProvider>(context, listen: false)
              .login(email: email, password: password);
          provider.controllerClear();
          provider.setIsError(false);
          Navigator.of(context).pushReplacement(
            MaterialPageRoute(
              builder: (BuildContext context) => const DashboardScreen(),
            ),
          );
        }
      } catch (e) {
        provider.setIsVisible(false);
        provider.setIsError(true);
        if (e.toString() == 'Exception: Email atau kata sandi salah.') {
          ScaffoldMessenger.of(context).showSnackBar(
            customSnackBar(text: 'Email atau kata sandi salah.'),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(
            customSnackBar(text: 'Terjadi kesalahan saat login.'),
          );
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final validatorProvider =
        Provider.of<ValidatorProvider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            margin:
                EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.energy_savings_leaf_outlined,
                          color: Colors.indigo,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text("Attendance",
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(fontWeight: FontWeight.bold)),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text("Work without limits",
                        style: Theme.of(context).textTheme.titleSmall),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Consumer<LoginProvider>(builder: (context, login, _) {
                    return Form(
                      key: login.formKey,
                      child: Column(
                        children: [
                          FieldUsername(
                            validator: (value) =>
                                validatorProvider.validateUsername(value),
                            controller: login.usernameController,
                            isError: login.isError,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          FieldPassword(
                            validator: (value) =>
                                validatorProvider.validatePassword(value),
                            passController: login.passwordController,
                            isError: login.isError,
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          login.visibled == false
                              ? LoginButton(
                                  onPressed: () => _login(context),
                                )
                              : const Center(
                                  child: CircularProgressIndicator(
                                    color: Colors.indigo,
                                  ),
                                )
                        ],
                      ),
                    );
                  }),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
