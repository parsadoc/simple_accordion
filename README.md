# simple_accordion
<table>
<tr>
<td><img src="https://raw.githubusercontent.com/parsadoc/simple_accordion/dev/screenshots/1.png" alt="img-1" /></td>
<td><img src="https://raw.githubusercontent.com/parsadoc/simple_accordion/dev/screenshots/2.png" alt="img-1" /></td>
<td><img src="https://raw.githubusercontent.com/parsadoc/simple_accordion/dev/screenshots/3.png" alt="img-1" /></td>
</tr>
<tr>
<td><img src="https://raw.githubusercontent.com/parsadoc/simple_accordion/dev/screenshots/4.png" alt="img-1" /></td>
<td><img src="https://raw.githubusercontent.com/parsadoc/simple_accordion/dev/screenshots/5.png" alt="img-1" /></td>
<td><img src="https://raw.githubusercontent.com/parsadoc/simple_accordion/dev/screenshots/6.png" alt="img-1" /></td>
</tr>
</table>

**If you like, you can contribute for this [repository](https://github.com/parsadoc/simple_accordion). I'll check all PR that you pushed.**

## About Widget
this is an accordion widget that supports usual types of an accordion widget and easy to use!

### Add to your project
> flutter pub add  simple_accordion

### Just import lib and use it!
> import  'package:simple_accordion/simple_accordion.dart';

## How to use
The main widget is `SimpleAccordion` and it has `children` parameter that you can pass accrodion items to it like below:
```
SimpleAccordion(
              children: [
                AccordionHeaderItem(
                  title: "Colors",
                  children: [
                    AccordionItem(title: "Blue"),
                    AccordionItem(title: "Red"),
                    AccordionItem(title: "Green"),
                    AccordionItem(title: "Black"),
                  ],
                ),
              ],
)
```