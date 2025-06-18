import 'package:flutter/material.dart';

class DropdownChecklist extends StatefulWidget {
  final String title;
  final List<String> items;
  final ValueChanged<List<String>>? onSelectionChanged;

  const DropdownChecklist({
    super.key,
    required this.title,
    required this.items,
    this.onSelectionChanged,
  });

  @override
  State<DropdownChecklist> createState() => _DropdownChecklistState();
}

class _DropdownChecklistState extends State<DropdownChecklist> {
  final Set<String> selectedItems = {};

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: widget.items.map((item) {
            final isSelected = selectedItems.contains(item);
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 6),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: CheckboxListTile(
                checkColor: Colors.grey,
                title: Text(item),
                value: isSelected,
                side: BorderSide.none,
                fillColor: WidgetStateProperty.all<Color>(Colors.grey.withOpacity(0.3)),
                onChanged: (checked) {
                  setState(() {
                    if (checked == true) {
                      selectedItems.add(item);
                    } else {
                      selectedItems.remove(item);
                    }
                  });
                  if (widget.onSelectionChanged != null) {
                    widget.onSelectionChanged!(selectedItems.toList());
                  }
                },
                controlAffinity: ListTileControlAffinity.leading,
                contentPadding: const EdgeInsets.symmetric(horizontal: 16),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
