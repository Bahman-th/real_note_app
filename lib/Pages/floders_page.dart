import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import '../../theme/theme_data.dart';

class FlodersPage extends StatelessWidget {
  const FlodersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final folders = [
      {
        'title': 'Poem',
        'lastEdited': 'July 26, 2025',
        'pages': 5,
        'lastPage': 'Rainy Thoughts',
      },
      {
        'title': 'Shopping',
        'lastEdited': 'July 27, 2025',
        'pages': 3,
        'lastPage': 'Grocery List',
      },
      {
        'title': 'Todo',
        'lastEdited': 'July 28, 2025',
        'pages': 8,
        'lastPage': 'App UX Fixes',
      },
    ];

    return Scaffold(
      appBar: AppBar(title: const Text('Folders')),
      body: ListView.builder(
        padding: const EdgeInsets.all(12),
        itemCount: folders.length,
        itemBuilder: (context, index) {
          final folder = folders[index];
          return Slidable(
            key: ValueKey(folder['title']),
            endActionPane: ActionPane(
              motion: const DrawerMotion(),
              children: [
                // Replaced SlidableAction with CustomSlidableAction for tighter spacing and more control
                CustomSlidableAction(
                  onPressed: (_) {
                    // Placeholder for share action
                  },
                  backgroundColor:
                      Colors.transparent, // Make background transparent
                  child: SizedBox(
                    width: 36,
                    height: 36,
                    child: const Icon(
                      Icons.share,
                      color: Colors.black54,
                      size: 28,
                    ),
                  ),
                ),
                CustomSlidableAction(
                  onPressed: (_) async {
                    final confirm = await showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text('Delete Folder'),
                          content: const Text(
                            'Are you sure you want to delete this folder?',
                          ),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.of(context).pop(false),
                              child: const Text('Cancel'),
                            ),
                            TextButton(
                              onPressed: () => Navigator.of(context).pop(true),
                              child: const Text('Delete'),
                            ),
                          ],
                        );
                      },
                    );
                    if (confirm == true) {
                      // Deletion logic if needed
                    }
                  },
                  backgroundColor:
                      Colors.transparent, // Make background transparent
                  child: SizedBox(
                    width: 36,
                    height: 36,
                    child: const Icon(
                      Icons.delete,
                      color: Colors.red,
                      size: 28,
                    ),
                  ),
                ),
              ],
            ),
            child: SizedBox(
              width: double.infinity,
              child: Card(
                color: AppColors.seconderyColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                margin: const EdgeInsets.symmetric(vertical: 8),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        folder['title'] as String,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: AppColors.mainTextColor,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Last edited: ${folder['lastEdited']} • Pages: ${folder['pages']}',
                        style: TextStyle(
                          fontSize: 13,
                          color: AppColors.mainTextColor.withOpacity(0.8),
                        ),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        'Last page: ${folder['lastPage']}',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: AppColors.mainTextColor,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
