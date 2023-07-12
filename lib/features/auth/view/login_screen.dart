import 'package:attendance_app/features/auth/widgets/btn_login.dart';
import 'package:attendance_app/features/auth/widgets/field_password.dart';
import 'package:attendance_app/features/auth/widgets/field_username.dart';
import 'package:flutter/material.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.energy_savings_leaf_outlined,
                      color: Colors.green,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Attendance",
                      style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                        fontWeight: FontWeight.bold
                      )
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Work without limits",
                  style: Theme.of(context).textTheme.titleSmall
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FieldUsername(),
                  SizedBox(
                    height: 30,
                  ),
                  FieldPassword(),
                  SizedBox(
                    height: 30,
                  ),
                  LoginButton()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
