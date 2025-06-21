import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.orange,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 8, top: 16, bottom: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: const Text(
                "Flutter Tips",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                ),
              ),
              subtitle: Text(
                "Build Your Career with Mostafa Yousry",
                style: TextStyle(
                  color: Colors.black.withOpacity(0.4),
                  fontSize: 16,
                ),
              ),
              trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  FontAwesomeIcons.trash,
                  size: 24,
                  color: Colors.black,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 16),
              child: Text(
                "2 May, 2022",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
