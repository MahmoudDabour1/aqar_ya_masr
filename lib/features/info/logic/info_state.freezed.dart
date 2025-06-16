// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'info_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InfoState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() priceGuideLoading,
    required TResult Function(PriceGuideModel priceGuideModel)
        priceGuideSuccess,
    required TResult Function(String error) priceGuideFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? priceGuideLoading,
    TResult? Function(PriceGuideModel priceGuideModel)? priceGuideSuccess,
    TResult? Function(String error)? priceGuideFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? priceGuideLoading,
    TResult Function(PriceGuideModel priceGuideModel)? priceGuideSuccess,
    TResult Function(String error)? priceGuideFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InfoInitial<T> value) initial,
    required TResult Function(PriceGuideLoading<T> value) priceGuideLoading,
    required TResult Function(PriceGuideSuccess<T> value) priceGuideSuccess,
    required TResult Function(PriceGuideFailure<T> value) priceGuideFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InfoInitial<T> value)? initial,
    TResult? Function(PriceGuideLoading<T> value)? priceGuideLoading,
    TResult? Function(PriceGuideSuccess<T> value)? priceGuideSuccess,
    TResult? Function(PriceGuideFailure<T> value)? priceGuideFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InfoInitial<T> value)? initial,
    TResult Function(PriceGuideLoading<T> value)? priceGuideLoading,
    TResult Function(PriceGuideSuccess<T> value)? priceGuideSuccess,
    TResult Function(PriceGuideFailure<T> value)? priceGuideFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfoStateCopyWith<T, $Res> {
  factory $InfoStateCopyWith(
          InfoState<T> value, $Res Function(InfoState<T>) then) =
      _$InfoStateCopyWithImpl<T, $Res, InfoState<T>>;
}

/// @nodoc
class _$InfoStateCopyWithImpl<T, $Res, $Val extends InfoState<T>>
    implements $InfoStateCopyWith<T, $Res> {
  _$InfoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InfoState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InfoInitialImplCopyWith<T, $Res> {
  factory _$$InfoInitialImplCopyWith(_$InfoInitialImpl<T> value,
          $Res Function(_$InfoInitialImpl<T>) then) =
      __$$InfoInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$InfoInitialImplCopyWithImpl<T, $Res>
    extends _$InfoStateCopyWithImpl<T, $Res, _$InfoInitialImpl<T>>
    implements _$$InfoInitialImplCopyWith<T, $Res> {
  __$$InfoInitialImplCopyWithImpl(
      _$InfoInitialImpl<T> _value, $Res Function(_$InfoInitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of InfoState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InfoInitialImpl<T> implements InfoInitial<T> {
  const _$InfoInitialImpl();

  @override
  String toString() {
    return 'InfoState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InfoInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() priceGuideLoading,
    required TResult Function(PriceGuideModel priceGuideModel)
        priceGuideSuccess,
    required TResult Function(String error) priceGuideFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? priceGuideLoading,
    TResult? Function(PriceGuideModel priceGuideModel)? priceGuideSuccess,
    TResult? Function(String error)? priceGuideFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? priceGuideLoading,
    TResult Function(PriceGuideModel priceGuideModel)? priceGuideSuccess,
    TResult Function(String error)? priceGuideFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InfoInitial<T> value) initial,
    required TResult Function(PriceGuideLoading<T> value) priceGuideLoading,
    required TResult Function(PriceGuideSuccess<T> value) priceGuideSuccess,
    required TResult Function(PriceGuideFailure<T> value) priceGuideFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InfoInitial<T> value)? initial,
    TResult? Function(PriceGuideLoading<T> value)? priceGuideLoading,
    TResult? Function(PriceGuideSuccess<T> value)? priceGuideSuccess,
    TResult? Function(PriceGuideFailure<T> value)? priceGuideFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InfoInitial<T> value)? initial,
    TResult Function(PriceGuideLoading<T> value)? priceGuideLoading,
    TResult Function(PriceGuideSuccess<T> value)? priceGuideSuccess,
    TResult Function(PriceGuideFailure<T> value)? priceGuideFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InfoInitial<T> implements InfoState<T> {
  const factory InfoInitial() = _$InfoInitialImpl<T>;
}

/// @nodoc
abstract class _$$PriceGuideLoadingImplCopyWith<T, $Res> {
  factory _$$PriceGuideLoadingImplCopyWith(_$PriceGuideLoadingImpl<T> value,
          $Res Function(_$PriceGuideLoadingImpl<T>) then) =
      __$$PriceGuideLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$PriceGuideLoadingImplCopyWithImpl<T, $Res>
    extends _$InfoStateCopyWithImpl<T, $Res, _$PriceGuideLoadingImpl<T>>
    implements _$$PriceGuideLoadingImplCopyWith<T, $Res> {
  __$$PriceGuideLoadingImplCopyWithImpl(_$PriceGuideLoadingImpl<T> _value,
      $Res Function(_$PriceGuideLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of InfoState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PriceGuideLoadingImpl<T> implements PriceGuideLoading<T> {
  const _$PriceGuideLoadingImpl();

  @override
  String toString() {
    return 'InfoState<$T>.priceGuideLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriceGuideLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() priceGuideLoading,
    required TResult Function(PriceGuideModel priceGuideModel)
        priceGuideSuccess,
    required TResult Function(String error) priceGuideFailure,
  }) {
    return priceGuideLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? priceGuideLoading,
    TResult? Function(PriceGuideModel priceGuideModel)? priceGuideSuccess,
    TResult? Function(String error)? priceGuideFailure,
  }) {
    return priceGuideLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? priceGuideLoading,
    TResult Function(PriceGuideModel priceGuideModel)? priceGuideSuccess,
    TResult Function(String error)? priceGuideFailure,
    required TResult orElse(),
  }) {
    if (priceGuideLoading != null) {
      return priceGuideLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InfoInitial<T> value) initial,
    required TResult Function(PriceGuideLoading<T> value) priceGuideLoading,
    required TResult Function(PriceGuideSuccess<T> value) priceGuideSuccess,
    required TResult Function(PriceGuideFailure<T> value) priceGuideFailure,
  }) {
    return priceGuideLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InfoInitial<T> value)? initial,
    TResult? Function(PriceGuideLoading<T> value)? priceGuideLoading,
    TResult? Function(PriceGuideSuccess<T> value)? priceGuideSuccess,
    TResult? Function(PriceGuideFailure<T> value)? priceGuideFailure,
  }) {
    return priceGuideLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InfoInitial<T> value)? initial,
    TResult Function(PriceGuideLoading<T> value)? priceGuideLoading,
    TResult Function(PriceGuideSuccess<T> value)? priceGuideSuccess,
    TResult Function(PriceGuideFailure<T> value)? priceGuideFailure,
    required TResult orElse(),
  }) {
    if (priceGuideLoading != null) {
      return priceGuideLoading(this);
    }
    return orElse();
  }
}

