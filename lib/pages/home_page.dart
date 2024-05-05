import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:islamicbookshop/controller/home_controller.dart';
import 'package:islamicbookshop/pages/add_product_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {

        return Scaffold(
          appBar: AppBar(
            title: const Text('Footware Admin'),
          ),
          body: ListView.builder(
            itemCount: 100,
            itemBuilder: (context, index) {
              return ListTile(title: Text('title'),
                subtitle: Text('Price : 100'),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () {

                  },
                ),
              );
            },),
          floatingActionButton: FloatingActionButton(onPressed: () {
            Get.to(AddProductPage());
          }, child: Icon(Icons.add),),
        );

  }
}
