import 'package:flutter/material.dart';
import 'package:flutter_tuto/v1_statefull_widgets/custom_form.dart';
import 'package:flutter_tuto/v1_statefull_widgets/randomizer_page.dart';

class RangePage extends StatefulWidget {
  const RangePage({super.key, required this.title});
  final String title;

  @override
  State<RangePage> createState() => _RangePageState();
}

class _RangePageState extends State<RangePage> {
  final formKey = GlobalKey<FormState>();
  int _min = 0;
  int _max = 0;

  final TextEditingController _minController = TextEditingController();
  final TextEditingController _maxController = TextEditingController();

  @override
  void dispose() {
    _minController.dispose();
    _maxController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: CustomForm(
        formKey: formKey,
        minController: _minController,
        maxController: _maxController,
        minValueSetter: (value) => _min = value,
        maxValueSetter: (value) => _max = value,
        onUpdate: () => setState(() {}),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (formKey.currentState?.validate() == true) {
            formKey.currentState?.save();
            // print("Hello world!");
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => RandomizerPage(min: _min, max: _max)));
          }
        },
        tooltip: 'Go',
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
