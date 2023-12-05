import 'package:flutter/material.dart';
import 'package:flutter_tuto/custom_form.dart';
import 'package:flutter_tuto/main.dart';
import 'package:flutter_tuto/randomizer_page.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomePage extends ConsumerWidget {
  HomePage({super.key});
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providerRef = ref.watch(appProvider);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset('images/img.jpg'),
            const Divider(color: Colors.black),
            const SizedBox(height: 6),
            GestureDetector(
              behavior: HitTestBehavior.opaque,
              onTap: () {
                debugPrint('This is a Container');
              },
              child: Container(
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.all(10),
                color: Colors.red,
                width: double.infinity,
                child: const Center(
                  child: Text(
                    'This is a test',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
              onPressed: () {
                debugPrint('Elevated Button');
              },
              child: const Row(children: [
                Icon(
                  Icons.home,
                  color: Colors.amber,
                ),
                SizedBox(width: 12),
                Text('Elevated Button'),
              ]),
            ),
            ElevatedButton(
              style: const ButtonStyle(
                backgroundColor:
                    MaterialStatePropertyAll<Color>(Colors.purpleAccent),
                iconColor: MaterialStatePropertyAll<Color>(Colors.green),
              ),
              onPressed: () {
                debugPrint('Elevated Button');
              },
              child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.home),
                    SizedBox(width: 12),
                    Text('Elevated Button'),
                  ]),
            ),
            Row(
              children: [
                OutlinedButton(
                  onPressed: () {
                    debugPrint('Outlined Button');
                  },
                  child: const Text('Outlined Button'),
                ),
                TextButton(
                  onPressed: () {
                    debugPrint('Text Button');
                  },
                  child: const Text('Text Button'),
                ),
                Switch(
                  value: providerRef.isSwitched,
                  onChanged: (value) => {
                    ref.read(appProvider).doSwitch(value),
                  },
                ),
                Checkbox(
                  value: providerRef.isChecked,
                  onChanged: (value) => {
                    ref.read(appProvider).doCheck(value),
                  },
                ),
              ],
            ),
            Image.network("https://i.ibb.co/t406563/Wallo-Developers1.png"),
            CustomForm(formKey: formKey),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (formKey.currentState?.validate() == true) {
            formKey.currentState?.save();
            // print("Hello world!");
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => RandomizerPage()),
            );
          }
        },
        tooltip: 'Go',
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
