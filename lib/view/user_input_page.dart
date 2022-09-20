import 'package:flutter/material.dart';

class UserInputPage extends StatefulWidget {
   const UserInputPage({Key? key}) : super(key: key);

  @override
  State<UserInputPage> createState() => _UserInputPageState();
}

class _UserInputPageState extends State<UserInputPage> {
  final _weightTextController = TextEditingController();

  final _heightTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI Calculator'),
        leading: const Icon(Icons.calculate),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
             TextField(
              controller: _weightTextController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  filled: true,
                  label: Text('Weight'),
                  icon: Icon(Icons.monitor_weight_outlined),
                  hintText: 'weight in kg',
                  border: InputBorder.none),
            ),
            const SizedBox(
              height: 20.0,
            ),
             TextField(
              controller: _heightTextController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                  label: Text('Height'),
                  hintText: 'height in feet',
                  filled: true,
                  icon: Icon(Icons.height_outlined),
                  border: InputBorder.none),
            ),
            const SizedBox(
              height: 20.0,
            ),
            ElevatedButton(
              onPressed: () {
                print('ok');
              },
              child: const Text('Calculate'),
            ),
          ],
        ),
      ),
    );
  }
}
