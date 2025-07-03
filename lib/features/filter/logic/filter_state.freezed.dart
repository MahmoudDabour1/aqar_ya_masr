// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'filter_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$FilterState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() filterInitial,
    required TResult Function() filterLoading,
    required TResult Function(FilterResponseModel filterResponseModel)
        filterSuccess,
    required TResult Function(String message) filterError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? filterInitial,
    TResult? Function()? filterLoading,
    TResult? Function(FilterResponseModel filterResponseModel)? filterSuccess,
    TResult? Function(String message)? filterError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? filterInitial,
    TResult Function()? filterLoading,
    TResult Function(FilterResponseModel filterResponseModel)? filterSuccess,
    TResult Function(String message)? filterError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FilterInitial<T> value) filterInitial,
    required TResult Function(FilterLoading<T> value) filterLoading,
    required TResult Function(FilterSuccess<T> value) filterSuccess,
    required TResult Function(FilterError<T> value) filterError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FilterInitial<T> value)? filterInitial,
    TResult? Function(FilterLoading<T> value)? filterLoading,
    TResult? Function(FilterSuccess<T> value)? filterSuccess,
    TResult? Function(FilterError<T> value)? filterError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FilterInitial<T> value)? filterInitial,
    TResult Function(FilterLoading<T> value)? filterLoading,
    TResult Function(FilterSuccess<T> value)? filterSuccess,
    TResult Function(FilterError<T> value)? filterError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilterStateCopyWith<T, $Res> {
  factory $FilterStateCopyWith(
          FilterState<T> value, $Res Function(FilterState<T>) then) =
      _$FilterStateCopyWithImpl<T, $Res, FilterState<T>>;
}

/// @nodoc
class _$FilterStateCopyWithImpl<T, $Res, $Val extends FilterState<T>>
    implements $FilterStateCopyWith<T, $Res> {
  _$FilterStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FilterState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$FilterInitialImplCopyWith<T, $Res> {
  factory _$$FilterInitialImplCopyWith(_$FilterInitialImpl<T> value,
          $Res Function(_$FilterInitialImpl<T>) then) =
      __$$FilterInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$FilterInitialImplCopyWithImpl<T, $Res>
    extends _$FilterStateCopyWithImpl<T, $Res, _$FilterInitialImpl<T>>
    implements _$$FilterInitialImplCopyWith<T, $Res> {
  __$$FilterInitialImplCopyWithImpl(_$FilterInitialImpl<T> _value,
      $Res Function(_$FilterInitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of FilterState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FilterInitialImpl<T> implements FilterInitial<T> {
  const _$FilterInitialImpl();

  @override
  String toString() {
    return 'FilterState<$T>.filterInitial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FilterInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() filterInitial,
    required TResult Function() filterLoading,
    required TResult Function(FilterResponseModel filterResponseModel)
        filterSuccess,
    required TResult Function(String message) filterError,
  }) {
    return filterInitial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? filterInitial,
    TResult? Function()? filterLoading,
    TResult? Function(FilterResponseModel filterResponseModel)? filterSuccess,
    TResult? Function(String message)? filterError,
  }) {
    return filterInitial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? filterInitial,
    TResult Function()? filterLoading,
    TResult Function(FilterResponseModel filterResponseModel)? filterSuccess,
    TResult Function(String message)? filterError,
    required TResult orElse(),
  }) {
    if (filterInitial != null) {
      return filterInitial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FilterInitial<T> value) filterInitial,
    required TResult Function(FilterLoading<T> value) filterLoading,
    required TResult Function(FilterSuccess<T> value) filterSuccess,
    required TResult Function(FilterError<T> value) filterError,
  }) {
    return filterInitial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FilterInitial<T> value)? filterInitial,
    TResult? Function(FilterLoading<T> value)? filterLoading,
    TResult? Function(FilterSuccess<T> value)? filterSuccess,
    TResult? Function(FilterError<T> value)? filterError,
  }) {
    return filterInitial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FilterInitial<T> value)? filterInitial,
    TResult Function(FilterLoading<T> value)? filterLoading,
    TResult Function(FilterSuccess<T> value)? filterSuccess,
    TResult Function(FilterError<T> value)? filterError,
    required TResult orElse(),
  }) {
    if (filterInitial != null) {
      return filterInitial(this);
    }
    return orElse();
  }
}

abstract class FilterInitial<T> implements FilterState<T> {
  const factory FilterInitial() = _$FilterInitialImpl<T>;
}

