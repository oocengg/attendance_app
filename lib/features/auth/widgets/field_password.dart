import 'package:flutter/material.dart';

class FieldPassword extends StatefulWidget {
  const FieldPassword({super.key});

  @override
  State<FieldPassword> createState() => _FieldPasswordState();
}

class _FieldPasswordState extends State<FieldPassword> {
  TextEditingController passController = TextEditingController();
  bool _passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Choose a password",
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
            fontWeight: FontWeight.bold
          )
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                  color: Colors.grey
              )
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: TextField(
              controller: passController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "min. 8 characters",
                hintStyle: const TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    _passwordVisible
                        ? Icons.visibility_off
                        : Icons.visibility,
                  ),
                  onPressed: () {
                    setState(() {
                      _passwordVisible = !_passwordVisible;
                    });
                  },
                ),
              ),
              obscureText: !_passwordVisible,
              style: const TextStyle(
                  fontSize: 22, color: Colors.black, height: 1.5),
              textInputAction: TextInputAction.next,
            ),
          ),
        ),
      ],
    );
  }
}
