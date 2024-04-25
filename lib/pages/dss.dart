import 'package:fading_collections/fading_collections/fading_collections.dart';
import 'package:flutter/material.dart';

class DSSPage extends StatelessWidget {
  const DSSPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("DraggableScrollableSheet")),
      backgroundColor: Colors.blueGrey,
      body: DraggableScrollableSheet(
        maxChildSize: .5,
        builder: (context, scrollController) => Container(
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
            controller: scrollController,
            slivers: [
              const SliverAppBar(
                title: Text("CustomScrollView"),
                pinned: true,
                backgroundColor: Colors.red,
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
          ).fade(gradientSize: 50, startOffset: kToolbarHeight),
        ),
      ),
    );
  }
}
