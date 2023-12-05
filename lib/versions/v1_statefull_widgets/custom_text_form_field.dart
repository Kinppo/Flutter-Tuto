import 'package:flutter/material.dart';

typedef IntValueSetter = void Function(int value);

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.labelText,
    required this.valueSetter,
    required this.controller,
    required this.onUpdate,
  });

  final String labelText;
  final IntValueSetter valueSetter;
  final TextEditingController controller;
  final VoidCallback onUpdate;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        labelText: labelText,
      ),
      keyboardType: const TextInputType.numberWithOptions(
        decimal: false,
        signed: true,
      ),
      validator: (value) {
        if (value == null || int.tryParse(value) == null) {
          return 'Must be an integer';
        } else {
          return null;
        }
      },
      controller: controller,
      onChanged: (newValue) {
        onUpdate();
      },
      onSaved: (newValue) {
        return valueSetter(int.parse(newValue ?? ""));
      },
    );
  }
}
