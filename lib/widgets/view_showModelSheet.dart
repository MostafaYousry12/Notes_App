import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/widgets/custom_buttom.dart';
import 'package:notes_app/widgets/custom_text_field.dart';
import 'package:notes_app/widgets/view_showModelSheet.dart';

class CustomShowModelSheet extends StatelessWidget {
  const CustomShowModelSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      child: SingleChildScrollView(
        child: Container(
          child: const Column(
            children: [
              CustomTextField(
                hint: "Title",
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextField(
                hint: "Content",
                maxLines: 5,
              ),
              SizedBox(
                height: 55,
              ),
              CustomButtom(),
            ],
          ),
        ),
      ),
    );
  }
}
