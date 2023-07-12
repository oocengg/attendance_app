import 'package:attendance_app/features/logbook/view/logbook_form_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatefulWidget {
  const LoginButton({super.key});

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        onPressed: () {
          Navigator.of(context).push(
              CupertinoPageRoute(builder: (BuildContext context) => const LogbookFormScreen())
          );
        },
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(15.0)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0))),
          elevation: MaterialStateProperty.all<double>(5.0),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.grey.withOpacity(0.2)),
        ),
        child: Text(
          'Continue',
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
            fontWeight: FontWeight.bold,
            color: Colors.grey
          )
        ),
      ),
    );
  }
}
