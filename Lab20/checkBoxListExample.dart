import 'package:flutter/material.dart';

class CheckboxListExample extends StatefulWidget {
  const CheckboxListExample({super.key});

  @override
  State<CheckboxListExample> createState() => _CheckboxListExampleState();
}

class _CheckboxListExampleState extends State<CheckboxListExample> {
  List<String> items = [
    "Apple",
    "Banana",
    "Orange",
    "Mango",
    "Grapes",
  ];

  Map<String, bool> selectedItems = {};

  bool isSelectAll = false;

  @override
  void initState() {
    super.initState();
    for (var item in items) {
      selectedItems[item] = false;
    }
  }

  void toggleSelectAll(bool? value) {
    setState(() {
      isSelectAll = value ?? false;
      selectedItems.updateAll((key, _) => isSelectAll);
    });
  }

  void toggleItem(String item, bool? value) {
    setState(() {
      selectedItems[item] = value ?? false;
      isSelectAll = selectedItems.values.every((v) => v);
    });
  }

  void deleteSelectedItems() {
    setState(() {
      items.removeWhere((item) => selectedItems[item] == true);
      selectedItems.removeWhere((key, value) => value == true);
      isSelectAll = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Checkbox List"),
        actions: [
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: deleteSelectedItems,
          )
        ],
      ),
      body: Column(
        children: [

          CheckboxListTile(
            title: const Text("Select All"),
            value: isSelectAll,
            onChanged: toggleSelectAll,
          ),

          const Divider(),


          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                String item = items[index];
                return CheckboxListTile(
                  title: Text(item),
                  value: selectedItems[item],
                  onChanged: (value) => toggleItem(item, value),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
