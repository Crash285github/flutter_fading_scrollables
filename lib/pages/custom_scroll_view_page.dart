import 'package:fading_collections/fading_collections/fading_collections.dart';
import 'package:flutter/material.dart';

class CustomScrollViewPage extends StatefulWidget {
  const CustomScrollViewPage({super.key});

  @override
  State<CustomScrollViewPage> createState() => _CustomScrollViewPageState();
}

class _CustomScrollViewPageState extends State<CustomScrollViewPage> {
  final ScrollController _scrollController = ScrollController();

  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: CustomScrollView(
          controller: _scrollController,
          reverse: i == 1 || i == 2,
          scrollDirection: i == 1 || i == 3 ? Axis.horizontal : Axis.vertical,
          slivers: [
            const SliverAppBar(
              title: Text("CustomScrollView"),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                (context, index) => Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Item $index'),
                  ),
                ),
                childCount: 30,
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
