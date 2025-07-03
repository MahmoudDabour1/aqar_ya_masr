// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'advertiser_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AdvertiserState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String errorMessage) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String errorMessage)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AdvertiserInitial<T> value) initial,
    required TResult Function(AdvertiserLoading<T> value) loading,
    required TResult Function(AdvertiserSuccess<T> value) success,
    required TResult Function(AdvertiserFailure<T> value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AdvertiserInitial<T> value)? initial,
    TResult? Function(AdvertiserLoading<T> value)? loading,
    TResult? Function(AdvertiserSuccess<T> value)? success,
    TResult? Function(AdvertiserFailure<T> value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdvertiserInitial<T> value)? initial,
    TResult Function(AdvertiserLoading<T> value)? loading,
    TResult Function(AdvertiserSuccess<T> value)? success,
    TResult Function(AdvertiserFailure<T> value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdvertiserStateCopyWith<T, $Res> {
  factory $AdvertiserStateCopyWith(
          AdvertiserState<T> value, $Res Function(AdvertiserState<T>) then) =
      _$AdvertiserStateCopyWithImpl<T, $Res, AdvertiserState<T>>;
}

/// @nodoc
class _$AdvertiserStateCopyWithImpl<T, $Res, $Val extends AdvertiserState<T>>
    implements $AdvertiserStateCopyWith<T, $Res> {
  _$AdvertiserStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdvertiserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$AdvertiserInitialImplCopyWith<T, $Res> {
  factory _$$AdvertiserInitialImplCopyWith(_$AdvertiserInitialImpl<T> value,
          $Res Function(_$AdvertiserInitialImpl<T>) then) =
      __$$AdvertiserInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$AdvertiserInitialImplCopyWithImpl<T, $Res>
    extends _$AdvertiserStateCopyWithImpl<T, $Res, _$AdvertiserInitialImpl<T>>
    implements _$$AdvertiserInitialImplCopyWith<T, $Res> {
  __$$AdvertiserInitialImplCopyWithImpl(_$AdvertiserInitialImpl<T> _value,
      $Res Function(_$AdvertiserInitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AdvertiserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AdvertiserInitialImpl<T> implements AdvertiserInitial<T> {
  const _$AdvertiserInitialImpl();

  @override
  String toString() {
    return 'AdvertiserState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdvertiserInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String errorMessage) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String errorMessage)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String errorMessage)? failure,
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
    required TResult Function(AdvertiserInitial<T> value) initial,
    required TResult Function(AdvertiserLoading<T> value) loading,
    required TResult Function(AdvertiserSuccess<T> value) success,
    required TResult Function(AdvertiserFailure<T> value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AdvertiserInitial<T> value)? initial,
    TResult? Function(AdvertiserLoading<T> value)? loading,
    TResult? Function(AdvertiserSuccess<T> value)? success,
    TResult? Function(AdvertiserFailure<T> value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdvertiserInitial<T> value)? initial,
    TResult Function(AdvertiserLoading<T> value)? loading,
    TResult Function(AdvertiserSuccess<T> value)? success,
    TResult Function(AdvertiserFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class AdvertiserInitial<T> implements AdvertiserState<T> {
  const factory AdvertiserInitial() = _$AdvertiserInitialImpl<T>;
}

/// @nodoc
abstract class _$$AdvertiserLoadingImplCopyWith<T, $Res> {
  factory _$$AdvertiserLoadingImplCopyWith(_$AdvertiserLoadingImpl<T> value,
          $Res Function(_$AdvertiserLoadingImpl<T>) then) =
      __$$AdvertiserLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$AdvertiserLoadingImplCopyWithImpl<T, $Res>
    extends _$AdvertiserStateCopyWithImpl<T, $Res, _$AdvertiserLoadingImpl<T>>
    implements _$$AdvertiserLoadingImplCopyWith<T, $Res> {
  __$$AdvertiserLoadingImplCopyWithImpl(_$AdvertiserLoadingImpl<T> _value,
      $Res Function(_$AdvertiserLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AdvertiserState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AdvertiserLoadingImpl<T> implements AdvertiserLoading<T> {
  const _$AdvertiserLoadingImpl();

  @override
  String toString() {
    return 'AdvertiserState<$T>.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdvertiserLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String errorMessage) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String errorMessage)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AdvertiserInitial<T> value) initial,
    required TResult Function(AdvertiserLoading<T> value) loading,
    required TResult Function(AdvertiserSuccess<T> value) success,
    required TResult Function(AdvertiserFailure<T> value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AdvertiserInitial<T> value)? initial,
    TResult? Function(AdvertiserLoading<T> value)? loading,
    TResult? Function(AdvertiserSuccess<T> value)? success,
    TResult? Function(AdvertiserFailure<T> value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdvertiserInitial<T> value)? initial,
    TResult Function(AdvertiserLoading<T> value)? loading,
    TResult Function(AdvertiserSuccess<T> value)? success,
    TResult Function(AdvertiserFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class AdvertiserLoading<T> implements AdvertiserState<T> {
  const factory AdvertiserLoading() = _$AdvertiserLoadingImpl<T>;
}

/// @nodoc
abstract class _$$AdvertiserSuccessImplCopyWith<T, $Res> {
  factory _$$AdvertiserSuccessImplCopyWith(_$AdvertiserSuccessImpl<T> value,
          $Res Function(_$AdvertiserSuccessImpl<T>) then) =
      __$$AdvertiserSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$AdvertiserSuccessImplCopyWithImpl<T, $Res>
    extends _$AdvertiserStateCopyWithImpl<T, $Res, _$AdvertiserSuccessImpl<T>>
    implements _$$AdvertiserSuccessImplCopyWith<T, $Res> {
  __$$AdvertiserSuccessImplCopyWithImpl(_$AdvertiserSuccessImpl<T> _value,
      $Res Function(_$AdvertiserSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AdvertiserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$AdvertiserSuccessImpl<T>(
      freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$AdvertiserSuccessImpl<T> implements AdvertiserSuccess<T> {
  const _$AdvertiserSuccessImpl(this.data);

  @override
  final T data;

  @override
  String toString() {
    return 'AdvertiserState<$T>.success(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdvertiserSuccessImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  /// Create a copy of AdvertiserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdvertiserSuccessImplCopyWith<T, _$AdvertiserSuccessImpl<T>>
      get copyWith =>
          __$$AdvertiserSuccessImplCopyWithImpl<T, _$AdvertiserSuccessImpl<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String errorMessage) failure,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String errorMessage)? failure,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AdvertiserInitial<T> value) initial,
    required TResult Function(AdvertiserLoading<T> value) loading,
    required TResult Function(AdvertiserSuccess<T> value) success,
    required TResult Function(AdvertiserFailure<T> value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AdvertiserInitial<T> value)? initial,
    TResult? Function(AdvertiserLoading<T> value)? loading,
    TResult? Function(AdvertiserSuccess<T> value)? success,
    TResult? Function(AdvertiserFailure<T> value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdvertiserInitial<T> value)? initial,
    TResult Function(AdvertiserLoading<T> value)? loading,
    TResult Function(AdvertiserSuccess<T> value)? success,
    TResult Function(AdvertiserFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class AdvertiserSuccess<T> implements AdvertiserState<T> {
  const factory AdvertiserSuccess(final T data) = _$AdvertiserSuccessImpl<T>;

  T get data;

  /// Create a copy of AdvertiserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdvertiserSuccessImplCopyWith<T, _$AdvertiserSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AdvertiserFailureImplCopyWith<T, $Res> {
  factory _$$AdvertiserFailureImplCopyWith(_$AdvertiserFailureImpl<T> value,
          $Res Function(_$AdvertiserFailureImpl<T>) then) =
      __$$AdvertiserFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$AdvertiserFailureImplCopyWithImpl<T, $Res>
    extends _$AdvertiserStateCopyWithImpl<T, $Res, _$AdvertiserFailureImpl<T>>
    implements _$$AdvertiserFailureImplCopyWith<T, $Res> {
  __$$AdvertiserFailureImplCopyWithImpl(_$AdvertiserFailureImpl<T> _value,
      $Res Function(_$AdvertiserFailureImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of AdvertiserState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$AdvertiserFailureImpl<T>(
      errorMessage: null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AdvertiserFailureImpl<T> implements AdvertiserFailure<T> {
  const _$AdvertiserFailureImpl({required this.errorMessage});

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'AdvertiserState<$T>.failure(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdvertiserFailureImpl<T> &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  /// Create a copy of AdvertiserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdvertiserFailureImplCopyWith<T, _$AdvertiserFailureImpl<T>>
      get copyWith =>
          __$$AdvertiserFailureImplCopyWithImpl<T, _$AdvertiserFailureImpl<T>>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(String errorMessage) failure,
  }) {
    return failure(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(String errorMessage)? failure,
  }) {
    return failure?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(String errorMessage)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(AdvertiserInitial<T> value) initial,
    required TResult Function(AdvertiserLoading<T> value) loading,
    required TResult Function(AdvertiserSuccess<T> value) success,
    required TResult Function(AdvertiserFailure<T> value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(AdvertiserInitial<T> value)? initial,
    TResult? Function(AdvertiserLoading<T> value)? loading,
    TResult? Function(AdvertiserSuccess<T> value)? success,
    TResult? Function(AdvertiserFailure<T> value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(AdvertiserInitial<T> value)? initial,
    TResult Function(AdvertiserLoading<T> value)? loading,
    TResult Function(AdvertiserSuccess<T> value)? success,
    TResult Function(AdvertiserFailure<T> value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class AdvertiserFailure<T> implements AdvertiserState<T> {
  const factory AdvertiserFailure({required final String errorMessage}) =
      _$AdvertiserFailureImpl<T>;

  String get errorMessage;

  /// Create a copy of AdvertiserState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdvertiserFailureImplCopyWith<T, _$AdvertiserFailureImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
