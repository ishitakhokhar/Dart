import 'package:flutter/material.dart';

class AddImageGrid extends StatefulWidget {
  const AddImageGrid({super.key});

  @override
  State<AddImageGrid> createState() => _AddImageGridState();
}

class _AddImageGridState extends State<AddImageGrid> {
  final TextEditingController urlController = TextEditingController();
  final List<String> imageUrls = [];

  void addImage() {
    final url = urlController.text.trim();

    if (url.isNotEmpty) {
      setState(() {
        imageUrls.add(url);
        urlController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("4 Images Per Row")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: urlController,
              decoration: const InputDecoration(
                labelText: "Enter Image URL",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 12),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: addImage,
                child: const Text("Add Image"),
              ),
            ),

            const SizedBox(height: 16),

            /// Image Grid (4 per row)
            Expanded(
              child: GridView.builder(
                itemCount: imageUrls.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  crossAxisSpacing: 8,
                  mainAxisSpacing: 8,
                ),
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: Image.network(
                      imageUrls[index],
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          color: Colors.grey.shade300,
                          child: const Icon(Icons.broken_image),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
