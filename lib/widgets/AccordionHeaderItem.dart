import 'package:flutter/material.dart';
import 'package:simple_accordion/widgets/AccordionItem.dart';

class AccordionHeaderItem extends StatefulWidget {
  AccordionHeaderItem(
      {this.isOpen,
      Key? key,
      this.title,
      required this.children,
      this.child,
      this.headerColor,
      this.index = 0,
      this.itemColor})
      : assert(title != null || child != null),
        super(key: key);

  final bool? isOpen;
  final String? title;
  final Widget? child;
  final List<AccordionItem> children;
  Color? headerColor;
  Color? itemColor;
  int index;
  @override
  State<StatefulWidget> createState() => _AccordionHeaderItem();
}

class _AccordionHeaderItem extends State<AccordionHeaderItem> {
  bool isOpen = false;
  @override
  Widget build(BuildContext context) {
    final header = InkWell(
      onTap: () {
        setState(() {
          isOpen = !isOpen;
        });
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
        decoration: BoxDecoration(
            border: const Border(
              bottom: BorderSide(width: 1, color: Color(0xffe6e6e6)),
            ),
            color: widget.headerColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            widget.child ?? Text(widget.title!),
            Icon(
              isOpen
                  ? Icons.keyboard_arrow_up_outlined
                  : Icons.keyboard_arrow_down_outlined,
              color: const Color(0xffd4d4d4),
            )
          ],
        ),
      ),
    );
    return AnimatedCrossFade(
      crossFadeState:
          isOpen ? CrossFadeState.showSecond : CrossFadeState.showFirst,
      duration: const Duration(milliseconds: 200),
      firstChild: header,
      secondChild: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          header,
          Container(
            color: widget.itemColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widget.children
                  .map((e) => e..indexGroup = widget.index)
                  .toList(),
            ),
          )
        ],
      ),
    );
  }
}