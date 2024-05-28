import 'package:flutter/material.dart';
import 'package:flutter_cat_api_app/controller/function_controller.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FunctionController>(context);
    final facts = provider.catsModel.fact.toString();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: const BoxDecoration(color: Colors.orangeAccent),
              height: 350,
              width: 250,
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(facts),
                  ElevatedButton(
                    onPressed: () {
                      provider.getFacts();
                    },
                    child: const Text('GET FACTS'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
