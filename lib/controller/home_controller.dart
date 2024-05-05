import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../model/product/product.dart';

class HomeController extends GetxController{

  FirebaseFirestore firestore = FirebaseFirestore.instance;
  late CollectionReference productCollection;

  TextEditingController productNameCtrl = TextEditingController();
  TextEditingController productDescriptionCtrl = TextEditingController();
  TextEditingController productImgCtrl = TextEditingController();
  TextEditingController productPriceCtrl = TextEditingController();
  String category = 'general';
  String brand = 'unbranded';
  bool offer = false;
  @override
  void onInit() {
    productCollection = firestore.collection('products');
    super.onInit();
  }

  addProduct(){
    try {
      DocumentReference doc = productCollection.doc();
      Product product = Product(
            id: doc.id,
            name: productNameCtrl.text,
            description: productDescriptionCtrl.text,
            category: category,
            image: productImgCtrl.text,
             offer: offer,
            price: double.tryParse(productPriceCtrl.text),
            brand: brand,
          );

      final productJson = product.toJson();
      doc.set(productJson);
      Get.snackbar('Success', 'Product added successfully', colorText: Colors.green);
    } catch (e) {
      Get.snackbar('Error', e.toString(), colorText: Colors.red);
    }

  }


}