import 'package:fading_collections/fading_scrollables/fading_scrollables.dart';
import 'package:flutter/material.dart';

class GridViewPage extends StatefulWidget {
  const GridViewPage({super.key});

  @override
  State<GridViewPage> createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  final ScrollController _scrollController = ScrollController();

  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GridView"),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue,
              Colors.black,
            ],
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            stops: [0.0, 0.5],
          ),
        ),
        child: GridView.count(
          controller: _scrollController,
          crossAxisCount: 2,
          childAspectRatio: 4,
          scrollDirection: i == 1 || i == 3 ? Axis.horizontal : Axis.vertical,
          reverse: i == 1 || i == 2,
          children: [
            for (var i = 0; i < 50; i++)
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Item $i'),
                ),
              ),
          ],
        ).fade(gradientSize: 50),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() => i = (i + 1) % 4);
        },
      ),
    );
  }
}
