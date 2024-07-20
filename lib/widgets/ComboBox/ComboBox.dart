import 'package:flutter/material.dart';
import 'package:workwise/utils/const/colors.dart';
import 'package:workwise/utils/const/size.dart';

class ComboBox extends StatelessWidget {
  final String labelText;
  final String hintText;
  final IconData? icon;
  final List<DropdownMenuItem<String>>? items;
  final String? value;
  final Function(String?)? onChanged;

  const ComboBox({
    super.key,
    required this.labelText,
    required this.hintText,
    this.icon,
    this.items,
    this.value,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: 200,
          maxWidth: 350,
        ),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: TSizes.defaultSpace),
          decoration: BoxDecoration(
            border:
                Border(bottom: BorderSide(width: 1, color: TColors.white10)),
          ),
          child: Row(
            children: [
              if (icon != null) ...[
                Icon(
                  icon,
                  size: TSizes.iconMd,
                  color: TColors.secondary,
                ),
                SizedBox(width: 20),
              ],
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      labelText,
                      style: TextStyle(
                          color: TColors.white30,
                          fontSize: TSizes.fontSizeSm,
                          fontWeight: FontWeight.w400),
                    ),
                    Container(
                      height: 24,
                      child: DropdownButtonFormField<String>(
                        value: value,
                        onChanged: onChanged,
                        items: items,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: hintText,
                        ),
                        style: TextStyle(
                            color: TColors.secondary,
                            fontSize: TSizes.fontSizeMd,
                            fontWeight: FontWeight.w500),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
//how to use
// ComboBox(
//    labelText: 'Select Option',
//    hintText: 'Choose one',
//    icon: Icons.arrow_drop_down,
//    items: [
//        DropdownMenuItem(
//            value: 'option1',
//            child: Text('Option 1'),
//        ),
//        DropdownMenuItem(
//            value: 'option2',
//            child: Text('Option 2'),
//        ),
//    ],
//    value: selectedValue,
//    onChanged: (newValue) {
//        setState(() {
//        selectedValue = newValue;
//        });
//    },
// )