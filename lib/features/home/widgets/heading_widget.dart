import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

class HeadingWidget extends StatelessWidget {
  const HeadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello',
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontWeight: FontWeight.normal,
                    ),
              ),
              Text(
                'Muh. Fauzi Ramadhan Nugraha',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo,
                    ),
              ),
            ],
          ),
        ),
        const SizedBox(
          width: 20,
        ),
        Container(
          width: 45,
          height: 45,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.indigo,
          ),
          child: const Icon(
            FluentIcons.person_20_filled,
            color: Colors.white,
            size: 30,
          ),
        ),
      ],
    );
  }
}
