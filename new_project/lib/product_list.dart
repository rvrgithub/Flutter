import 'package:flutter/material.dart';
import 'package:new_project/Products/bike_page.dart';
import 'package:new_project/Products/car_page.dart';

class ProductsList extends StatefulWidget {
  const ProductsList({super.key});

  @override
  State<ProductsList> createState() => _ProductsListState();
}

class _ProductsListState extends State<ProductsList> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(
                title: Text(
                  "Product List",
                ),
                bottom: TabBar(tabs: [
                  Tab(
                    text: "Car",
                  ),
                  Tab(
                    text: "Scooty",
                  ),
                  Tab(
                    text: "Bike",
                  )
                ])),
            body: SafeArea(
              minimum: EdgeInsets.all(18),
              right: true,
              child: TabBarView(
                children: [
                  Container(
                    child: CarPage(),
                  ),
                  Row(
                    children: [
                      Container(
                        child: BikePage(),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Text("Car 1"),
                      Image.network(
                          "https://img.freepik.com/premium-photo/color-blue-green-american-luxury-classic-muscle-car-mustang-free-download-images_63106-1544.jpg")
                    ],
                  ),
                ],
              ),
            )));
  }
}