/// @nodoc
abstract class _$$FilterLoadingImplCopyWith<T, $Res> {
  factory _$$FilterLoadingImplCopyWith(_$FilterLoadingImpl<T> value,
          $Res Function(_$FilterLoadingImpl<T>) then) =
      __$$FilterLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$FilterLoadingImplCopyWithImpl<T, $Res>
    extends _$FilterStateCopyWithImpl<T, $Res, _$FilterLoadingImpl<T>>
    implements _$$FilterLoadingImplCopyWith<T, $Res> {
  __$$FilterLoadingImplCopyWithImpl(_$FilterLoadingImpl<T> _value,
      $Res Function(_$FilterLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of FilterState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$FilterLoadingImpl<T> implements FilterLoading<T> {
  const _$FilterLoadingImpl();

  @override
  String toString() {
    return 'FilterState<$T>.filterLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FilterLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() filterInitial,
    required TResult Function() filterLoading,
    required TResult Function(FilterResponseModel filterResponseModel)
        filterSuccess,
    required TResult Function(String message) filterError,
  }) {
    return filterLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? filterInitial,
    TResult? Function()? filterLoading,
    TResult? Function(FilterResponseModel filterResponseModel)? filterSuccess,
    TResult? Function(String message)? filterError,
  }) {
    return filterLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? filterInitial,
    TResult Function()? filterLoading,
    TResult Function(FilterResponseModel filterResponseModel)? filterSuccess,
    TResult Function(String message)? filterError,
    required TResult orElse(),
  }) {
    if (filterLoading != null) {
      return filterLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FilterInitial<T> value) filterInitial,
    required TResult Function(FilterLoading<T> value) filterLoading,
    required TResult Function(FilterSuccess<T> value) filterSuccess,
    required TResult Function(FilterError<T> value) filterError,
  }) {
    return filterLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FilterInitial<T> value)? filterInitial,
    TResult? Function(FilterLoading<T> value)? filterLoading,
    TResult? Function(FilterSuccess<T> value)? filterSuccess,
    TResult? Function(FilterError<T> value)? filterError,
  }) {
    return filterLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FilterInitial<T> value)? filterInitial,
    TResult Function(FilterLoading<T> value)? filterLoading,
    TResult Function(FilterSuccess<T> value)? filterSuccess,
    TResult Function(FilterError<T> value)? filterError,
    required TResult orElse(),
  }) {
    if (filterLoading != null) {
      return filterLoading(this);
    }
    return orElse();
  }
}

abstract class FilterLoading<T> implements FilterState<T> {
  const factory FilterLoading() = _$FilterLoadingImpl<T>;
}

/// @nodoc
abstract class _$$FilterSuccessImplCopyWith<T, $Res> {
  factory _$$FilterSuccessImplCopyWith(_$FilterSuccessImpl<T> value,
          $Res Function(_$FilterSuccessImpl<T>) then) =
      __$$FilterSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({FilterResponseModel filterResponseModel});
}

/// @nodoc
class __$$FilterSuccessImplCopyWithImpl<T, $Res>
    extends _$FilterStateCopyWithImpl<T, $Res, _$FilterSuccessImpl<T>>
    implements _$$FilterSuccessImplCopyWith<T, $Res> {
  __$$FilterSuccessImplCopyWithImpl(_$FilterSuccessImpl<T> _value,
      $Res Function(_$FilterSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of FilterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? filterResponseModel = null,
  }) {
    return _then(_$FilterSuccessImpl<T>(
      null == filterResponseModel
          ? _value.filterResponseModel
          : filterResponseModel // ignore: cast_nullable_to_non_nullable
              as FilterResponseModel,
    ));
  }
}

/// @nodoc

class _$FilterSuccessImpl<T> implements FilterSuccess<T> {
  const _$FilterSuccessImpl(this.filterResponseModel);

  @override
  final FilterResponseModel filterResponseModel;

