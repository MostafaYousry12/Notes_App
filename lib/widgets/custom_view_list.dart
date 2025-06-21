import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_card.dart';

class CustomViewList extends StatelessWidget {
  const CustomViewList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: ListView.builder(
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return const Padding(
              padding: EdgeInsets.symmetric(vertical: 6),
              child: CustomCard(),
            );
          }),
    );
  }
}
