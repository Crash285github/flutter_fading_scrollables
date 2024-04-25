import 'package:fading_collections/fading_collections/fading_collections.dart';
import 'package:fading_collections/pages/custom_scroll_view_page.dart';
import 'package:fading_collections/pages/dss.dart';
import 'package:fading_collections/pages/grid_view_page.dart';
import 'package:fading_collections/pages/list_view_page.dart';
import 'package:fading_collections/pages/single_child_scroll_view_page.dart';
import 'package:flutter/material.dart';

void main() {
  setDefaultFrameRate(60);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: const Body(),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          TextButton(
            child: const Text('ListView'),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ListViewPage(),
              ),
            ),
          ),
          TextButton(
            child: const Text('SingleChildScrollView'),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SingleChildScrollViewPage(),
              ),
            ),
          ),
          TextButton(
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const GridViewPage(),
                )),
            child: const Text("GridView"),
          ),
          TextButton(
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const CustomScrollViewPage(),
                )),
            child: const Text("CustomScrollView"),
          ),
          TextButton(
            onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const DSSPage(),
                )),
            child: const Text("DraggableScrollableSheet"),
          ),
        ],
      ),
    );
  }
}