abstract class PriceGuideLoading<T> implements InfoState<T> {
  const factory PriceGuideLoading() = _$PriceGuideLoadingImpl<T>;
}

/// @nodoc
abstract class _$$PriceGuideSuccessImplCopyWith<T, $Res> {
  factory _$$PriceGuideSuccessImplCopyWith(_$PriceGuideSuccessImpl<T> value,
          $Res Function(_$PriceGuideSuccessImpl<T>) then) =
      __$$PriceGuideSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({PriceGuideModel priceGuideModel});
}

/// @nodoc
class __$$PriceGuideSuccessImplCopyWithImpl<T, $Res>
    extends _$InfoStateCopyWithImpl<T, $Res, _$PriceGuideSuccessImpl<T>>
    implements _$$PriceGuideSuccessImplCopyWith<T, $Res> {
  __$$PriceGuideSuccessImplCopyWithImpl(_$PriceGuideSuccessImpl<T> _value,
      $Res Function(_$PriceGuideSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of InfoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? priceGuideModel = null,
  }) {
    return _then(_$PriceGuideSuccessImpl<T>(
      null == priceGuideModel
          ? _value.priceGuideModel
          : priceGuideModel // ignore: cast_nullable_to_non_nullable
              as PriceGuideModel,
    ));
  }
}

/// @nodoc

class _$PriceGuideSuccessImpl<T> implements PriceGuideSuccess<T> {
  const _$PriceGuideSuccessImpl(this.priceGuideModel);

  @override
  final PriceGuideModel priceGuideModel;

