import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Import for SVG support
import 'package:workwise/utils/const/colors.dart';
import 'package:workwise/utils/const/size.dart';

class AutoCompleteTextField extends StatefulWidget {
  final String labelText;
  final String hintText;
  final List<String> suggestions;
  final String? value;
  final Function(String)? onChanged;
  final String? iconPath; // Optional parameter for SVG icon path
  final IconData? icon;    // Optional parameter for standard icon

  const AutoCompleteTextField({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.suggestions,
    this.value,
    this.onChanged,
    this.iconPath,
    this.icon,
  });

  @override
  _AutoCompleteTextFieldState createState() => _AutoCompleteTextFieldState();
}

class _AutoCompleteTextFieldState extends State<AutoCompleteTextField> {
  final TextEditingController _controller = TextEditingController();
  List<String> _filteredSuggestions = [];
  OverlayEntry? _overlayEntry;
  final LayerLink _layerLink = LayerLink();
  bool _isOverlayVisible = false;

  @override
  void initState() {
    super.initState();
    _controller.text = widget.value ?? '';
    _controller.addListener(() {
      _filterSuggestions();
      widget.onChanged?.call(_controller.text);
    });
    _filteredSuggestions = widget.suggestions;
  }

  void _filterSuggestions() {
    final query = _controller.text;
    if (query.isEmpty) {
      setState(() {
        _filteredSuggestions = widget.suggestions;
        _showSuggestions(false);
      });
    } else {
      setState(() {
        _filteredSuggestions = widget.suggestions
            .where((suggestion) => suggestion.toLowerCase().contains(query.toLowerCase()))
            .toList();
        _showSuggestions(_filteredSuggestions.isNotEmpty);
      });
    }
  }

  void _showSuggestions(bool show) {
    if (show && !_isOverlayVisible) {
      _overlayEntry = _createOverlayEntry();
      Overlay.of(context)?.insert(_overlayEntry!);
      _isOverlayVisible = true;
    } else if (!show && _isOverlayVisible) {
      _overlayEntry?.remove();
      _overlayEntry = null;
      _isOverlayVisible = false;
    }
  }

  OverlayEntry _createOverlayEntry() {
    final RenderBox renderBox = context.findRenderObject() as RenderBox;
    final size = renderBox.size;
    final offset = renderBox.localToGlobal(Offset.zero);

    return OverlayEntry(
      builder: (context) => Positioned(
        left: offset.dx,
        top: offset.dy + size.height,
        width: size.width,
        child: Material(
          elevation: 4.0,
          color: TColors.primary, // Set background color
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: TColors.secondary), // Set border color
              borderRadius: BorderRadius.circular(4.0),
              color: TColors.primary, // Set background color
            ),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: 200, // Adjust based on your requirements
              ),
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: _filteredSuggestions.length,
                itemBuilder: (context, index) {
                  final suggestion = _filteredSuggestions[index];
                  return ListTile(
                    title: Text(
                      suggestion,
                      style: TextStyle(
                          fontSize: TSizes.fontSizeMd,
                          color: TColors.secondary), // Set text color
                    ),
                    onTap: () {
                      _controller.text = suggestion;
                      widget.onChanged?.call(suggestion);
                      _showSuggestions(false);
                    },
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }

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
            if (widget.iconPath != null) ...[
              SvgPicture.asset(
                widget.iconPath!,
                width: TSizes.iconMd,
                height: TSizes.iconMd,
                color: TColors.secondary,
              ),
              SizedBox(width: 20),
            ] else if (widget.icon != null) ...[
              Icon(
                widget.icon,
                size: TSizes.iconMd,
                color: TColors.secondary,
              ),
              SizedBox(width: 20),
            ],
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.labelText,
                  style: TextStyle(
                      color: TColors.white30,
                      fontSize: TSizes.fontSizeSm,
                      fontWeight: FontWeight.w400),
                ),
                Container(
                  height: 24,
                  child:
                  CompositedTransformTarget(
                    link: _layerLink,
                    child: TextField(
                      controller: _controller,
                      onTap: () {
                        _filterSuggestions(); // Trigger filtering and overlay display
                      },
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: widget.hintText,
                      ),
                      style: TextStyle(
                          color: TColors.secondary,
                          fontSize: TSizes.fontSizeMd,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                )
              ],
            ))
          ],
        )
      ),
    );
  }
}
