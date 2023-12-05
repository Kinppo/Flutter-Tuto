import 'dart:math';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_state_notifier.freezed.dart';

@freezed
class AppState with _$AppState {
  const AppState._();
  const factory AppState({
    @Default(0) int min,
    @Default(0) int max,
    int? generatedNumber,
    @Default(0) int currentPage,
    @Default(false) bool isSwitched,
    @Default(false) bool? isChecked,
  }) = _AppState;
}

class AppStateNotifier extends StateNotifier<AppState> {
  AppStateNotifier() : super(const AppState());

  final _randomGenerator = Random();

  void generateRandomNumber() {
    state = state.copyWith(
      generatedNumber:
          state.min + _randomGenerator.nextInt(state.max + 1 - state.min),
    );
  }

  void setMin(int value) {
    state = state.copyWith(min: value);
  }

  void setMax(int value) {
    state = state.copyWith(max: value);
  }

  void doSwitch(bool value) {
    state = state.copyWith(isSwitched: value);
  }

  void doCheck(bool? value) {
    state = state.copyWith(isChecked: value);
  }

  void updateCurrentPage(int value) {
    state = state.copyWith(currentPage: value);
  }
}
