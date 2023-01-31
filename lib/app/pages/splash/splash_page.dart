import 'package:dw_delivery_app/app/core/ui/helpers/size_extensions.dart';
import 'package:dw_delivery_app/app/core/ui/widgets/delivery_button.dart';
import 'package:flutter/material.dart';

import '../../core/config/env/env.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Splash'),
      ),
      body: Column(
        children: [
          Container(),
          DeliveryButton(
            label: Env.i['backend_base_url'] ?? '',
            onPressed: () {},
            width: 200.0,
            height: 200.0,
          ),
          Text(context.screenHeight.toString()),
          Text(context.screenWidth.toString()),
          Row(
            children: [
              Container(
                color: Colors.red,
                width: context.percentWidth(.5),
                height: 200.0,
              ),
              Container(
                color: Colors.blue,
                width: context.percentWidth(.5),
                height: 200.0,
              ),
            ],
          ),
          TextFormField(
            decoration: const InputDecoration(labelText: 'text'),
          ),
        ],
      ),
    );
  }
}
