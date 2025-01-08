import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:workwise/utils/const/colors.dart';
import 'package:workwise/utils/const/size.dart';

class SearchableComboBox extends StatefulWidget {
  final String labelText;
  final String hintText;
  final String? iconPath;
  final IconData? icon;
  final List<String> items;
  final String? initialValue;
  final Function(String?)? onChanged;
  final bool enableSearch;

  const SearchableComboBox({
    Key? key,
    required this.labelText,
    required this.hintText,
    required this.items,
    this.iconPath,
    this.icon,
    this.initialValue,
    this.onChanged,
    this.enableSearch = true,
  }) : super(key: key);

  @override
  SearchableComboBoxState createState() => SearchableComboBoxState();
}

class SearchableComboBoxState extends State<SearchableComboBox> {
  // Renamed to match the error message
  late List<String> _filteredItems;
  final TextEditingController _searchController = TextEditingController();
  String? _selectedValue;
  final FocusNode _dropdownFocus = FocusNode();
  final LayerLink _layerLink = LayerLink();
  OverlayEntry? _overlayEntry;

  @override
  void initState() {
    super.initState();
    // Initialize _filteredItems with all items
    _filteredItems = List.from(widget.items);
    _selectedValue = widget.initialValue;
  }

  void _filterItems(String query) {
    if (query.isEmpty) {
      setState(() {
        // Reset to all items when search is empty
        _filteredItems = List.from(widget.items);
      });
    } else {
      setState(() {
        // Filter items based on search query
        _filteredItems = widget.items
            .where((item) => item.toLowerCase().contains(query.toLowerCase()))
            .toList();
      });
    }
  }

  void _showDropdown(BuildContext context) {
    // Remove any existing overlay
    _removeOverlay();

    // Create a new overlay
    _overlayEntry = _createOverlayEntry(context);
    Overlay.of(context).insert(_overlayEntry!);

    // Add listener to close dropdown when tapping outside
    _dropdownFocus.addListener(_handleFocusChange);
  }

  OverlayEntry _createOverlayEntry(BuildContext context) {
    RenderBox renderBox = context.findRenderObject() as RenderBox;
    var size = renderBox.size;
    var offset = renderBox.localToGlobal(Offset.zero);

    return OverlayEntry(
      builder: (context) => Positioned(
        left: offset.dx,
        top: offset.dy + size.height,
        width: size.width,
        child: CompositedTransformFollower(
          link: _layerLink,
          showWhenUnlinked: false,
          offset: Offset(0, size.height),
          child: Material(
            elevation: 4,
            child: Container(
              constraints: BoxConstraints(
                maxHeight: 300,
                minHeight: 50,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Search input (if enabled)
                  if (widget.enableSearch) ...[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        controller: _searchController,
                        decoration: InputDecoration(
                          hintText: 'Search...',
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        onChanged: _filterItems,
                      ),
                    ),
                  ],

                  // Items list
                  Flexible(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: _filteredItems.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(
                            _filteredItems[index],
                            style: TextStyle(color: TColors.textSecondary),
                          ),
                          onTap: () {
                            setState(() {
                              _selectedValue = _filteredItems[index];
                              _searchController.clear();
                              _filteredItems = List.from(widget.items);
                            });
                            widget.onChanged?.call(_selectedValue);
                            _removeOverlay();
                          },
                        );
                      },
                    ),
                  ),

                  // Show message if no items found
                  if (_filteredItems.isEmpty) ...[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'No items found',
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
    _dropdownFocus.removeListener(_handleFocusChange);
  }

  void _handleFocusChange() {
    if (!_dropdownFocus.hasFocus) {
      _removeOverlay();
    }
  }

  @override
  Widget build(BuildContext context) {
    return CompositedTransformTarget(
      link: _layerLink,
      child: ConstrainedBox(
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
              // Icon section
              if (widget.iconPath != null) ...[
                SvgPicture.asset(
                  widget.iconPath!,
                  width: TSizes.iconMd,
                  height: TSizes.iconMd,
                  colorFilter:
                      ColorFilter.mode(TColors.secondary, BlendMode.srcIn),
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

              // Dropdown section
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.labelText,
                      style: TextStyle(
                        color: TColors.white30,
                        fontSize: TSizes.fontSizeSm,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    GestureDetector(
                      behavior: HitTestBehavior.opaque,
                      onTap: () => _showDropdown(context),
                      child: Container(
                        width: double.infinity,
                        child: Text(
                          _selectedValue ?? widget.hintText,
                          style: TextStyle(
                            color: TColors.secondary,
                            fontSize: TSizes.fontSizeMd,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    _dropdownFocus.dispose();
    _removeOverlay();
    super.dispose();
  }
}
