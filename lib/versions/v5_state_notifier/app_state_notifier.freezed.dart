// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_state_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppState {
  int get min => throw _privateConstructorUsedError;
  int get max => throw _privateConstructorUsedError;
  int? get generatedNumber => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;
  bool get isSwitched => throw _privateConstructorUsedError;
  bool? get isChecked => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppStateCopyWith<AppState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
  @useResult
  $Res call(
      {int min,
      int max,
      int? generatedNumber,
      int currentPage,
      bool isSwitched,
      bool? isChecked});
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? min = null,
    Object? max = null,
    Object? generatedNumber = freezed,
    Object? currentPage = null,
    Object? isSwitched = null,
    Object? isChecked = freezed,
  }) {
    return _then(_value.copyWith(
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
      generatedNumber: freezed == generatedNumber
          ? _value.generatedNumber
          : generatedNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      isSwitched: null == isSwitched
          ? _value.isSwitched
          : isSwitched // ignore: cast_nullable_to_non_nullable
              as bool,
      isChecked: freezed == isChecked
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppStateImplCopyWith<$Res>
    implements $AppStateCopyWith<$Res> {
  factory _$$AppStateImplCopyWith(
          _$AppStateImpl value, $Res Function(_$AppStateImpl) then) =
      __$$AppStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int min,
      int max,
      int? generatedNumber,
      int currentPage,
      bool isSwitched,
      bool? isChecked});
}

/// @nodoc
class __$$AppStateImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$AppStateImpl>
    implements _$$AppStateImplCopyWith<$Res> {
  __$$AppStateImplCopyWithImpl(
      _$AppStateImpl _value, $Res Function(_$AppStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? min = null,
    Object? max = null,
    Object? generatedNumber = freezed,
    Object? currentPage = null,
    Object? isSwitched = null,
    Object? isChecked = freezed,
  }) {
    return _then(_$AppStateImpl(
      min: null == min
          ? _value.min
          : min // ignore: cast_nullable_to_non_nullable
              as int,
      max: null == max
          ? _value.max
          : max // ignore: cast_nullable_to_non_nullable
              as int,
      generatedNumber: freezed == generatedNumber
          ? _value.generatedNumber
          : generatedNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
      isSwitched: null == isSwitched
          ? _value.isSwitched
          : isSwitched // ignore: cast_nullable_to_non_nullable
              as bool,
      isChecked: freezed == isChecked
          ? _value.isChecked
          : isChecked // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$AppStateImpl extends _AppState with DiagnosticableTreeMixin {
  const _$AppStateImpl(
      {this.min = 0,
      this.max = 0,
      this.generatedNumber,
      this.currentPage = 0,
      this.isSwitched = false,
      this.isChecked = false})
      : super._();

  @override
  @JsonKey()
  final int min;
  @override
  @JsonKey()
  final int max;
  @override
  final int? generatedNumber;
  @override
  @JsonKey()
  final int currentPage;
  @override
  @JsonKey()
  final bool isSwitched;
  @override
  @JsonKey()
  final bool? isChecked;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AppState(min: $min, max: $max, generatedNumber: $generatedNumber, currentPage: $currentPage, isSwitched: $isSwitched, isChecked: $isChecked)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AppState'))
      ..add(DiagnosticsProperty('min', min))
      ..add(DiagnosticsProperty('max', max))
      ..add(DiagnosticsProperty('generatedNumber', generatedNumber))
      ..add(DiagnosticsProperty('currentPage', currentPage))
      ..add(DiagnosticsProperty('isSwitched', isSwitched))
      ..add(DiagnosticsProperty('isChecked', isChecked));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppStateImpl &&
            (identical(other.min, min) || other.min == min) &&
            (identical(other.max, max) || other.max == max) &&
            (identical(other.generatedNumber, generatedNumber) ||
                other.generatedNumber == generatedNumber) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.isSwitched, isSwitched) ||
                other.isSwitched == isSwitched) &&
            (identical(other.isChecked, isChecked) ||
                other.isChecked == isChecked));
  }

  @override
  int get hashCode => Object.hash(runtimeType, min, max, generatedNumber,
      currentPage, isSwitched, isChecked);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      __$$AppStateImplCopyWithImpl<_$AppStateImpl>(this, _$identity);
}

abstract class _AppState extends AppState {
  const factory _AppState(
      {final int min,
      final int max,
      final int? generatedNumber,
      final int currentPage,
      final bool isSwitched,
      final bool? isChecked}) = _$AppStateImpl;
  const _AppState._() : super._();

  @override
  int get min;
  @override
  int get max;
  @override
  int? get generatedNumber;
  @override
  int get currentPage;
  @override
  bool get isSwitched;
  @override
  bool? get isChecked;
  @override
  @JsonKey(ignore: true)
  _$$AppStateImplCopyWith<_$AppStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