  @override
  String toString() {
    return 'FilterState<$T>.filterSuccess(filterResponseModel: $filterResponseModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterSuccessImpl<T> &&
            (identical(other.filterResponseModel, filterResponseModel) ||
                other.filterResponseModel == filterResponseModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, filterResponseModel);

  /// Create a copy of FilterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterSuccessImplCopyWith<T, _$FilterSuccessImpl<T>> get copyWith =>
      __$$FilterSuccessImplCopyWithImpl<T, _$FilterSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() filterInitial,
    required TResult Function() filterLoading,
    required TResult Function(FilterResponseModel filterResponseModel)
        filterSuccess,
    required TResult Function(String message) filterError,
  }) {
    return filterSuccess(filterResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? filterInitial,
    TResult? Function()? filterLoading,
    TResult? Function(FilterResponseModel filterResponseModel)? filterSuccess,
    TResult? Function(String message)? filterError,
  }) {
    return filterSuccess?.call(filterResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? filterInitial,
    TResult Function()? filterLoading,
    TResult Function(FilterResponseModel filterResponseModel)? filterSuccess,
    TResult Function(String message)? filterError,
    required TResult orElse(),
  }) {
    if (filterSuccess != null) {
      return filterSuccess(filterResponseModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FilterInitial<T> value) filterInitial,
    required TResult Function(FilterLoading<T> value) filterLoading,
    required TResult Function(FilterSuccess<T> value) filterSuccess,
    required TResult Function(FilterError<T> value) filterError,
  }) {
    return filterSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FilterInitial<T> value)? filterInitial,
    TResult? Function(FilterLoading<T> value)? filterLoading,
    TResult? Function(FilterSuccess<T> value)? filterSuccess,
    TResult? Function(FilterError<T> value)? filterError,
  }) {
    return filterSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FilterInitial<T> value)? filterInitial,
    TResult Function(FilterLoading<T> value)? filterLoading,
    TResult Function(FilterSuccess<T> value)? filterSuccess,
    TResult Function(FilterError<T> value)? filterError,
    required TResult orElse(),
  }) {
    if (filterSuccess != null) {
      return filterSuccess(this);
    }
    return orElse();
  }
}

abstract class FilterSuccess<T> implements FilterState<T> {
  const factory FilterSuccess(final FilterResponseModel filterResponseModel) =
      _$FilterSuccessImpl<T>;

  FilterResponseModel get filterResponseModel;

  /// Create a copy of FilterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterSuccessImplCopyWith<T, _$FilterSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FilterErrorImplCopyWith<T, $Res> {
  factory _$$FilterErrorImplCopyWith(_$FilterErrorImpl<T> value,
          $Res Function(_$FilterErrorImpl<T>) then) =
      __$$FilterErrorImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FilterErrorImplCopyWithImpl<T, $Res>
    extends _$FilterStateCopyWithImpl<T, $Res, _$FilterErrorImpl<T>>
    implements _$$FilterErrorImplCopyWith<T, $Res> {
  __$$FilterErrorImplCopyWithImpl(
      _$FilterErrorImpl<T> _value, $Res Function(_$FilterErrorImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of FilterState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FilterErrorImpl<T>(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FilterErrorImpl<T> implements FilterError<T> {
  const _$FilterErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'FilterState<$T>.filterError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilterErrorImpl<T> &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of FilterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FilterErrorImplCopyWith<T, _$FilterErrorImpl<T>> get copyWith =>
      __$$FilterErrorImplCopyWithImpl<T, _$FilterErrorImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() filterInitial,
    required TResult Function() filterLoading,
    required TResult Function(FilterResponseModel filterResponseModel)
        filterSuccess,
    required TResult Function(String message) filterError,
  }) {
    return filterError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? filterInitial,
    TResult? Function()? filterLoading,
    TResult? Function(FilterResponseModel filterResponseModel)? filterSuccess,
    TResult? Function(String message)? filterError,
  }) {
    return filterError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? filterInitial,
    TResult Function()? filterLoading,
    TResult Function(FilterResponseModel filterResponseModel)? filterSuccess,
    TResult Function(String message)? filterError,
    required TResult orElse(),
  }) {
    if (filterError != null) {
      return filterError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FilterInitial<T> value) filterInitial,
    required TResult Function(FilterLoading<T> value) filterLoading,
    required TResult Function(FilterSuccess<T> value) filterSuccess,
    required TResult Function(FilterError<T> value) filterError,
  }) {
    return filterError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FilterInitial<T> value)? filterInitial,
    TResult? Function(FilterLoading<T> value)? filterLoading,
    TResult? Function(FilterSuccess<T> value)? filterSuccess,
    TResult? Function(FilterError<T> value)? filterError,
  }) {
    return filterError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FilterInitial<T> value)? filterInitial,
    TResult Function(FilterLoading<T> value)? filterLoading,
    TResult Function(FilterSuccess<T> value)? filterSuccess,
    TResult Function(FilterError<T> value)? filterError,
    required TResult orElse(),
  }) {
    if (filterError != null) {
      return filterError(this);
    }
    return orElse();
  }
}

abstract class FilterError<T> implements FilterState<T> {
  const factory FilterError(final String message) = _$FilterErrorImpl<T>;

  String get message;

  /// Create a copy of FilterState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FilterErrorImplCopyWith<T, _$FilterErrorImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
