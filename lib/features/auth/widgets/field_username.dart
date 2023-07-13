import 'package:flutter/material.dart';

class FieldUsername extends StatefulWidget {
  final String? Function(String?)? validator;
  final TextEditingController controller;
  final bool? isError;

  const FieldUsername({
    super.key,
    required this.validator,
    required this.controller,
    this.isError = false
  });

  @override
  State<FieldUsername> createState() => _FieldUsernameState();
}

class _FieldUsernameState extends State<FieldUsername> {
  late final FocusNode _focusNode;
  late bool _isError = false;
  late bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {
        _isFocused = _focusNode.hasFocus;
      });
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Your Username",
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
              fontWeight: FontWeight.bold
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          controller: widget.controller,
          focusNode: _focusNode,
          decoration: InputDecoration(
            disabledBorder: Theme.of(context).inputDecorationTheme.disabledBorder,
            border: Theme.of(context).inputDecorationTheme.border,
            errorStyle: const TextStyle(
              color: Colors.red,
            ),
            errorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: _isError || widget.isError!
                    ? Colors.red
                    : Colors.grey,
              ),
              borderRadius: BorderRadius.circular(30),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: _isError || widget.isError!
                    ? Colors.red
                    : Colors.grey,
              ),
              borderRadius: BorderRadius.circular(30),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: _isError || widget.isError!
                    ? Colors.red
                    : Colors.grey,
              ),
              borderRadius: BorderRadius.circular(30),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: _isError || widget.isError! ? Colors.red : Colors.grey,
              ),
              borderRadius: BorderRadius.circular(30),
            ),
            hintText: "farrelakhdan",
            hintStyle: const TextStyle(
              fontSize: 15,
              color: Colors.grey,
            ),
            labelStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
              color: _isError || widget.isError!
                  ? Colors.red
                  : const Color(0xFF030712),
            ),
          ),
          style: const TextStyle(
              fontSize: 15, color: Colors.black),
          keyboardType: TextInputType.emailAddress,
          textInputAction: TextInputAction.next,
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
