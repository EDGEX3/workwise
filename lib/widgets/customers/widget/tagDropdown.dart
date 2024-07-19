import 'package:flutter/material.dart';
import 'package:workwise/utils/const/colors.dart';
import 'package:workwise/utils/const/size.dart';

class TagDropdown extends StatefulWidget {
  final List<String> items;
  final String title;

  const TagDropdown({super.key, required this.title, required this.items});

  @override
  _TagDropdownState createState() => _TagDropdownState();
}

class _TagDropdownState extends State<TagDropdown> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: TColors.white25,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1, color: TColors.white25),
          borderRadius: BorderRadius.circular(TSizes.borderRadiusLg),
        ),
      ),
      child: DropdownButton<String>(
        value: selectedValue,
        icon: Icon(Icons.arrow_drop_down, color: TColors.secondary),
        iconSize: 24,
        isExpanded: true,
        underline: SizedBox.shrink(),
        dropdownColor: TColors.white25,
        onChanged: (String? newValue) {
          setState(() {
            selectedValue = newValue;
          });
        },
        items: widget.items.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: TextStyle(
                color: TColors.secondary,
                fontSize: 14,
                fontWeight: FontWeight.w400,
                letterSpacing: 0.09,
              ),
            ),
          );
        }).toList(),
        hint: Text(
          widget.title,
          style: TextStyle(
            color: TColors.secondary,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            letterSpacing: 0.09,
          ),
        ),
      ),
    );
  }
}
