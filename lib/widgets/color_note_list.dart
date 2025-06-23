import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/cubit/add_note_cubit/add_note_cubit.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.colors});
  final bool isActive;
  final Color colors;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            backgroundColor: Colors.white,
            radius: 38,
            child: CircleAvatar(
              radius: 36,
              backgroundColor: colors,
            ),
          )
        : CircleAvatar(
            radius: 38,
            backgroundColor: colors,
          );
  }
}

class ColorItemList extends StatefulWidget {
  const ColorItemList({super.key});

  @override
  State<ColorItemList> createState() => _ColorItemListState();
}

class _ColorItemListState extends State<ColorItemList> {
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: SizedBox(
        height: 38 * 2,
        child: ListView.builder(
            itemCount: kColors.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  currentindex = index;
                  BlocProvider.of<AddNoteCubit>(context).colors =
                      kColors[index];
                  setState(() {});
                },
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: ColorItem(
                    isActive: currentindex == index,
                    colors: kColors[index],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