  @override
  String toString() {
    return 'InfoState<$T>.priceGuideSuccess(priceGuideModel: $priceGuideModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriceGuideSuccessImpl<T> &&
            (identical(other.priceGuideModel, priceGuideModel) ||
                other.priceGuideModel == priceGuideModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, priceGuideModel);

  /// Create a copy of InfoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PriceGuideSuccessImplCopyWith<T, _$PriceGuideSuccessImpl<T>>
      get copyWith =>
          __$$PriceGuideSuccessImplCopyWithImpl<T, _$PriceGuideSuccessImpl<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() priceGuideLoading,
    required TResult Function(PriceGuideModel priceGuideModel)
        priceGuideSuccess,
    required TResult Function(String error) priceGuideFailure,
  }) {
    return priceGuideSuccess(priceGuideModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? priceGuideLoading,
    TResult? Function(PriceGuideModel priceGuideModel)? priceGuideSuccess,
    TResult? Function(String error)? priceGuideFailure,
  }) {
    return priceGuideSuccess?.call(priceGuideModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? priceGuideLoading,
    TResult Function(PriceGuideModel priceGuideModel)? priceGuideSuccess,
    TResult Function(String error)? priceGuideFailure,
    required TResult orElse(),
  }) {
    if (priceGuideSuccess != null) {
      return priceGuideSuccess(priceGuideModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InfoInitial<T> value) initial,
    required TResult Function(PriceGuideLoading<T> value) priceGuideLoading,
    required TResult Function(PriceGuideSuccess<T> value) priceGuideSuccess,
    required TResult Function(PriceGuideFailure<T> value) priceGuideFailure,
  }) {
    return priceGuideSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InfoInitial<T> value)? initial,
    TResult? Function(PriceGuideLoading<T> value)? priceGuideLoading,
    TResult? Function(PriceGuideSuccess<T> value)? priceGuideSuccess,
    TResult? Function(PriceGuideFailure<T> value)? priceGuideFailure,
  }) {
    return priceGuideSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InfoInitial<T> value)? initial,
    TResult Function(PriceGuideLoading<T> value)? priceGuideLoading,
    TResult Function(PriceGuideSuccess<T> value)? priceGuideSuccess,
    TResult Function(PriceGuideFailure<T> value)? priceGuideFailure,
    required TResult orElse(),
  }) {
    if (priceGuideSuccess != null) {
      return priceGuideSuccess(this);
    }
    return orElse();
  }
}

abstract class PriceGuideSuccess<T> implements InfoState<T> {
  const factory PriceGuideSuccess(final PriceGuideModel priceGuideModel) =
      _$PriceGuideSuccessImpl<T>;

  PriceGuideModel get priceGuideModel;

  /// Create a copy of InfoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PriceGuideSuccessImplCopyWith<T, _$PriceGuideSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PriceGuideFailureImplCopyWith<T, $Res> {
  factory _$$PriceGuideFailureImplCopyWith(_$PriceGuideFailureImpl<T> value,
          $Res Function(_$PriceGuideFailureImpl<T>) then) =
      __$$PriceGuideFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$PriceGuideFailureImplCopyWithImpl<T, $Res>
    extends _$InfoStateCopyWithImpl<T, $Res, _$PriceGuideFailureImpl<T>>
    implements _$$PriceGuideFailureImplCopyWith<T, $Res> {
  __$$PriceGuideFailureImplCopyWithImpl(_$PriceGuideFailureImpl<T> _value,
      $Res Function(_$PriceGuideFailureImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of InfoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$PriceGuideFailureImpl<T>(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PriceGuideFailureImpl<T> implements PriceGuideFailure<T> {
  const _$PriceGuideFailureImpl({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'InfoState<$T>.priceGuideFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PriceGuideFailureImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of InfoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PriceGuideFailureImplCopyWith<T, _$PriceGuideFailureImpl<T>>
      get copyWith =>
          __$$PriceGuideFailureImplCopyWithImpl<T, _$PriceGuideFailureImpl<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() priceGuideLoading,
    required TResult Function(PriceGuideModel priceGuideModel)
        priceGuideSuccess,
    required TResult Function(String error) priceGuideFailure,
  }) {
    return priceGuideFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? priceGuideLoading,
    TResult? Function(PriceGuideModel priceGuideModel)? priceGuideSuccess,
    TResult? Function(String error)? priceGuideFailure,
  }) {
    return priceGuideFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? priceGuideLoading,
    TResult Function(PriceGuideModel priceGuideModel)? priceGuideSuccess,
    TResult Function(String error)? priceGuideFailure,
    required TResult orElse(),
  }) {
    if (priceGuideFailure != null) {
      return priceGuideFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InfoInitial<T> value) initial,
    required TResult Function(PriceGuideLoading<T> value) priceGuideLoading,
    required TResult Function(PriceGuideSuccess<T> value) priceGuideSuccess,
    required TResult Function(PriceGuideFailure<T> value) priceGuideFailure,
  }) {
    return priceGuideFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InfoInitial<T> value)? initial,
    TResult? Function(PriceGuideLoading<T> value)? priceGuideLoading,
    TResult? Function(PriceGuideSuccess<T> value)? priceGuideSuccess,
    TResult? Function(PriceGuideFailure<T> value)? priceGuideFailure,
  }) {
    return priceGuideFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InfoInitial<T> value)? initial,
    TResult Function(PriceGuideLoading<T> value)? priceGuideLoading,
    TResult Function(PriceGuideSuccess<T> value)? priceGuideSuccess,
    TResult Function(PriceGuideFailure<T> value)? priceGuideFailure,
    required TResult orElse(),
  }) {
    if (priceGuideFailure != null) {
      return priceGuideFailure(this);
    }
    return orElse();
  }
}

abstract class PriceGuideFailure<T> implements InfoState<T> {
  const factory PriceGuideFailure({required final String error}) =
      _$PriceGuideFailureImpl<T>;

  String get error;

  /// Create a copy of InfoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PriceGuideFailureImplCopyWith<T, _$PriceGuideFailureImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
