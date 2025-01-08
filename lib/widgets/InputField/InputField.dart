import 'package:flutter/material.dart';
import 'package:workwise/utils/const/colors.dart';
import 'package:workwise/utils/const/size.dart';
import 'package:flutter_svg/flutter_svg.dart';

class InputField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final String? iconPath;
  final String? initialValue;
  final IconData? icon;
  final FocusNode? focusNode;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;
  final Function(String)? onChanged;

  const InputField({
    super.key,
    required this.labelText,
    required this.hintText,
    this.iconPath,
    this.icon,
    this.focusNode,
    this.validator,
    this.onSaved,
    this.controller,
    this.onChanged,
    this.initialValue,
    });

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: 200,
        maxWidth: 350,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: TSizes.defaultMinSpace),
        decoration: BoxDecoration(
          border: Border(bottom: BorderSide(width: 1, color: TColors.white10)),
        ),
        child: Row(
          children: [
            if (iconPath != null) ...[
              SvgPicture.asset(
                iconPath!,
                width: TSizes.iconMd,
                height: TSizes.iconMd,
                // ignore: deprecated_member_use
                color: TColors.secondary,
                semanticsLabel: '$labelText icon',
              ),
              SizedBox(width: 20),
            ] else if (icon != null) ...[
              Icon(
                icon,
                size: TSizes.iconMd,
                color: TColors.secondary,
                semanticLabel: '$labelText icon',
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
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Container(
                    height: 24,
                    child: TextFormField(
                      focusNode: focusNode,
                      initialValue: initialValue,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: hintText,
                        hintStyle: TextStyle(
                          color: TColors.white30,
                        ),
                        errorStyle: TextStyle(
                          color: Colors.red,
                        ),
                      ),
                      style: TextStyle(
                        color: TColors.secondary,
                        fontSize: TSizes.fontSizeMd,
                        fontWeight: FontWeight.w500,
                      ),
                      validator: validator,
                      onSaved: onSaved,
                      onChanged: onChanged,
                      autofillHints: [AutofillHints.username, AutofillHints.email],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
