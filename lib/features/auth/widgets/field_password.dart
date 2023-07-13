import 'package:flutter/material.dart';

class FieldPassword extends StatefulWidget {
  final String? Function(String?)? validator;
  final TextEditingController passController;
  final bool? obscureText;
  final bool? isError;
  const FieldPassword(
      {super.key,
      required this.validator,
      required this.passController,
      this.obscureText = false,
      this.isError = false});

  @override
  State<FieldPassword> createState() => _FieldPasswordState();
}

class _FieldPasswordState extends State<FieldPassword> {
  late bool _isError = false;
  bool _passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Your Password",
            style: Theme.of(context)
                .textTheme
                .titleSmall!
                .copyWith(fontWeight: FontWeight.bold)),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          controller: widget.passController,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(20),
            border: Theme.of(context).inputDecorationTheme.border,
            errorStyle: const TextStyle(
              color: Colors.red,
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: _isError || widget.isError! ? Colors.red : Colors.grey,
              ),
              borderRadius: BorderRadius.circular(30),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: _isError || widget.isError! ? Colors.red : Colors.grey,
              ),
              borderRadius: BorderRadius.circular(30),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: _isError || widget.isError! ? Colors.red : Colors.grey,
              ),
              borderRadius: BorderRadius.circular(30),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: _isError || widget.isError! ? Colors.red : Colors.grey,
              ),
              borderRadius: BorderRadius.circular(30),
            ),
            hintText: "min. 8 characters",
            hintStyle: const TextStyle(
              fontSize: 15,
              color: Colors.grey,
            ),
            labelStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
                  color: _isError || widget.isError!
                      ? Colors.red
                      : const Color(0xFF030712),
                ),
            suffixIcon: IconButton(
              icon: Icon(
                _passwordVisible ? Icons.visibility_off : Icons.visibility,
              ),
              onPressed: () {
                setState(() {
                  _passwordVisible = !_passwordVisible;
                });
              },
            ),
          ),
          obscureText: !_passwordVisible,
          style: const TextStyle(fontSize: 15, color: Colors.black),
          textInputAction: TextInputAction.done,
          validator: widget.validator != null
              ? (value) {
                  setState(() {
                    _isError = widget.validator!(value) != null;
                  });
                  return widget.validator!(value);
                }
              : null,
        ),
      ],
    );
  }
}
