import 'package:flutter/material.dart';
import 'package:simple_accordion/model/SimpleAccordionState.dart';

enum AccrodionItemType { Label, CheckBox }

class AccordionItem extends StatefulWidget {
  AccordionItem(
      {Key? key,
      this.id,
      this.title,
      this.child,
      this.onChange,
      this.checked = false,
      this.indexGroup = 0,
      this.onTap,
      this.checkColor,
      this.backColor,
      this.accrodionItemType = AccrodionItemType.Label})
      : assert(title != null || child != null),
        super(key: key);
  final String? id;
  final String? title;
  final Widget? child;
  final Function()? onTap;
  final Function(bool, AccordionData?)? onChange;
  final bool checked;
  final Color? checkColor;
  final Color? backColor;
  int indexGroup;
  final AccrodionItemType accrodionItemType;
  @override
  State<StatefulWidget> createState() => _AccordionItem();
}

class _AccordionItem extends State<AccordionItem> {
  late bool checked;
  @override
  void initState() {
    checked = widget.checked;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child ??
        ListTile(
          tileColor: widget.backColor,
          title: Text(
            widget.title!,
            style: TextStyle(
                color: Theme.of(context).textTheme.headline1?.color,
                fontSize: 13),
          ),
          trailing: widget.accrodionItemType == AccrodionItemType.CheckBox
              ? AnimatedCrossFade(
                  crossFadeState: checked
                      ? CrossFadeState.showFirst
                      : CrossFadeState.showSecond,
                  duration: const Duration(milliseconds: 50),
                  firstChild: Icon(
                    Icons.check,
                    color: widget.checkColor,
                  ),
                  secondChild: const SizedBox(
                    width: 20,
                    height: 20,
                  ),
                )
              : const SizedBox(),
          visualDensity: VisualDensity.compact,
          onTap: () {
            if (widget.accrodionItemType == AccrodionItemType.CheckBox) {
              setState(() {
                checked = !checked;
              });
              if (checked) {
                SimpleAccordionState.of(context)
                    ?.selectedItems
                    .add(AccordionData(id: widget.id, title: widget.title));
              } else {
                SimpleAccordionState.of(context)
                    ?.selectedItems
                    .removeWhere((a) => a.title == widget.title);
              }
              if (widget.onChange != null) {
                widget.onChange!(
                    checked, AccordionData(id: widget.id, title: widget.title));
              }
            }
          },
        );
  }
}
