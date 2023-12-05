import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_tuto/v2_hook_widgets/custom_form.dart';
import 'package:flutter_tuto/v2_hook_widgets/randomizer_page.dart';

class RangePage extends HookWidget {
  RangePage({super.key, required this.title});
  final String title;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final min = useState<int>(0);
    final max = useState<int>(0);

    final minController = useTextEditingController();
    final maxController = useTextEditingController();
    useListenable(minController);
    useListenable(maxController);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(title),
      ),
      body: CustomForm(
        formKey: formKey,
        minController: minController,
        maxController: maxController,
        minValueSetter: (value) => min.value = value,
        maxValueSetter: (value) => max.value = value,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (formKey.currentState?.validate() == true) {
            formKey.currentState?.save();
            // print("Hello world!");
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) =>
                    RandomizerPage(min: min.value, max: max.value)));
          }
        },
        tooltip: 'Go',
        child: const Icon(Icons.arrow_forward),
      ),
    );
  }
}
