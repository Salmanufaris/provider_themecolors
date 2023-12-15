import 'package:flutter/material.dart';
import 'package:flutter_application_1/providercolor.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Provider.of<ColorProvider>(context, listen: false).colorchanging();
          },
          child: Consumer<ColorProvider>(builder: (context, value, child) {
            return Container(
              height: 200,
              width: 200,
              decoration:
                  BoxDecoration(color: value.collors.elementAt(value.theme)),
            );
          }),
        ),
      ),
    );
  }
}
