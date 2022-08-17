import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:hello_world/home_controller.dart';

/*class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var controller = HomeController.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('HelloWorld!'),
      ),
      body: Center(
        child: Text('Clicou ${controller.value}'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          controller.increment();
        },
      ),
    );
  }
}
*/

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HelloWorld!'),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              for (var i = 0; i < 10; i++)
                Container(
                  width: double.infinity,
                  height: 80,
                  margin: const EdgeInsets.all(12),
                  color: Colors.blue,
                ),
            ],
          ),
        ),
      ),
      // body: Center(
      //   child: Text('Clique $counter'),
      // ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.add),
      //   onPressed: () {
      //     setState(() {
      //       counter++;
      //     });

      //   },
      // ),
    );
  }
}
