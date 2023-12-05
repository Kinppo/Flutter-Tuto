import 'package:flutter/material.dart';
import 'package:flutter_tuto/custom_text_form_field.dart';
import 'package:flutter_tuto/randomizer_change_notifier.dart';
import 'package:provider/provider.dart';

class CustomForm extends StatelessWidget {
  const CustomForm({
    super.key,
    required this.formKey,
  });

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CustomTextFormField(
                labelText: "Minimum",
                valueSetter: (value) =>
                    context.read<RandomizerChangeNotifier>().setMin(value)),
            const SizedBox(height: 12),
            CustomTextFormField(
              labelText: "Maximum",
              valueSetter: (value) =>
                  context.read<RandomizerChangeNotifier>().setMax(value),
            ),
            Consumer<RandomizerChangeNotifier>(
              builder: (context, notifier, child) {
                return Text(
                  "Min: ${notifier.min.toString()}",
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.green,
                  ),
                );
              },
            ),
            Consumer<RandomizerChangeNotifier>(
              builder: (context, notifier, child) {
                return Text(
                  'Max: ${notifier.max.toString()}',
                  style: Theme.of(context).textTheme.bodyMedium,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
