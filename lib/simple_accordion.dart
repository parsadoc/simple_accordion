import 'package:flutter/material.dart';
import 'package:simple_accordion/model/SimpleAccordionState.dart';
import 'package:simple_accordion/widgets/AccordionHeaderItem.dart';

class SimpleAccordion extends StatefulWidget {
  const SimpleAccordion(
      {Key? key,
      required this.children,
      this.headerColor,
      this.itemColor,
      this.onSelectedChanged})
      : super(key: key);
  final List<AccordionHeaderItem> children;
  final Color? headerColor;
  final Color? itemColor;
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
