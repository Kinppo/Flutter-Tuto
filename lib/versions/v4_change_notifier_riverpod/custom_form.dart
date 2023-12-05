import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_tuto/custom_text_form_field.dart';
import 'package:flutter_tuto/app_change_notifier.dart';
import 'package:flutter_tuto/main.dart';
import 'package:provider/provider.dart';

class CustomForm extends ConsumerWidget {
  const CustomForm({
    super.key,
    required this.formKey,
  });

  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final providerRef = ref.watch(appProvider);

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
                valueSetter: (value) => ref.read(appProvider).setMin(value)),
            const SizedBox(height: 12),
            CustomTextFormField(
              labelText: "Maximum",
              valueSetter: (value) => ref.read(appProvider).setMax(value),
            ),
            Text(
              "Min: ${providerRef.min.toString()}",
              style: const TextStyle(
                fontSize: 12,
                color: Colors.green,
              ),
            ),
            Text(
              'Max: ${providerRef.max.toString()}',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
