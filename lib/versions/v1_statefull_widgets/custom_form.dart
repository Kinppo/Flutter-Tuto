import 'package:flutter/material.dart';
import 'package:flutter_tuto/v1_statefull_widgets/custom_text_form_field.dart';

class CustomForm extends StatelessWidget {
  const CustomForm({
    super.key,
    required this.formKey,
    required this.minController,
    required this.maxController,
    required this.onUpdate,
    required this.minValueSetter,
    required this.maxValueSetter,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController minController;
  final TextEditingController maxController;
  final VoidCallback onUpdate;
  final IntValueSetter minValueSetter;
  final IntValueSetter maxValueSetter;

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
                controller: minController,
                onUpdate: onUpdate,
                valueSetter: (value) => minValueSetter(value)),
            const SizedBox(height: 12),
            CustomTextFormField(
              labelText: "Maximum",
              controller: maxController,
              onUpdate: onUpdate,
              valueSetter: (value) => maxValueSetter(value),
            ),
            Text(
              "Min: ${minController.text}",
              style: const TextStyle(
                fontSize: 16,
                color: Colors.green,
              ),
            ),
            Text(
              'Max: ${maxController.text}',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
      ),
    );
  }
}
