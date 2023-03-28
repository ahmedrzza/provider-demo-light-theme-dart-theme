import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/provider/count_Provider.dart';

class FirstExample extends StatefulWidget {
  const FirstExample({super.key});

  @override
  State<FirstExample> createState() => _FirstExampleState();
}

class _FirstExampleState extends State<FirstExample> {
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   final countProvider = Provider.of<CountProvider>(context, listen: false);
  //   Timer.periodic(Duration(seconds: 1), (timer) {
  //     countProvider.setcount();
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    final countProvider = Provider.of<CountProvider>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text("StateFul With Provider"),
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: Consumer<CountProvider>(
          builder: (context, value, child) {
            return Text(
              //provider example //data come from class
              value.count.toString(),
              style: const TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.w500,
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          countProvider.setcount();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
