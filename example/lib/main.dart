import 'package:flutter/material.dart';
import 'package:simple_accordion/simple_accordion.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text('Simple Accordion'),
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SimpleAccordion(
              onSelectedChanged: (data) {
                print(data.map((e) => e.title).join('-'));
              },
              itemTextStyle: TextStyle(color: Colors.red),
              maxSelectCount: 2,
              children: [
                AccordionHeaderItem(
                  title: "Colors",
                  children: [
                    AccordionItem(
                      title: "Blue",
                      itemTextStyle: TextStyle(color: Colors.blue),
                      accrodionItemType: AccrodionItemType.CheckBox,
                    ),
                    AccordionItem(
                        title: "Red",
                        accrodionItemType: AccrodionItemType.CheckBox),
                    AccordionItem(
                      title: "Green",
                      onTap: () {},
                    ),
                    AccordionItem(title: "Black"),
                  ],
                ),
                AccordionHeaderItem(
                  title: "Header 2",
                  children: const [],
                ),
                AccordionHeaderItem(
                  title: "Header 3",
                  children: const [],
                ),
                AccordionHeaderItem(
                  title: "Customized items",
                  children: [
                    AccordionItem(title: "Label Item (tapable)"),
                    AccordionItem(
                        title: "Checkbox Item",
                        accrodionItemType: AccrodionItemType.CheckBox),
                    AccordionItem(
                        title: "Checkbox Item (red check)",
                        checkColor: Colors.red,
                        accrodionItemType: AccrodionItemType.CheckBox),
                    AccordionItem(
                      title: "Backgrounded Item",
                      itemColor: Colors.orange,
                    ),
                  ],
                ),
                AccordionHeaderItem(
                  title: "Colored Header 1 and items",
                  headerColor: Colors.lightBlue,
                  itemColor: Colors.greenAccent,
                  children: [
                    AccordionItem(
                      title: "Item 1",
                    ),
                    AccordionItem(
                      title: "Item 2",
                    ),
                    AccordionItem(
                      child: Container(
                        width: double.infinity,
                        margin: const EdgeInsets.only(bottom: 10),
                        padding: const EdgeInsets.all(5),
                        decoration: const BoxDecoration(
                            border: Border(bottom: BorderSide(width: 1))),
                        child: const Text(
                          "Custom Item",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    AccordionItem(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Icon(Icons.star),
                          OutlinedButton(
                              onPressed: () {}, child: const Text("Button")),
                          const SizedBox(
                              width: 100, height: 40, child: TextField())
                        ],
                      ),
                    )
                  ],
                ),
                AccordionHeaderItem(
                  children: [
                    AccordionItem(
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        child: const Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc vulputate, quam molestie finibus interdum, mauris tortor pretium eros, eget dignissim neque leo et mi. Etiam rutrum dapibus malesuada. Ut sem metus, tristique quis semper id, tincidunt quis elit. Aenean vel ipsum nec enim sollicitudin sollicitudin id et nibh. Donec ut ligula eros. Integer quis libero eu eros malesuada faucibus. Nullam viverra blandit placerat. Duis suscipit sagittis orci et iaculis. Sed at justo tincidunt dolor aliquam maximus. Proin condimentum mi ipsum, ut blandit purus ornare quis. Donec dignissim ut ligula non iaculis. Vestibulum consequat, enim eu egestas sodales, nunc est varius nulla, eget ullamcorper quam velit at est. Curabitur nec ex enim. In sit amet tellus ex.",
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    )
                  ],
                  child: Row(
                    children: const [
                      Icon(Icons.arrow_forward_ios_sharp),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Custom header with custom body")
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
