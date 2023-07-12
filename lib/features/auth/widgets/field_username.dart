import 'package:flutter/material.dart';

class FieldUsername extends StatefulWidget {
  const FieldUsername({super.key});

  @override
  State<FieldUsername> createState() => _FieldUsernameState();
}

class _FieldUsernameState extends State<FieldUsername> {
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
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                  color: Colors.grey
              )
          ),
          child: const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "farrelakhdan",
                hintStyle: TextStyle(
                  fontSize: 15,
                  color: Colors.grey,
                ),
              ),
              style: TextStyle(
                  fontSize: 22, color: Colors.black, height: 1.5),
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
            ),
          ),
        ),
      ],
    );
  }
}
