import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';
import 'package:provider_demo/provider/favouriteClass.dart';

class My_fav_screen extends StatefulWidget {
  const My_fav_screen({super.key});

  @override
  State<My_fav_screen> createState() => _My_fav_screenState();
}

class _My_fav_screenState extends State<My_fav_screen> {
  @override
  Widget build(BuildContext context) {
    final favprovider = Provider.of<FavouritemItemProvider>(context);
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        Expanded(child: ListView.builder(
          itemCount: favprovider.selecteditem.length,
          itemBuilder: (context,index){
            return Consumer(builder: (context,value,child){
              return ListTile(
                title: Text(index.toString()),
              );
            });
          }))
      ],),
    );
  }
}