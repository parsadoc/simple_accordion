import 'package:flutter/material.dart';
import 'package:simple_accordion/model/SimpleAccordionState.dart';
import 'package:simple_accordion/widgets/AccordionHeaderItem.dart';

class SimpleAccordion extends StatefulWidget {
  const SimpleAccordion(
      {Key? key,
      required this.children,
      this.headerColor,
      this.itemColor,
      this.maxSelectCount,
      this.onSelectedChanged})
      : super(key: key);

  final List<AccordionHeaderItem> children;

  /// background color of all headers
  final Color? headerColor;

  /// background color of all items
  final Color? itemColor;

  /// Maximum possible select for checkbox items
  final int? maxSelectCount;

  /// when a checkbox item state changed, it returns all the seleced items
  final Function(List<AccordionData>)? onSelectedChanged;

  @override
  State<SimpleAccordion> createState() => _SimpleAccordionState();
}

class _SimpleAccordionState extends State<SimpleAccordion> {
  @override
  Widget build(BuildContext context) {
    int i = 0;
    return SimpleAccordionState(
      selectedItems: [],
      maxSelectedCount: widget.maxSelectCount,
      child: SingleChildScrollView(
        child: Column(
          children: widget.children
              .map((e) => e
                ..headerColor = e.headerColor ?? widget.headerColor
                ..index = i++
                ..itemColor = e.itemColor ?? widget.itemColor)
              .toList(),
        ),
      ),
    );
  }
}
