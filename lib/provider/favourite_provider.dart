import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/provider/favouriteClass.dart';
import 'package:provider_demo/provider/my_favourite_screen.dart';

class Favourite_Provider extends StatefulWidget {
  const Favourite_Provider({super.key});

  @override
  State<Favourite_Provider> createState() => _Favourite_ProviderState();
}

class _Favourite_ProviderState extends State<Favourite_Provider> {
  List<int> selecteditem = [];
  @override
  Widget build(BuildContext context) {
    // final favouriteprovider = Provider.of<FavouritemItemProvider>(context);
    print('object');
    return Scaffold(
      appBar: AppBar(
        title: Text("Favourite App"),
        centerTitle: true,
        elevation: 0,
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => My_fav_screen()));
              },
              icon: Icon(Icons.favorite))
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return Consumer<FavouritemItemProvider>(
                  builder: (context, value, child) {
                    return ListTile(
                      onTap: () {
                        print("Hello");
                        if (value.selecteditem.contains(index)) {
                          return value.removeItem(index);
                        } else {
                          value.additem(index);
                        }
                      },
                      title: Text("Item$index"),
                      trailing: Icon(value.selecteditem.contains(index)
                          ? Icons.favorite
                          : Icons.favorite_border_outlined),
                    );
                  },
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
