import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:e_comm_app/constants/app_button.dart';
import 'package:e_comm_app/models/response_model.dart';
import 'package:e_comm_app/utils/app_coloes.dart';
import 'package:e_comm_app/utils/app_constansts.dart';
import 'package:flutter/material.dart';

class ProductsScreen extends StatefulWidget {
  const ProductsScreen({Key? key}) : super(key: key);

  @override
  State<ProductsScreen> createState() => _ProductsScreenState();
}

class _ProductsScreenState extends State<ProductsScreen> {
  List<ResponseModel> items = []; // List to store fetched data

  @override
  void initState() {
    super.initState();
    fetchData(); // Fetch data when the screen initializes
  }

  void fetchData() async {
    Dio dio = Dio();
    try {
      final response = await dio.get(AppConstants.basUrl);
      setState(() {
        // Update items list with fetched data
        items = List<ResponseModel>.from(
            json.decode(response.data).map((x) => ResponseModel.fromJson(x)));
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.kPrimaryColor,
        elevation: 5,
        shape: RoundedRectangleBorder(
            side: BorderSide(
                color: AppColors.kSecondryColor,
              
                width: 2)),
        title: Text("Products"),
        centerTitle: false,
        leading: Icon(Icons.arrow_back, color: AppColors.kSecondryColor),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))],
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, 
          mainAxisSpacing: 8.0, 
          crossAxisSpacing: 8.0, 
        ),
        padding: EdgeInsets.all(8.0), 
        itemCount: items.length, 
        itemBuilder: (context, index) {
          return Container(
            color: Colors.blue, 
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(items[index].image ?? ''),
                Text(
                  items[index].title ?? '',
                  style: TextStyle(fontSize: 18.0, color: Colors.white),
                ),
                Text(
                  '${items[index].price ?? ''}',
                  style: TextStyle(fontSize: 16.0, color: Colors.white),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}