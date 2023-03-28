import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/provider/example_one_provider.dart';

class Example_one extends StatefulWidget {
  const Example_one({super.key});

  @override
  State<Example_one> createState() => _Example_oneState();
}

class _Example_oneState extends State<Example_one> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<ExampleoneProvider>(builder: (context, value, child) {
            return Slider(
                min: 0,
                max: 1,
                value: value.value,
                onChanged: (val) {
                  value.setValue(val);
                });
          }),
          Consumer<ExampleoneProvider>(builder: (context, value, child) {
            return Row(
              children: [
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.green.withOpacity(value.value)),
                    child: Center(
                      child: Text("Container1"),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    decoration: BoxDecoration(
                        color: Colors.red.withOpacity(value.value)),
                    child: Center(
                      child: Text("Container2"),
                    ),
                  ),
                )
              ],
            );
          }),
          Consumer<ExampleoneProvider>(builder: (context, value, child) {
            return Text(
              value.value.toString(),
              style: TextStyle(
                fontSize: 20,
              ),
            );
          })
        ],
      ),
    );
  }
}
