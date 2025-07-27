import 'package:flutter/material.dart';
import 'package:real_note_app/Theme/theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Notebook"),
          titleTextStyle: TextStyle(
            fontSize: 24,
            //fontWeight: FontWeight.bold,
            color: AppColors.mainTextColor
          ),
          centerTitle: true,

          leading: Icon(Icons.light),
          actions: [Icon(Icons.settings)],
          backgroundColor: AppColors.seconderyColor,
        ),
        bottomNavigationBar: SafeArea(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
            decoration: BoxDecoration(
              color: Theme.of(
                context,
              ).scaffoldBackgroundColor, // یا هر رنگ دلخواه
              border: const Border(
                top: BorderSide(color: Colors.grey, width: 0.3),
              ),
            ),
            child: Row(
              children: [
                /// TextField برای یادداشت سریع
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Write a quick note...',
                      hintStyle: TextStyle(
                        color: AppColors.mainTextColor
                      ),
                      filled: true,
                      fillColor: Colors.grey[100],
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 10,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: BorderSide.none,
                      ),
                    ),
                    onSubmitted: (value) {
                      // عملکرد ذخیره نوت سریع
                    },
                  ),
                ),
                const SizedBox(width: 8),

                /// دکمه ارسال
                IconButton(
                  icon: const Icon(Icons.send),
                  color: Theme.of(context).iconTheme.color,
                  onPressed: () {
                    // عملکرد دکمه ارسال
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
