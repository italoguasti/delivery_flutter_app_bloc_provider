import 'package:dw_delivery_app/app/core/ui/helpers/size_extensions.dart';
import 'package:dw_delivery_app/app/core/ui/styles/text_styles.dart';
import 'package:dw_delivery_app/app/core/ui/widgets/delivery_app_bar.dart';
import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  const ProductDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DeliveryAppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: context.screenWidth,
            height: context.percentHeight(.4),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://burger.eriklima.me/wp-content/uploads/2021/03/X-Bacon.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Text(
              'X-Burguer',
              style: context.textStyles.textExtraBold.copyWith(fontSize: 22.0),
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: Text(
                  'Lanche acompanha pão, hambúrguer, queijo cheddar, bacon e molho especial'),
            ),
          ),
          const Text('Parei na edição do singlechildscrollview 16 min'),
        ],
      ),
    );
  }
}
