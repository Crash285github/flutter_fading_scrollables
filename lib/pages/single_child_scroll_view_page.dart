import 'package:fading_collections/fading_scrollables/fading_scrollables.dart';
import 'package:flutter/material.dart';

class SingleChildScrollViewPage extends StatefulWidget {
  const SingleChildScrollViewPage({super.key});

  @override
  State<SingleChildScrollViewPage> createState() =>
      _SingleChildScrollViewPageState();
}

class _SingleChildScrollViewPageState extends State<SingleChildScrollViewPage> {
  final ScrollController _scrollController = ScrollController();

  int i = 0;

  final children = [
    for (var i = 0; i < 30; i++)
      Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text('Item $i'),
        ),
      ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SingleChildScrollView"),
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
        child: SingleChildScrollView(
          controller: _scrollController,
          reverse: i == 1 || i == 2,
          scrollDirection: i == 1 || i == 3 ? Axis.horizontal : Axis.vertical,
          child: i == 1 || i == 3
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: children,
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: children),
        ).fade(gradientHeight: 50),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() => i = (i + 1) % 4);
        },
      ),
    );
  }
}
