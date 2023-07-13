import 'package:flutter/material.dart';

class LoginButton extends StatefulWidget {
  final VoidCallback onPressed;
  const LoginButton({
    super.key,
    required this.onPressed
  });

  @override
  State<LoginButton> createState() => _LoginButtonState();
}

class _LoginButtonState extends State<LoginButton> {
  bool isHover = true;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TextButton(
        onPressed: widget.onPressed,
        style: ButtonStyle(
          padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(15.0)),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0))),
          elevation: MaterialStateProperty.all<double>(5.0),
          backgroundColor: MaterialStateProperty.all<Color>(isHover? const Color(0xffA1F381) : Colors.grey.withOpacity(0.3)),

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
