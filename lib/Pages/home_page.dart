import 'package:flutter/material.dart';
import 'package:real_note_app/Pages/floders_page.dart';
import 'package:real_note_app/Theme/theme_data.dart';
import 'package:real_note_app/Widgets/main_navbar_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notebook"),
        titleTextStyle: TextStyle(
          fontSize: 24,
          //fontWeight: FontWeight.bold,
          color: AppColors.mainTextColor,
        ),
        centerTitle: true,

        leading: Icon(Icons.light),
        actions: [Icon(Icons.settings)],
        backgroundColor: AppColors.seconderyColor,
      ),
      floatingActionButton: SizedBox(
        width: 80, // عرض دلخواه
        height: 80, // ارتفاع دلخواه
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const FlodersPage()),
            );
          },
          backgroundColor: Colors.white60,
          elevation: 0,
          highlightElevation: 0,
          splashColor: Colors.transparent,
          focusElevation: 0,
          child: Center(
            child: Text(
              String.fromCharCode(Icons.folder.codePoint),
              style: TextStyle(
                fontSize: 52,
                color: AppColors.seconderyColor,
                fontFamily: Icons.folder.fontFamily,
                package: Icons.folder.fontPackage,
                shadows: [
                  Shadow(
                    blurRadius: 6.0,
                    color: Colors.black.withOpacity(0.3),
                    offset: Offset(2, 2),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),

      bottomNavigationBar: MainNavbarWidget(),
    );
  }
}
