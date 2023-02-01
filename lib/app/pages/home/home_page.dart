import 'package:dw_delivery_app/app/core/ui/widgets/delivery_app_bar.dart';
import 'package:dw_delivery_app/app/models/product_model.dart';
import 'package:dw_delivery_app/app/pages/home/widgets/delivery_product_tile.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DeliveryAppBar(),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 5,
              itemBuilder: (context, index) {
                return DeliveryProductTile(
                  product: ProductModel(
                    id: 0,
                    name: 'Lanche X',
                    description: 'Lanche acompanha pão, hambúrguer, mussarela e maionese.',
                    price: 15.0,
                    image: 'https://assets.unileversolutions.com/recipes-v2/106684.jpg?imwidth=800',
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
