import 'package:flutter/material.dart';

class ExampleScreen extends StatefulWidget {
  const ExampleScreen({super.key});

  @override
  State<ExampleScreen> createState() => _ExampleScreenState();
}

class _ExampleScreenState extends State<ExampleScreen> {
  bool istoggle = false;
  @override
  Widget build(BuildContext context) {
    debugPrint("hello --------$istoggle");
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.green,
            title: AnimatedOpacity(
              opacity: istoggle ? 0 : 1,
              duration: const Duration(milliseconds: 300),
              child: Text("Massage"),
            ),
            actions: [
              AnimatedContainer(
                width: istoggle ? 300 : 0,
                height: 20,
                color: Colors.white,
                duration: const Duration(milliseconds: 300),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    istoggle = !istoggle;
                  });
                },
                icon: Icon(Icons.search),
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ListTile(
                  title: Text('Item #$index'),
                );
              },
              childCount: 50,
            ),
          ),
        ],
      ),
    );
  }
}
