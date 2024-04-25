import 'package:fading_collections/fading_scrollables/fading_scrollables.dart';
import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  final ScrollController _scrollController = ScrollController();

  int i = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ListView"),
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
        child: ListView.builder(
          controller: _scrollController,
          reverse: i == 1 || i == 2,
          scrollDirection: i == 1 || i == 3 ? Axis.horizontal : Axis.vertical,
          itemBuilder: (context, index) => Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Item $index'),
            ),
          ),
          itemCount: 50,
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
