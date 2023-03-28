import 'package:flutter/material.dart';

class Favourite_Screen extends StatefulWidget {
  const Favourite_Screen({super.key});

  @override
  State<Favourite_Screen> createState() => _Favourite_ScreenState();
}

class _Favourite_ScreenState extends State<Favourite_Screen> {
  List<int> selecteditem = [];
  @override
  Widget build(BuildContext context) {
    print("Build");
    return Scaffold(
      appBar: AppBar(
        title: Text("Favourite"),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: Colors.white,))
        ],
      ),
      body: Column(children: [
        Expanded(
          child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Item $index'),
                  trailing: IconButton(
                      onPressed: () {
                        selecteditem.add(index);
                        setState(() {});
                      },
                      icon: Icon(
                        selecteditem.contains(index)
                            ? Icons.favorite
                            : Icons.favorite_outline,
                      )),
                );
              }),
        )
      ]),
    );
  }
}
