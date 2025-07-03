// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chats_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChatsState<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendMessageLoading,
    required TResult Function(SendChatResponseModel sendChatResponseModel)
        sendMessageSuccess,
    required TResult Function(String error) sendMessageFailure,
    required TResult Function() getMessageLoading,
    required TResult Function(ChatResponseModel chatResponseModel)
        getMessageSuccess,
    required TResult Function(String error) getMessageFailure,
    required TResult Function() getChatDetailsLoading,
    required TResult Function(ChatDetailsResponseModel chatDetailsResponseModel)
        getChatDetailsSuccess,
    required TResult Function(String error) getChatDetailsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendMessageLoading,
    TResult? Function(SendChatResponseModel sendChatResponseModel)?
        sendMessageSuccess,
    TResult? Function(String error)? sendMessageFailure,
    TResult? Function()? getMessageLoading,
    TResult? Function(ChatResponseModel chatResponseModel)? getMessageSuccess,
    TResult? Function(String error)? getMessageFailure,
    TResult? Function()? getChatDetailsLoading,
    TResult? Function(ChatDetailsResponseModel chatDetailsResponseModel)?
        getChatDetailsSuccess,
    TResult? Function(String error)? getChatDetailsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendMessageLoading,
    TResult Function(SendChatResponseModel sendChatResponseModel)?
        sendMessageSuccess,
    TResult Function(String error)? sendMessageFailure,
    TResult Function()? getMessageLoading,
    TResult Function(ChatResponseModel chatResponseModel)? getMessageSuccess,
    TResult Function(String error)? getMessageFailure,
    TResult Function()? getChatDetailsLoading,
    TResult Function(ChatDetailsResponseModel chatDetailsResponseModel)?
        getChatDetailsSuccess,
    TResult Function(String error)? getChatDetailsFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatsInitial<T> value) initial,
    required TResult Function(SendChatsLoading<T> value) sendMessageLoading,
    required TResult Function(SendChatsSuccess<T> value) sendMessageSuccess,
    required TResult Function(SendChatsFailure<T> value) sendMessageFailure,
    required TResult Function(GetChatsLoading<T> value) getMessageLoading,
    required TResult Function(GetChatsSuccess<T> value) getMessageSuccess,
    required TResult Function(GetChatsFailure<T> value) getMessageFailure,
    required TResult Function(GetChatsDetailsLoading<T> value)
        getChatDetailsLoading,
    required TResult Function(GetChatsDetailsSuccess<T> value)
        getChatDetailsSuccess,
    required TResult Function(GetChatsDetailsFailure<T> value)
        getChatDetailsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatsInitial<T> value)? initial,
    TResult? Function(SendChatsLoading<T> value)? sendMessageLoading,
    TResult? Function(SendChatsSuccess<T> value)? sendMessageSuccess,
    TResult? Function(SendChatsFailure<T> value)? sendMessageFailure,
    TResult? Function(GetChatsLoading<T> value)? getMessageLoading,
    TResult? Function(GetChatsSuccess<T> value)? getMessageSuccess,
    TResult? Function(GetChatsFailure<T> value)? getMessageFailure,
    TResult? Function(GetChatsDetailsLoading<T> value)? getChatDetailsLoading,
    TResult? Function(GetChatsDetailsSuccess<T> value)? getChatDetailsSuccess,
    TResult? Function(GetChatsDetailsFailure<T> value)? getChatDetailsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatsInitial<T> value)? initial,
    TResult Function(SendChatsLoading<T> value)? sendMessageLoading,
    TResult Function(SendChatsSuccess<T> value)? sendMessageSuccess,
    TResult Function(SendChatsFailure<T> value)? sendMessageFailure,
    TResult Function(GetChatsLoading<T> value)? getMessageLoading,
    TResult Function(GetChatsSuccess<T> value)? getMessageSuccess,
    TResult Function(GetChatsFailure<T> value)? getMessageFailure,
    TResult Function(GetChatsDetailsLoading<T> value)? getChatDetailsLoading,
    TResult Function(GetChatsDetailsSuccess<T> value)? getChatDetailsSuccess,
    TResult Function(GetChatsDetailsFailure<T> value)? getChatDetailsFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatsStateCopyWith<T, $Res> {
  factory $ChatsStateCopyWith(
          ChatsState<T> value, $Res Function(ChatsState<T>) then) =
      _$ChatsStateCopyWithImpl<T, $Res, ChatsState<T>>;
}

/// @nodoc
class _$ChatsStateCopyWithImpl<T, $Res, $Val extends ChatsState<T>>
    implements $ChatsStateCopyWith<T, $Res> {
  _$ChatsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ChatsInitialImplCopyWith<T, $Res> {
  factory _$$ChatsInitialImplCopyWith(_$ChatsInitialImpl<T> value,
          $Res Function(_$ChatsInitialImpl<T>) then) =
      __$$ChatsInitialImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$ChatsInitialImplCopyWithImpl<T, $Res>
    extends _$ChatsStateCopyWithImpl<T, $Res, _$ChatsInitialImpl<T>>
    implements _$$ChatsInitialImplCopyWith<T, $Res> {
  __$$ChatsInitialImplCopyWithImpl(
      _$ChatsInitialImpl<T> _value, $Res Function(_$ChatsInitialImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ChatsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChatsInitialImpl<T> implements ChatsInitial<T> {
  const _$ChatsInitialImpl();

  @override
  String toString() {
    return 'ChatsState<$T>.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ChatsInitialImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendMessageLoading,
    required TResult Function(SendChatResponseModel sendChatResponseModel)
        sendMessageSuccess,
    required TResult Function(String error) sendMessageFailure,
    required TResult Function() getMessageLoading,
    required TResult Function(ChatResponseModel chatResponseModel)
        getMessageSuccess,
    required TResult Function(String error) getMessageFailure,
    required TResult Function() getChatDetailsLoading,
    required TResult Function(ChatDetailsResponseModel chatDetailsResponseModel)
        getChatDetailsSuccess,
    required TResult Function(String error) getChatDetailsFailure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendMessageLoading,
    TResult? Function(SendChatResponseModel sendChatResponseModel)?
        sendMessageSuccess,
    TResult? Function(String error)? sendMessageFailure,
    TResult? Function()? getMessageLoading,
    TResult? Function(ChatResponseModel chatResponseModel)? getMessageSuccess,
    TResult? Function(String error)? getMessageFailure,
    TResult? Function()? getChatDetailsLoading,
    TResult? Function(ChatDetailsResponseModel chatDetailsResponseModel)?
        getChatDetailsSuccess,
    TResult? Function(String error)? getChatDetailsFailure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendMessageLoading,
    TResult Function(SendChatResponseModel sendChatResponseModel)?
        sendMessageSuccess,
    TResult Function(String error)? sendMessageFailure,
    TResult Function()? getMessageLoading,
    TResult Function(ChatResponseModel chatResponseModel)? getMessageSuccess,
    TResult Function(String error)? getMessageFailure,
    TResult Function()? getChatDetailsLoading,
    TResult Function(ChatDetailsResponseModel chatDetailsResponseModel)?
        getChatDetailsSuccess,
    TResult Function(String error)? getChatDetailsFailure,
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
    required TResult Function(ChatsInitial<T> value) initial,
    required TResult Function(SendChatsLoading<T> value) sendMessageLoading,
    required TResult Function(SendChatsSuccess<T> value) sendMessageSuccess,
    required TResult Function(SendChatsFailure<T> value) sendMessageFailure,
    required TResult Function(GetChatsLoading<T> value) getMessageLoading,
    required TResult Function(GetChatsSuccess<T> value) getMessageSuccess,
    required TResult Function(GetChatsFailure<T> value) getMessageFailure,
    required TResult Function(GetChatsDetailsLoading<T> value)
        getChatDetailsLoading,
    required TResult Function(GetChatsDetailsSuccess<T> value)
        getChatDetailsSuccess,
    required TResult Function(GetChatsDetailsFailure<T> value)
        getChatDetailsFailure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatsInitial<T> value)? initial,
    TResult? Function(SendChatsLoading<T> value)? sendMessageLoading,
    TResult? Function(SendChatsSuccess<T> value)? sendMessageSuccess,
    TResult? Function(SendChatsFailure<T> value)? sendMessageFailure,
    TResult? Function(GetChatsLoading<T> value)? getMessageLoading,
    TResult? Function(GetChatsSuccess<T> value)? getMessageSuccess,
    TResult? Function(GetChatsFailure<T> value)? getMessageFailure,
    TResult? Function(GetChatsDetailsLoading<T> value)? getChatDetailsLoading,
    TResult? Function(GetChatsDetailsSuccess<T> value)? getChatDetailsSuccess,
    TResult? Function(GetChatsDetailsFailure<T> value)? getChatDetailsFailure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatsInitial<T> value)? initial,
    TResult Function(SendChatsLoading<T> value)? sendMessageLoading,
    TResult Function(SendChatsSuccess<T> value)? sendMessageSuccess,
    TResult Function(SendChatsFailure<T> value)? sendMessageFailure,
    TResult Function(GetChatsLoading<T> value)? getMessageLoading,
    TResult Function(GetChatsSuccess<T> value)? getMessageSuccess,
    TResult Function(GetChatsFailure<T> value)? getMessageFailure,
    TResult Function(GetChatsDetailsLoading<T> value)? getChatDetailsLoading,
    TResult Function(GetChatsDetailsSuccess<T> value)? getChatDetailsSuccess,
    TResult Function(GetChatsDetailsFailure<T> value)? getChatDetailsFailure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ChatsInitial<T> implements ChatsState<T> {
  const factory ChatsInitial() = _$ChatsInitialImpl<T>;
}

/// @nodoc
abstract class _$$SendChatsLoadingImplCopyWith<T, $Res> {
  factory _$$SendChatsLoadingImplCopyWith(_$SendChatsLoadingImpl<T> value,
          $Res Function(_$SendChatsLoadingImpl<T>) then) =
      __$$SendChatsLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$SendChatsLoadingImplCopyWithImpl<T, $Res>
    extends _$ChatsStateCopyWithImpl<T, $Res, _$SendChatsLoadingImpl<T>>
    implements _$$SendChatsLoadingImplCopyWith<T, $Res> {
  __$$SendChatsLoadingImplCopyWithImpl(_$SendChatsLoadingImpl<T> _value,
      $Res Function(_$SendChatsLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ChatsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SendChatsLoadingImpl<T> implements SendChatsLoading<T> {
  const _$SendChatsLoadingImpl();

  @override
  String toString() {
    return 'ChatsState<$T>.sendMessageLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendChatsLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendMessageLoading,
    required TResult Function(SendChatResponseModel sendChatResponseModel)
        sendMessageSuccess,
    required TResult Function(String error) sendMessageFailure,
    required TResult Function() getMessageLoading,
    required TResult Function(ChatResponseModel chatResponseModel)
        getMessageSuccess,
    required TResult Function(String error) getMessageFailure,
    required TResult Function() getChatDetailsLoading,
    required TResult Function(ChatDetailsResponseModel chatDetailsResponseModel)
        getChatDetailsSuccess,
    required TResult Function(String error) getChatDetailsFailure,
  }) {
    return sendMessageLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendMessageLoading,
    TResult? Function(SendChatResponseModel sendChatResponseModel)?
        sendMessageSuccess,
    TResult? Function(String error)? sendMessageFailure,
    TResult? Function()? getMessageLoading,
    TResult? Function(ChatResponseModel chatResponseModel)? getMessageSuccess,
    TResult? Function(String error)? getMessageFailure,
    TResult? Function()? getChatDetailsLoading,
    TResult? Function(ChatDetailsResponseModel chatDetailsResponseModel)?
        getChatDetailsSuccess,
    TResult? Function(String error)? getChatDetailsFailure,
  }) {
    return sendMessageLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendMessageLoading,
    TResult Function(SendChatResponseModel sendChatResponseModel)?
        sendMessageSuccess,
    TResult Function(String error)? sendMessageFailure,
    TResult Function()? getMessageLoading,
    TResult Function(ChatResponseModel chatResponseModel)? getMessageSuccess,
    TResult Function(String error)? getMessageFailure,
    TResult Function()? getChatDetailsLoading,
    TResult Function(ChatDetailsResponseModel chatDetailsResponseModel)?
        getChatDetailsSuccess,
    TResult Function(String error)? getChatDetailsFailure,
    required TResult orElse(),
  }) {
    if (sendMessageLoading != null) {
      return sendMessageLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatsInitial<T> value) initial,
    required TResult Function(SendChatsLoading<T> value) sendMessageLoading,
    required TResult Function(SendChatsSuccess<T> value) sendMessageSuccess,
    required TResult Function(SendChatsFailure<T> value) sendMessageFailure,
    required TResult Function(GetChatsLoading<T> value) getMessageLoading,
    required TResult Function(GetChatsSuccess<T> value) getMessageSuccess,
    required TResult Function(GetChatsFailure<T> value) getMessageFailure,
    required TResult Function(GetChatsDetailsLoading<T> value)
        getChatDetailsLoading,
    required TResult Function(GetChatsDetailsSuccess<T> value)
        getChatDetailsSuccess,
    required TResult Function(GetChatsDetailsFailure<T> value)
        getChatDetailsFailure,
  }) {
    return sendMessageLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatsInitial<T> value)? initial,
    TResult? Function(SendChatsLoading<T> value)? sendMessageLoading,
    TResult? Function(SendChatsSuccess<T> value)? sendMessageSuccess,
    TResult? Function(SendChatsFailure<T> value)? sendMessageFailure,
    TResult? Function(GetChatsLoading<T> value)? getMessageLoading,
    TResult? Function(GetChatsSuccess<T> value)? getMessageSuccess,
    TResult? Function(GetChatsFailure<T> value)? getMessageFailure,
    TResult? Function(GetChatsDetailsLoading<T> value)? getChatDetailsLoading,
    TResult? Function(GetChatsDetailsSuccess<T> value)? getChatDetailsSuccess,
    TResult? Function(GetChatsDetailsFailure<T> value)? getChatDetailsFailure,
  }) {
    return sendMessageLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatsInitial<T> value)? initial,
    TResult Function(SendChatsLoading<T> value)? sendMessageLoading,
    TResult Function(SendChatsSuccess<T> value)? sendMessageSuccess,
    TResult Function(SendChatsFailure<T> value)? sendMessageFailure,
    TResult Function(GetChatsLoading<T> value)? getMessageLoading,
    TResult Function(GetChatsSuccess<T> value)? getMessageSuccess,
    TResult Function(GetChatsFailure<T> value)? getMessageFailure,
    TResult Function(GetChatsDetailsLoading<T> value)? getChatDetailsLoading,
    TResult Function(GetChatsDetailsSuccess<T> value)? getChatDetailsSuccess,
    TResult Function(GetChatsDetailsFailure<T> value)? getChatDetailsFailure,
    required TResult orElse(),
  }) {
    if (sendMessageLoading != null) {
      return sendMessageLoading(this);
    }
    return orElse();
  }
}

abstract class SendChatsLoading<T> implements ChatsState<T> {
  const factory SendChatsLoading() = _$SendChatsLoadingImpl<T>;
}

/// @nodoc
abstract class _$$SendChatsSuccessImplCopyWith<T, $Res> {
  factory _$$SendChatsSuccessImplCopyWith(_$SendChatsSuccessImpl<T> value,
          $Res Function(_$SendChatsSuccessImpl<T>) then) =
      __$$SendChatsSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({SendChatResponseModel sendChatResponseModel});
}

/// @nodoc
class __$$SendChatsSuccessImplCopyWithImpl<T, $Res>
    extends _$ChatsStateCopyWithImpl<T, $Res, _$SendChatsSuccessImpl<T>>
    implements _$$SendChatsSuccessImplCopyWith<T, $Res> {
  __$$SendChatsSuccessImplCopyWithImpl(_$SendChatsSuccessImpl<T> _value,
      $Res Function(_$SendChatsSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ChatsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sendChatResponseModel = null,
  }) {
    return _then(_$SendChatsSuccessImpl<T>(
      null == sendChatResponseModel
          ? _value.sendChatResponseModel
          : sendChatResponseModel // ignore: cast_nullable_to_non_nullable
              as SendChatResponseModel,
    ));
  }
}

/// @nodoc

class _$SendChatsSuccessImpl<T> implements SendChatsSuccess<T> {
  const _$SendChatsSuccessImpl(this.sendChatResponseModel);

  @override
  final SendChatResponseModel sendChatResponseModel;

  @override
  String toString() {
    return 'ChatsState<$T>.sendMessageSuccess(sendChatResponseModel: $sendChatResponseModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendChatsSuccessImpl<T> &&
            (identical(other.sendChatResponseModel, sendChatResponseModel) ||
                other.sendChatResponseModel == sendChatResponseModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sendChatResponseModel);

  /// Create a copy of ChatsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendChatsSuccessImplCopyWith<T, _$SendChatsSuccessImpl<T>> get copyWith =>
      __$$SendChatsSuccessImplCopyWithImpl<T, _$SendChatsSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendMessageLoading,
    required TResult Function(SendChatResponseModel sendChatResponseModel)
        sendMessageSuccess,
    required TResult Function(String error) sendMessageFailure,
    required TResult Function() getMessageLoading,
    required TResult Function(ChatResponseModel chatResponseModel)
        getMessageSuccess,
    required TResult Function(String error) getMessageFailure,
    required TResult Function() getChatDetailsLoading,
    required TResult Function(ChatDetailsResponseModel chatDetailsResponseModel)
        getChatDetailsSuccess,
    required TResult Function(String error) getChatDetailsFailure,
  }) {
    return sendMessageSuccess(sendChatResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendMessageLoading,
    TResult? Function(SendChatResponseModel sendChatResponseModel)?
        sendMessageSuccess,
    TResult? Function(String error)? sendMessageFailure,
    TResult? Function()? getMessageLoading,
    TResult? Function(ChatResponseModel chatResponseModel)? getMessageSuccess,
    TResult? Function(String error)? getMessageFailure,
    TResult? Function()? getChatDetailsLoading,
    TResult? Function(ChatDetailsResponseModel chatDetailsResponseModel)?
        getChatDetailsSuccess,
    TResult? Function(String error)? getChatDetailsFailure,
  }) {
    return sendMessageSuccess?.call(sendChatResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendMessageLoading,
    TResult Function(SendChatResponseModel sendChatResponseModel)?
        sendMessageSuccess,
    TResult Function(String error)? sendMessageFailure,
    TResult Function()? getMessageLoading,
    TResult Function(ChatResponseModel chatResponseModel)? getMessageSuccess,
    TResult Function(String error)? getMessageFailure,
    TResult Function()? getChatDetailsLoading,
    TResult Function(ChatDetailsResponseModel chatDetailsResponseModel)?
        getChatDetailsSuccess,
    TResult Function(String error)? getChatDetailsFailure,
    required TResult orElse(),
  }) {
    if (sendMessageSuccess != null) {
      return sendMessageSuccess(sendChatResponseModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatsInitial<T> value) initial,
    required TResult Function(SendChatsLoading<T> value) sendMessageLoading,
    required TResult Function(SendChatsSuccess<T> value) sendMessageSuccess,
    required TResult Function(SendChatsFailure<T> value) sendMessageFailure,
    required TResult Function(GetChatsLoading<T> value) getMessageLoading,
    required TResult Function(GetChatsSuccess<T> value) getMessageSuccess,
    required TResult Function(GetChatsFailure<T> value) getMessageFailure,
    required TResult Function(GetChatsDetailsLoading<T> value)
        getChatDetailsLoading,
    required TResult Function(GetChatsDetailsSuccess<T> value)
        getChatDetailsSuccess,
    required TResult Function(GetChatsDetailsFailure<T> value)
        getChatDetailsFailure,
  }) {
    return sendMessageSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatsInitial<T> value)? initial,
    TResult? Function(SendChatsLoading<T> value)? sendMessageLoading,
    TResult? Function(SendChatsSuccess<T> value)? sendMessageSuccess,
    TResult? Function(SendChatsFailure<T> value)? sendMessageFailure,
    TResult? Function(GetChatsLoading<T> value)? getMessageLoading,
    TResult? Function(GetChatsSuccess<T> value)? getMessageSuccess,
    TResult? Function(GetChatsFailure<T> value)? getMessageFailure,
    TResult? Function(GetChatsDetailsLoading<T> value)? getChatDetailsLoading,
    TResult? Function(GetChatsDetailsSuccess<T> value)? getChatDetailsSuccess,
    TResult? Function(GetChatsDetailsFailure<T> value)? getChatDetailsFailure,
  }) {
    return sendMessageSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatsInitial<T> value)? initial,
    TResult Function(SendChatsLoading<T> value)? sendMessageLoading,
    TResult Function(SendChatsSuccess<T> value)? sendMessageSuccess,
    TResult Function(SendChatsFailure<T> value)? sendMessageFailure,
    TResult Function(GetChatsLoading<T> value)? getMessageLoading,
    TResult Function(GetChatsSuccess<T> value)? getMessageSuccess,
    TResult Function(GetChatsFailure<T> value)? getMessageFailure,
    TResult Function(GetChatsDetailsLoading<T> value)? getChatDetailsLoading,
    TResult Function(GetChatsDetailsSuccess<T> value)? getChatDetailsSuccess,
    TResult Function(GetChatsDetailsFailure<T> value)? getChatDetailsFailure,
    required TResult orElse(),
  }) {
    if (sendMessageSuccess != null) {
      return sendMessageSuccess(this);
    }
    return orElse();
  }
}

abstract class SendChatsSuccess<T> implements ChatsState<T> {
  const factory SendChatsSuccess(
          final SendChatResponseModel sendChatResponseModel) =
      _$SendChatsSuccessImpl<T>;

  SendChatResponseModel get sendChatResponseModel;

  /// Create a copy of ChatsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendChatsSuccessImplCopyWith<T, _$SendChatsSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendChatsFailureImplCopyWith<T, $Res> {
  factory _$$SendChatsFailureImplCopyWith(_$SendChatsFailureImpl<T> value,
          $Res Function(_$SendChatsFailureImpl<T>) then) =
      __$$SendChatsFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$SendChatsFailureImplCopyWithImpl<T, $Res>
    extends _$ChatsStateCopyWithImpl<T, $Res, _$SendChatsFailureImpl<T>>
    implements _$$SendChatsFailureImplCopyWith<T, $Res> {
  __$$SendChatsFailureImplCopyWithImpl(_$SendChatsFailureImpl<T> _value,
      $Res Function(_$SendChatsFailureImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ChatsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$SendChatsFailureImpl<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendChatsFailureImpl<T> implements SendChatsFailure<T> {
  const _$SendChatsFailureImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'ChatsState<$T>.sendMessageFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendChatsFailureImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ChatsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendChatsFailureImplCopyWith<T, _$SendChatsFailureImpl<T>> get copyWith =>
      __$$SendChatsFailureImplCopyWithImpl<T, _$SendChatsFailureImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendMessageLoading,
    required TResult Function(SendChatResponseModel sendChatResponseModel)
        sendMessageSuccess,
    required TResult Function(String error) sendMessageFailure,
    required TResult Function() getMessageLoading,
    required TResult Function(ChatResponseModel chatResponseModel)
        getMessageSuccess,
    required TResult Function(String error) getMessageFailure,
    required TResult Function() getChatDetailsLoading,
    required TResult Function(ChatDetailsResponseModel chatDetailsResponseModel)
        getChatDetailsSuccess,
    required TResult Function(String error) getChatDetailsFailure,
  }) {
    return sendMessageFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendMessageLoading,
    TResult? Function(SendChatResponseModel sendChatResponseModel)?
        sendMessageSuccess,
    TResult? Function(String error)? sendMessageFailure,
    TResult? Function()? getMessageLoading,
    TResult? Function(ChatResponseModel chatResponseModel)? getMessageSuccess,
    TResult? Function(String error)? getMessageFailure,
    TResult? Function()? getChatDetailsLoading,
    TResult? Function(ChatDetailsResponseModel chatDetailsResponseModel)?
        getChatDetailsSuccess,
    TResult? Function(String error)? getChatDetailsFailure,
  }) {
    return sendMessageFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendMessageLoading,
    TResult Function(SendChatResponseModel sendChatResponseModel)?
        sendMessageSuccess,
    TResult Function(String error)? sendMessageFailure,
    TResult Function()? getMessageLoading,
    TResult Function(ChatResponseModel chatResponseModel)? getMessageSuccess,
    TResult Function(String error)? getMessageFailure,
    TResult Function()? getChatDetailsLoading,
    TResult Function(ChatDetailsResponseModel chatDetailsResponseModel)?
        getChatDetailsSuccess,
    TResult Function(String error)? getChatDetailsFailure,
    required TResult orElse(),
  }) {
    if (sendMessageFailure != null) {
      return sendMessageFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatsInitial<T> value) initial,
    required TResult Function(SendChatsLoading<T> value) sendMessageLoading,
    required TResult Function(SendChatsSuccess<T> value) sendMessageSuccess,
    required TResult Function(SendChatsFailure<T> value) sendMessageFailure,
    required TResult Function(GetChatsLoading<T> value) getMessageLoading,
    required TResult Function(GetChatsSuccess<T> value) getMessageSuccess,
    required TResult Function(GetChatsFailure<T> value) getMessageFailure,
    required TResult Function(GetChatsDetailsLoading<T> value)
        getChatDetailsLoading,
    required TResult Function(GetChatsDetailsSuccess<T> value)
        getChatDetailsSuccess,
    required TResult Function(GetChatsDetailsFailure<T> value)
        getChatDetailsFailure,
  }) {
    return sendMessageFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatsInitial<T> value)? initial,
    TResult? Function(SendChatsLoading<T> value)? sendMessageLoading,
    TResult? Function(SendChatsSuccess<T> value)? sendMessageSuccess,
    TResult? Function(SendChatsFailure<T> value)? sendMessageFailure,
    TResult? Function(GetChatsLoading<T> value)? getMessageLoading,
    TResult? Function(GetChatsSuccess<T> value)? getMessageSuccess,
    TResult? Function(GetChatsFailure<T> value)? getMessageFailure,
    TResult? Function(GetChatsDetailsLoading<T> value)? getChatDetailsLoading,
    TResult? Function(GetChatsDetailsSuccess<T> value)? getChatDetailsSuccess,
    TResult? Function(GetChatsDetailsFailure<T> value)? getChatDetailsFailure,
  }) {
    return sendMessageFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatsInitial<T> value)? initial,
    TResult Function(SendChatsLoading<T> value)? sendMessageLoading,
    TResult Function(SendChatsSuccess<T> value)? sendMessageSuccess,
    TResult Function(SendChatsFailure<T> value)? sendMessageFailure,
    TResult Function(GetChatsLoading<T> value)? getMessageLoading,
    TResult Function(GetChatsSuccess<T> value)? getMessageSuccess,
    TResult Function(GetChatsFailure<T> value)? getMessageFailure,
    TResult Function(GetChatsDetailsLoading<T> value)? getChatDetailsLoading,
    TResult Function(GetChatsDetailsSuccess<T> value)? getChatDetailsSuccess,
    TResult Function(GetChatsDetailsFailure<T> value)? getChatDetailsFailure,
    required TResult orElse(),
  }) {
    if (sendMessageFailure != null) {
      return sendMessageFailure(this);
    }
    return orElse();
  }
}

abstract class SendChatsFailure<T> implements ChatsState<T> {
  const factory SendChatsFailure(final String error) =
      _$SendChatsFailureImpl<T>;

  String get error;

  /// Create a copy of ChatsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendChatsFailureImplCopyWith<T, _$SendChatsFailureImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetChatsLoadingImplCopyWith<T, $Res> {
  factory _$$GetChatsLoadingImplCopyWith(_$GetChatsLoadingImpl<T> value,
          $Res Function(_$GetChatsLoadingImpl<T>) then) =
      __$$GetChatsLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$GetChatsLoadingImplCopyWithImpl<T, $Res>
    extends _$ChatsStateCopyWithImpl<T, $Res, _$GetChatsLoadingImpl<T>>
    implements _$$GetChatsLoadingImplCopyWith<T, $Res> {
  __$$GetChatsLoadingImplCopyWithImpl(_$GetChatsLoadingImpl<T> _value,
      $Res Function(_$GetChatsLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ChatsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetChatsLoadingImpl<T> implements GetChatsLoading<T> {
  const _$GetChatsLoadingImpl();

  @override
  String toString() {
    return 'ChatsState<$T>.getMessageLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetChatsLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendMessageLoading,
    required TResult Function(SendChatResponseModel sendChatResponseModel)
        sendMessageSuccess,
    required TResult Function(String error) sendMessageFailure,
    required TResult Function() getMessageLoading,
    required TResult Function(ChatResponseModel chatResponseModel)
        getMessageSuccess,
    required TResult Function(String error) getMessageFailure,
    required TResult Function() getChatDetailsLoading,
    required TResult Function(ChatDetailsResponseModel chatDetailsResponseModel)
        getChatDetailsSuccess,
    required TResult Function(String error) getChatDetailsFailure,
  }) {
    return getMessageLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendMessageLoading,
    TResult? Function(SendChatResponseModel sendChatResponseModel)?
        sendMessageSuccess,
    TResult? Function(String error)? sendMessageFailure,
    TResult? Function()? getMessageLoading,
    TResult? Function(ChatResponseModel chatResponseModel)? getMessageSuccess,
    TResult? Function(String error)? getMessageFailure,
    TResult? Function()? getChatDetailsLoading,
    TResult? Function(ChatDetailsResponseModel chatDetailsResponseModel)?
        getChatDetailsSuccess,
    TResult? Function(String error)? getChatDetailsFailure,
  }) {
    return getMessageLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendMessageLoading,
    TResult Function(SendChatResponseModel sendChatResponseModel)?
        sendMessageSuccess,
    TResult Function(String error)? sendMessageFailure,
    TResult Function()? getMessageLoading,
    TResult Function(ChatResponseModel chatResponseModel)? getMessageSuccess,
    TResult Function(String error)? getMessageFailure,
    TResult Function()? getChatDetailsLoading,
    TResult Function(ChatDetailsResponseModel chatDetailsResponseModel)?
        getChatDetailsSuccess,
    TResult Function(String error)? getChatDetailsFailure,
    required TResult orElse(),
  }) {
    if (getMessageLoading != null) {
      return getMessageLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatsInitial<T> value) initial,
    required TResult Function(SendChatsLoading<T> value) sendMessageLoading,
    required TResult Function(SendChatsSuccess<T> value) sendMessageSuccess,
    required TResult Function(SendChatsFailure<T> value) sendMessageFailure,
    required TResult Function(GetChatsLoading<T> value) getMessageLoading,
    required TResult Function(GetChatsSuccess<T> value) getMessageSuccess,
    required TResult Function(GetChatsFailure<T> value) getMessageFailure,
    required TResult Function(GetChatsDetailsLoading<T> value)
        getChatDetailsLoading,
    required TResult Function(GetChatsDetailsSuccess<T> value)
        getChatDetailsSuccess,
    required TResult Function(GetChatsDetailsFailure<T> value)
        getChatDetailsFailure,
  }) {
    return getMessageLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatsInitial<T> value)? initial,
    TResult? Function(SendChatsLoading<T> value)? sendMessageLoading,
    TResult? Function(SendChatsSuccess<T> value)? sendMessageSuccess,
    TResult? Function(SendChatsFailure<T> value)? sendMessageFailure,
    TResult? Function(GetChatsLoading<T> value)? getMessageLoading,
    TResult? Function(GetChatsSuccess<T> value)? getMessageSuccess,
    TResult? Function(GetChatsFailure<T> value)? getMessageFailure,
    TResult? Function(GetChatsDetailsLoading<T> value)? getChatDetailsLoading,
    TResult? Function(GetChatsDetailsSuccess<T> value)? getChatDetailsSuccess,
    TResult? Function(GetChatsDetailsFailure<T> value)? getChatDetailsFailure,
  }) {
    return getMessageLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatsInitial<T> value)? initial,
    TResult Function(SendChatsLoading<T> value)? sendMessageLoading,
    TResult Function(SendChatsSuccess<T> value)? sendMessageSuccess,
    TResult Function(SendChatsFailure<T> value)? sendMessageFailure,
    TResult Function(GetChatsLoading<T> value)? getMessageLoading,
    TResult Function(GetChatsSuccess<T> value)? getMessageSuccess,
    TResult Function(GetChatsFailure<T> value)? getMessageFailure,
    TResult Function(GetChatsDetailsLoading<T> value)? getChatDetailsLoading,
    TResult Function(GetChatsDetailsSuccess<T> value)? getChatDetailsSuccess,
    TResult Function(GetChatsDetailsFailure<T> value)? getChatDetailsFailure,
    required TResult orElse(),
  }) {
    if (getMessageLoading != null) {
      return getMessageLoading(this);
    }
    return orElse();
  }
}

abstract class GetChatsLoading<T> implements ChatsState<T> {
  const factory GetChatsLoading() = _$GetChatsLoadingImpl<T>;
}

/// @nodoc
abstract class _$$GetChatsSuccessImplCopyWith<T, $Res> {
  factory _$$GetChatsSuccessImplCopyWith(_$GetChatsSuccessImpl<T> value,
          $Res Function(_$GetChatsSuccessImpl<T>) then) =
      __$$GetChatsSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ChatResponseModel chatResponseModel});
}

/// @nodoc
class __$$GetChatsSuccessImplCopyWithImpl<T, $Res>
    extends _$ChatsStateCopyWithImpl<T, $Res, _$GetChatsSuccessImpl<T>>
    implements _$$GetChatsSuccessImplCopyWith<T, $Res> {
  __$$GetChatsSuccessImplCopyWithImpl(_$GetChatsSuccessImpl<T> _value,
      $Res Function(_$GetChatsSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ChatsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatResponseModel = null,
  }) {
    return _then(_$GetChatsSuccessImpl<T>(
      null == chatResponseModel
          ? _value.chatResponseModel
          : chatResponseModel // ignore: cast_nullable_to_non_nullable
              as ChatResponseModel,
    ));
  }
}

/// @nodoc

class _$GetChatsSuccessImpl<T> implements GetChatsSuccess<T> {
  const _$GetChatsSuccessImpl(this.chatResponseModel);

  @override
  final ChatResponseModel chatResponseModel;

  @override
  String toString() {
    return 'ChatsState<$T>.getMessageSuccess(chatResponseModel: $chatResponseModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetChatsSuccessImpl<T> &&
            (identical(other.chatResponseModel, chatResponseModel) ||
                other.chatResponseModel == chatResponseModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatResponseModel);

  /// Create a copy of ChatsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetChatsSuccessImplCopyWith<T, _$GetChatsSuccessImpl<T>> get copyWith =>
      __$$GetChatsSuccessImplCopyWithImpl<T, _$GetChatsSuccessImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendMessageLoading,
    required TResult Function(SendChatResponseModel sendChatResponseModel)
        sendMessageSuccess,
    required TResult Function(String error) sendMessageFailure,
    required TResult Function() getMessageLoading,
    required TResult Function(ChatResponseModel chatResponseModel)
        getMessageSuccess,
    required TResult Function(String error) getMessageFailure,
    required TResult Function() getChatDetailsLoading,
    required TResult Function(ChatDetailsResponseModel chatDetailsResponseModel)
        getChatDetailsSuccess,
    required TResult Function(String error) getChatDetailsFailure,
  }) {
    return getMessageSuccess(chatResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendMessageLoading,
    TResult? Function(SendChatResponseModel sendChatResponseModel)?
        sendMessageSuccess,
    TResult? Function(String error)? sendMessageFailure,
    TResult? Function()? getMessageLoading,
    TResult? Function(ChatResponseModel chatResponseModel)? getMessageSuccess,
    TResult? Function(String error)? getMessageFailure,
    TResult? Function()? getChatDetailsLoading,
    TResult? Function(ChatDetailsResponseModel chatDetailsResponseModel)?
        getChatDetailsSuccess,
    TResult? Function(String error)? getChatDetailsFailure,
  }) {
    return getMessageSuccess?.call(chatResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendMessageLoading,
    TResult Function(SendChatResponseModel sendChatResponseModel)?
        sendMessageSuccess,
    TResult Function(String error)? sendMessageFailure,
    TResult Function()? getMessageLoading,
    TResult Function(ChatResponseModel chatResponseModel)? getMessageSuccess,
    TResult Function(String error)? getMessageFailure,
    TResult Function()? getChatDetailsLoading,
    TResult Function(ChatDetailsResponseModel chatDetailsResponseModel)?
        getChatDetailsSuccess,
    TResult Function(String error)? getChatDetailsFailure,
    required TResult orElse(),
  }) {
    if (getMessageSuccess != null) {
      return getMessageSuccess(chatResponseModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatsInitial<T> value) initial,
    required TResult Function(SendChatsLoading<T> value) sendMessageLoading,
    required TResult Function(SendChatsSuccess<T> value) sendMessageSuccess,
    required TResult Function(SendChatsFailure<T> value) sendMessageFailure,
    required TResult Function(GetChatsLoading<T> value) getMessageLoading,
    required TResult Function(GetChatsSuccess<T> value) getMessageSuccess,
    required TResult Function(GetChatsFailure<T> value) getMessageFailure,
    required TResult Function(GetChatsDetailsLoading<T> value)
        getChatDetailsLoading,
    required TResult Function(GetChatsDetailsSuccess<T> value)
        getChatDetailsSuccess,
    required TResult Function(GetChatsDetailsFailure<T> value)
        getChatDetailsFailure,
  }) {
    return getMessageSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatsInitial<T> value)? initial,
    TResult? Function(SendChatsLoading<T> value)? sendMessageLoading,
    TResult? Function(SendChatsSuccess<T> value)? sendMessageSuccess,
    TResult? Function(SendChatsFailure<T> value)? sendMessageFailure,
    TResult? Function(GetChatsLoading<T> value)? getMessageLoading,
    TResult? Function(GetChatsSuccess<T> value)? getMessageSuccess,
    TResult? Function(GetChatsFailure<T> value)? getMessageFailure,
    TResult? Function(GetChatsDetailsLoading<T> value)? getChatDetailsLoading,
    TResult? Function(GetChatsDetailsSuccess<T> value)? getChatDetailsSuccess,
    TResult? Function(GetChatsDetailsFailure<T> value)? getChatDetailsFailure,
  }) {
    return getMessageSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatsInitial<T> value)? initial,
    TResult Function(SendChatsLoading<T> value)? sendMessageLoading,
    TResult Function(SendChatsSuccess<T> value)? sendMessageSuccess,
    TResult Function(SendChatsFailure<T> value)? sendMessageFailure,
    TResult Function(GetChatsLoading<T> value)? getMessageLoading,
    TResult Function(GetChatsSuccess<T> value)? getMessageSuccess,
    TResult Function(GetChatsFailure<T> value)? getMessageFailure,
    TResult Function(GetChatsDetailsLoading<T> value)? getChatDetailsLoading,
    TResult Function(GetChatsDetailsSuccess<T> value)? getChatDetailsSuccess,
    TResult Function(GetChatsDetailsFailure<T> value)? getChatDetailsFailure,
    required TResult orElse(),
  }) {
    if (getMessageSuccess != null) {
      return getMessageSuccess(this);
    }
    return orElse();
  }
}

abstract class GetChatsSuccess<T> implements ChatsState<T> {
  const factory GetChatsSuccess(final ChatResponseModel chatResponseModel) =
      _$GetChatsSuccessImpl<T>;

  ChatResponseModel get chatResponseModel;

  /// Create a copy of ChatsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetChatsSuccessImplCopyWith<T, _$GetChatsSuccessImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetChatsFailureImplCopyWith<T, $Res> {
  factory _$$GetChatsFailureImplCopyWith(_$GetChatsFailureImpl<T> value,
          $Res Function(_$GetChatsFailureImpl<T>) then) =
      __$$GetChatsFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$GetChatsFailureImplCopyWithImpl<T, $Res>
    extends _$ChatsStateCopyWithImpl<T, $Res, _$GetChatsFailureImpl<T>>
    implements _$$GetChatsFailureImplCopyWith<T, $Res> {
  __$$GetChatsFailureImplCopyWithImpl(_$GetChatsFailureImpl<T> _value,
      $Res Function(_$GetChatsFailureImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ChatsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$GetChatsFailureImpl<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetChatsFailureImpl<T> implements GetChatsFailure<T> {
  const _$GetChatsFailureImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'ChatsState<$T>.getMessageFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetChatsFailureImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ChatsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetChatsFailureImplCopyWith<T, _$GetChatsFailureImpl<T>> get copyWith =>
      __$$GetChatsFailureImplCopyWithImpl<T, _$GetChatsFailureImpl<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendMessageLoading,
    required TResult Function(SendChatResponseModel sendChatResponseModel)
        sendMessageSuccess,
    required TResult Function(String error) sendMessageFailure,
    required TResult Function() getMessageLoading,
    required TResult Function(ChatResponseModel chatResponseModel)
        getMessageSuccess,
    required TResult Function(String error) getMessageFailure,
    required TResult Function() getChatDetailsLoading,
    required TResult Function(ChatDetailsResponseModel chatDetailsResponseModel)
        getChatDetailsSuccess,
    required TResult Function(String error) getChatDetailsFailure,
  }) {
    return getMessageFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendMessageLoading,
    TResult? Function(SendChatResponseModel sendChatResponseModel)?
        sendMessageSuccess,
    TResult? Function(String error)? sendMessageFailure,
    TResult? Function()? getMessageLoading,
    TResult? Function(ChatResponseModel chatResponseModel)? getMessageSuccess,
    TResult? Function(String error)? getMessageFailure,
    TResult? Function()? getChatDetailsLoading,
    TResult? Function(ChatDetailsResponseModel chatDetailsResponseModel)?
        getChatDetailsSuccess,
    TResult? Function(String error)? getChatDetailsFailure,
  }) {
    return getMessageFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendMessageLoading,
    TResult Function(SendChatResponseModel sendChatResponseModel)?
        sendMessageSuccess,
    TResult Function(String error)? sendMessageFailure,
    TResult Function()? getMessageLoading,
    TResult Function(ChatResponseModel chatResponseModel)? getMessageSuccess,
    TResult Function(String error)? getMessageFailure,
    TResult Function()? getChatDetailsLoading,
    TResult Function(ChatDetailsResponseModel chatDetailsResponseModel)?
        getChatDetailsSuccess,
    TResult Function(String error)? getChatDetailsFailure,
    required TResult orElse(),
  }) {
    if (getMessageFailure != null) {
      return getMessageFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatsInitial<T> value) initial,
    required TResult Function(SendChatsLoading<T> value) sendMessageLoading,
    required TResult Function(SendChatsSuccess<T> value) sendMessageSuccess,
    required TResult Function(SendChatsFailure<T> value) sendMessageFailure,
    required TResult Function(GetChatsLoading<T> value) getMessageLoading,
    required TResult Function(GetChatsSuccess<T> value) getMessageSuccess,
    required TResult Function(GetChatsFailure<T> value) getMessageFailure,
    required TResult Function(GetChatsDetailsLoading<T> value)
        getChatDetailsLoading,
    required TResult Function(GetChatsDetailsSuccess<T> value)
        getChatDetailsSuccess,
    required TResult Function(GetChatsDetailsFailure<T> value)
        getChatDetailsFailure,
  }) {
    return getMessageFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatsInitial<T> value)? initial,
    TResult? Function(SendChatsLoading<T> value)? sendMessageLoading,
    TResult? Function(SendChatsSuccess<T> value)? sendMessageSuccess,
    TResult? Function(SendChatsFailure<T> value)? sendMessageFailure,
    TResult? Function(GetChatsLoading<T> value)? getMessageLoading,
    TResult? Function(GetChatsSuccess<T> value)? getMessageSuccess,
    TResult? Function(GetChatsFailure<T> value)? getMessageFailure,
    TResult? Function(GetChatsDetailsLoading<T> value)? getChatDetailsLoading,
    TResult? Function(GetChatsDetailsSuccess<T> value)? getChatDetailsSuccess,
    TResult? Function(GetChatsDetailsFailure<T> value)? getChatDetailsFailure,
  }) {
    return getMessageFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatsInitial<T> value)? initial,
    TResult Function(SendChatsLoading<T> value)? sendMessageLoading,
    TResult Function(SendChatsSuccess<T> value)? sendMessageSuccess,
    TResult Function(SendChatsFailure<T> value)? sendMessageFailure,
    TResult Function(GetChatsLoading<T> value)? getMessageLoading,
    TResult Function(GetChatsSuccess<T> value)? getMessageSuccess,
    TResult Function(GetChatsFailure<T> value)? getMessageFailure,
    TResult Function(GetChatsDetailsLoading<T> value)? getChatDetailsLoading,
    TResult Function(GetChatsDetailsSuccess<T> value)? getChatDetailsSuccess,
    TResult Function(GetChatsDetailsFailure<T> value)? getChatDetailsFailure,
    required TResult orElse(),
  }) {
    if (getMessageFailure != null) {
      return getMessageFailure(this);
    }
    return orElse();
  }
}

abstract class GetChatsFailure<T> implements ChatsState<T> {
  const factory GetChatsFailure(final String error) = _$GetChatsFailureImpl<T>;

  String get error;

  /// Create a copy of ChatsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetChatsFailureImplCopyWith<T, _$GetChatsFailureImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetChatsDetailsLoadingImplCopyWith<T, $Res> {
  factory _$$GetChatsDetailsLoadingImplCopyWith(
          _$GetChatsDetailsLoadingImpl<T> value,
          $Res Function(_$GetChatsDetailsLoadingImpl<T>) then) =
      __$$GetChatsDetailsLoadingImplCopyWithImpl<T, $Res>;
}

/// @nodoc
class __$$GetChatsDetailsLoadingImplCopyWithImpl<T, $Res>
    extends _$ChatsStateCopyWithImpl<T, $Res, _$GetChatsDetailsLoadingImpl<T>>
    implements _$$GetChatsDetailsLoadingImplCopyWith<T, $Res> {
  __$$GetChatsDetailsLoadingImplCopyWithImpl(
      _$GetChatsDetailsLoadingImpl<T> _value,
      $Res Function(_$GetChatsDetailsLoadingImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ChatsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetChatsDetailsLoadingImpl<T> implements GetChatsDetailsLoading<T> {
  const _$GetChatsDetailsLoadingImpl();

  @override
  String toString() {
    return 'ChatsState<$T>.getChatDetailsLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetChatsDetailsLoadingImpl<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendMessageLoading,
    required TResult Function(SendChatResponseModel sendChatResponseModel)
        sendMessageSuccess,
    required TResult Function(String error) sendMessageFailure,
    required TResult Function() getMessageLoading,
    required TResult Function(ChatResponseModel chatResponseModel)
        getMessageSuccess,
    required TResult Function(String error) getMessageFailure,
    required TResult Function() getChatDetailsLoading,
    required TResult Function(ChatDetailsResponseModel chatDetailsResponseModel)
        getChatDetailsSuccess,
    required TResult Function(String error) getChatDetailsFailure,
  }) {
    return getChatDetailsLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendMessageLoading,
    TResult? Function(SendChatResponseModel sendChatResponseModel)?
        sendMessageSuccess,
    TResult? Function(String error)? sendMessageFailure,
    TResult? Function()? getMessageLoading,
    TResult? Function(ChatResponseModel chatResponseModel)? getMessageSuccess,
    TResult? Function(String error)? getMessageFailure,
    TResult? Function()? getChatDetailsLoading,
    TResult? Function(ChatDetailsResponseModel chatDetailsResponseModel)?
        getChatDetailsSuccess,
    TResult? Function(String error)? getChatDetailsFailure,
  }) {
    return getChatDetailsLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendMessageLoading,
    TResult Function(SendChatResponseModel sendChatResponseModel)?
        sendMessageSuccess,
    TResult Function(String error)? sendMessageFailure,
    TResult Function()? getMessageLoading,
    TResult Function(ChatResponseModel chatResponseModel)? getMessageSuccess,
    TResult Function(String error)? getMessageFailure,
    TResult Function()? getChatDetailsLoading,
    TResult Function(ChatDetailsResponseModel chatDetailsResponseModel)?
        getChatDetailsSuccess,
    TResult Function(String error)? getChatDetailsFailure,
    required TResult orElse(),
  }) {
    if (getChatDetailsLoading != null) {
      return getChatDetailsLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatsInitial<T> value) initial,
    required TResult Function(SendChatsLoading<T> value) sendMessageLoading,
    required TResult Function(SendChatsSuccess<T> value) sendMessageSuccess,
    required TResult Function(SendChatsFailure<T> value) sendMessageFailure,
    required TResult Function(GetChatsLoading<T> value) getMessageLoading,
    required TResult Function(GetChatsSuccess<T> value) getMessageSuccess,
    required TResult Function(GetChatsFailure<T> value) getMessageFailure,
    required TResult Function(GetChatsDetailsLoading<T> value)
        getChatDetailsLoading,
    required TResult Function(GetChatsDetailsSuccess<T> value)
        getChatDetailsSuccess,
    required TResult Function(GetChatsDetailsFailure<T> value)
        getChatDetailsFailure,
  }) {
    return getChatDetailsLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatsInitial<T> value)? initial,
    TResult? Function(SendChatsLoading<T> value)? sendMessageLoading,
    TResult? Function(SendChatsSuccess<T> value)? sendMessageSuccess,
    TResult? Function(SendChatsFailure<T> value)? sendMessageFailure,
    TResult? Function(GetChatsLoading<T> value)? getMessageLoading,
    TResult? Function(GetChatsSuccess<T> value)? getMessageSuccess,
    TResult? Function(GetChatsFailure<T> value)? getMessageFailure,
    TResult? Function(GetChatsDetailsLoading<T> value)? getChatDetailsLoading,
    TResult? Function(GetChatsDetailsSuccess<T> value)? getChatDetailsSuccess,
    TResult? Function(GetChatsDetailsFailure<T> value)? getChatDetailsFailure,
  }) {
    return getChatDetailsLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatsInitial<T> value)? initial,
    TResult Function(SendChatsLoading<T> value)? sendMessageLoading,
    TResult Function(SendChatsSuccess<T> value)? sendMessageSuccess,
    TResult Function(SendChatsFailure<T> value)? sendMessageFailure,
    TResult Function(GetChatsLoading<T> value)? getMessageLoading,
    TResult Function(GetChatsSuccess<T> value)? getMessageSuccess,
    TResult Function(GetChatsFailure<T> value)? getMessageFailure,
    TResult Function(GetChatsDetailsLoading<T> value)? getChatDetailsLoading,
    TResult Function(GetChatsDetailsSuccess<T> value)? getChatDetailsSuccess,
    TResult Function(GetChatsDetailsFailure<T> value)? getChatDetailsFailure,
    required TResult orElse(),
  }) {
    if (getChatDetailsLoading != null) {
      return getChatDetailsLoading(this);
    }
    return orElse();
  }
}

abstract class GetChatsDetailsLoading<T> implements ChatsState<T> {
  const factory GetChatsDetailsLoading() = _$GetChatsDetailsLoadingImpl<T>;
}

/// @nodoc
abstract class _$$GetChatsDetailsSuccessImplCopyWith<T, $Res> {
  factory _$$GetChatsDetailsSuccessImplCopyWith(
          _$GetChatsDetailsSuccessImpl<T> value,
          $Res Function(_$GetChatsDetailsSuccessImpl<T>) then) =
      __$$GetChatsDetailsSuccessImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({ChatDetailsResponseModel chatDetailsResponseModel});
}

/// @nodoc
class __$$GetChatsDetailsSuccessImplCopyWithImpl<T, $Res>
    extends _$ChatsStateCopyWithImpl<T, $Res, _$GetChatsDetailsSuccessImpl<T>>
    implements _$$GetChatsDetailsSuccessImplCopyWith<T, $Res> {
  __$$GetChatsDetailsSuccessImplCopyWithImpl(
      _$GetChatsDetailsSuccessImpl<T> _value,
      $Res Function(_$GetChatsDetailsSuccessImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ChatsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatDetailsResponseModel = null,
  }) {
    return _then(_$GetChatsDetailsSuccessImpl<T>(
      null == chatDetailsResponseModel
          ? _value.chatDetailsResponseModel
          : chatDetailsResponseModel // ignore: cast_nullable_to_non_nullable
              as ChatDetailsResponseModel,
    ));
  }
}

/// @nodoc

class _$GetChatsDetailsSuccessImpl<T> implements GetChatsDetailsSuccess<T> {
  const _$GetChatsDetailsSuccessImpl(this.chatDetailsResponseModel);

  @override
  final ChatDetailsResponseModel chatDetailsResponseModel;

  @override
  String toString() {
    return 'ChatsState<$T>.getChatDetailsSuccess(chatDetailsResponseModel: $chatDetailsResponseModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetChatsDetailsSuccessImpl<T> &&
            (identical(
                    other.chatDetailsResponseModel, chatDetailsResponseModel) ||
                other.chatDetailsResponseModel == chatDetailsResponseModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatDetailsResponseModel);

  /// Create a copy of ChatsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetChatsDetailsSuccessImplCopyWith<T, _$GetChatsDetailsSuccessImpl<T>>
      get copyWith => __$$GetChatsDetailsSuccessImplCopyWithImpl<T,
          _$GetChatsDetailsSuccessImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendMessageLoading,
    required TResult Function(SendChatResponseModel sendChatResponseModel)
        sendMessageSuccess,
    required TResult Function(String error) sendMessageFailure,
    required TResult Function() getMessageLoading,
    required TResult Function(ChatResponseModel chatResponseModel)
        getMessageSuccess,
    required TResult Function(String error) getMessageFailure,
    required TResult Function() getChatDetailsLoading,
    required TResult Function(ChatDetailsResponseModel chatDetailsResponseModel)
        getChatDetailsSuccess,
    required TResult Function(String error) getChatDetailsFailure,
  }) {
    return getChatDetailsSuccess(chatDetailsResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendMessageLoading,
    TResult? Function(SendChatResponseModel sendChatResponseModel)?
        sendMessageSuccess,
    TResult? Function(String error)? sendMessageFailure,
    TResult? Function()? getMessageLoading,
    TResult? Function(ChatResponseModel chatResponseModel)? getMessageSuccess,
    TResult? Function(String error)? getMessageFailure,
    TResult? Function()? getChatDetailsLoading,
    TResult? Function(ChatDetailsResponseModel chatDetailsResponseModel)?
        getChatDetailsSuccess,
    TResult? Function(String error)? getChatDetailsFailure,
  }) {
    return getChatDetailsSuccess?.call(chatDetailsResponseModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendMessageLoading,
    TResult Function(SendChatResponseModel sendChatResponseModel)?
        sendMessageSuccess,
    TResult Function(String error)? sendMessageFailure,
    TResult Function()? getMessageLoading,
    TResult Function(ChatResponseModel chatResponseModel)? getMessageSuccess,
    TResult Function(String error)? getMessageFailure,
    TResult Function()? getChatDetailsLoading,
    TResult Function(ChatDetailsResponseModel chatDetailsResponseModel)?
        getChatDetailsSuccess,
    TResult Function(String error)? getChatDetailsFailure,
    required TResult orElse(),
  }) {
    if (getChatDetailsSuccess != null) {
      return getChatDetailsSuccess(chatDetailsResponseModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatsInitial<T> value) initial,
    required TResult Function(SendChatsLoading<T> value) sendMessageLoading,
    required TResult Function(SendChatsSuccess<T> value) sendMessageSuccess,
    required TResult Function(SendChatsFailure<T> value) sendMessageFailure,
    required TResult Function(GetChatsLoading<T> value) getMessageLoading,
    required TResult Function(GetChatsSuccess<T> value) getMessageSuccess,
    required TResult Function(GetChatsFailure<T> value) getMessageFailure,
    required TResult Function(GetChatsDetailsLoading<T> value)
        getChatDetailsLoading,
    required TResult Function(GetChatsDetailsSuccess<T> value)
        getChatDetailsSuccess,
    required TResult Function(GetChatsDetailsFailure<T> value)
        getChatDetailsFailure,
  }) {
    return getChatDetailsSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatsInitial<T> value)? initial,
    TResult? Function(SendChatsLoading<T> value)? sendMessageLoading,
    TResult? Function(SendChatsSuccess<T> value)? sendMessageSuccess,
    TResult? Function(SendChatsFailure<T> value)? sendMessageFailure,
    TResult? Function(GetChatsLoading<T> value)? getMessageLoading,
    TResult? Function(GetChatsSuccess<T> value)? getMessageSuccess,
    TResult? Function(GetChatsFailure<T> value)? getMessageFailure,
    TResult? Function(GetChatsDetailsLoading<T> value)? getChatDetailsLoading,
    TResult? Function(GetChatsDetailsSuccess<T> value)? getChatDetailsSuccess,
    TResult? Function(GetChatsDetailsFailure<T> value)? getChatDetailsFailure,
  }) {
    return getChatDetailsSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatsInitial<T> value)? initial,
    TResult Function(SendChatsLoading<T> value)? sendMessageLoading,
    TResult Function(SendChatsSuccess<T> value)? sendMessageSuccess,
    TResult Function(SendChatsFailure<T> value)? sendMessageFailure,
    TResult Function(GetChatsLoading<T> value)? getMessageLoading,
    TResult Function(GetChatsSuccess<T> value)? getMessageSuccess,
    TResult Function(GetChatsFailure<T> value)? getMessageFailure,
    TResult Function(GetChatsDetailsLoading<T> value)? getChatDetailsLoading,
    TResult Function(GetChatsDetailsSuccess<T> value)? getChatDetailsSuccess,
    TResult Function(GetChatsDetailsFailure<T> value)? getChatDetailsFailure,
    required TResult orElse(),
  }) {
    if (getChatDetailsSuccess != null) {
      return getChatDetailsSuccess(this);
    }
    return orElse();
  }
}

abstract class GetChatsDetailsSuccess<T> implements ChatsState<T> {
  const factory GetChatsDetailsSuccess(
          final ChatDetailsResponseModel chatDetailsResponseModel) =
      _$GetChatsDetailsSuccessImpl<T>;

  ChatDetailsResponseModel get chatDetailsResponseModel;

  /// Create a copy of ChatsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetChatsDetailsSuccessImplCopyWith<T, _$GetChatsDetailsSuccessImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetChatsDetailsFailureImplCopyWith<T, $Res> {
  factory _$$GetChatsDetailsFailureImplCopyWith(
          _$GetChatsDetailsFailureImpl<T> value,
          $Res Function(_$GetChatsDetailsFailureImpl<T>) then) =
      __$$GetChatsDetailsFailureImplCopyWithImpl<T, $Res>;
  @useResult
  $Res call({String error});
}

/// @nodoc
class __$$GetChatsDetailsFailureImplCopyWithImpl<T, $Res>
    extends _$ChatsStateCopyWithImpl<T, $Res, _$GetChatsDetailsFailureImpl<T>>
    implements _$$GetChatsDetailsFailureImplCopyWith<T, $Res> {
  __$$GetChatsDetailsFailureImplCopyWithImpl(
      _$GetChatsDetailsFailureImpl<T> _value,
      $Res Function(_$GetChatsDetailsFailureImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ChatsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$GetChatsDetailsFailureImpl<T>(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetChatsDetailsFailureImpl<T> implements GetChatsDetailsFailure<T> {
  const _$GetChatsDetailsFailureImpl(this.error);

  @override
  final String error;

  @override
  String toString() {
    return 'ChatsState<$T>.getChatDetailsFailure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetChatsDetailsFailureImpl<T> &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  /// Create a copy of ChatsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GetChatsDetailsFailureImplCopyWith<T, _$GetChatsDetailsFailureImpl<T>>
      get copyWith => __$$GetChatsDetailsFailureImplCopyWithImpl<T,
          _$GetChatsDetailsFailureImpl<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() sendMessageLoading,
    required TResult Function(SendChatResponseModel sendChatResponseModel)
        sendMessageSuccess,
    required TResult Function(String error) sendMessageFailure,
    required TResult Function() getMessageLoading,
    required TResult Function(ChatResponseModel chatResponseModel)
        getMessageSuccess,
    required TResult Function(String error) getMessageFailure,
    required TResult Function() getChatDetailsLoading,
    required TResult Function(ChatDetailsResponseModel chatDetailsResponseModel)
        getChatDetailsSuccess,
    required TResult Function(String error) getChatDetailsFailure,
  }) {
    return getChatDetailsFailure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? sendMessageLoading,
    TResult? Function(SendChatResponseModel sendChatResponseModel)?
        sendMessageSuccess,
    TResult? Function(String error)? sendMessageFailure,
    TResult? Function()? getMessageLoading,
    TResult? Function(ChatResponseModel chatResponseModel)? getMessageSuccess,
    TResult? Function(String error)? getMessageFailure,
    TResult? Function()? getChatDetailsLoading,
    TResult? Function(ChatDetailsResponseModel chatDetailsResponseModel)?
        getChatDetailsSuccess,
    TResult? Function(String error)? getChatDetailsFailure,
  }) {
    return getChatDetailsFailure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? sendMessageLoading,
    TResult Function(SendChatResponseModel sendChatResponseModel)?
        sendMessageSuccess,
    TResult Function(String error)? sendMessageFailure,
    TResult Function()? getMessageLoading,
    TResult Function(ChatResponseModel chatResponseModel)? getMessageSuccess,
    TResult Function(String error)? getMessageFailure,
    TResult Function()? getChatDetailsLoading,
    TResult Function(ChatDetailsResponseModel chatDetailsResponseModel)?
        getChatDetailsSuccess,
    TResult Function(String error)? getChatDetailsFailure,
    required TResult orElse(),
  }) {
    if (getChatDetailsFailure != null) {
      return getChatDetailsFailure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChatsInitial<T> value) initial,
    required TResult Function(SendChatsLoading<T> value) sendMessageLoading,
    required TResult Function(SendChatsSuccess<T> value) sendMessageSuccess,
    required TResult Function(SendChatsFailure<T> value) sendMessageFailure,
    required TResult Function(GetChatsLoading<T> value) getMessageLoading,
    required TResult Function(GetChatsSuccess<T> value) getMessageSuccess,
    required TResult Function(GetChatsFailure<T> value) getMessageFailure,
    required TResult Function(GetChatsDetailsLoading<T> value)
        getChatDetailsLoading,
    required TResult Function(GetChatsDetailsSuccess<T> value)
        getChatDetailsSuccess,
    required TResult Function(GetChatsDetailsFailure<T> value)
        getChatDetailsFailure,
  }) {
    return getChatDetailsFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChatsInitial<T> value)? initial,
    TResult? Function(SendChatsLoading<T> value)? sendMessageLoading,
    TResult? Function(SendChatsSuccess<T> value)? sendMessageSuccess,
    TResult? Function(SendChatsFailure<T> value)? sendMessageFailure,
    TResult? Function(GetChatsLoading<T> value)? getMessageLoading,
    TResult? Function(GetChatsSuccess<T> value)? getMessageSuccess,
    TResult? Function(GetChatsFailure<T> value)? getMessageFailure,
    TResult? Function(GetChatsDetailsLoading<T> value)? getChatDetailsLoading,
    TResult? Function(GetChatsDetailsSuccess<T> value)? getChatDetailsSuccess,
    TResult? Function(GetChatsDetailsFailure<T> value)? getChatDetailsFailure,
  }) {
    return getChatDetailsFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChatsInitial<T> value)? initial,
    TResult Function(SendChatsLoading<T> value)? sendMessageLoading,
    TResult Function(SendChatsSuccess<T> value)? sendMessageSuccess,
    TResult Function(SendChatsFailure<T> value)? sendMessageFailure,
    TResult Function(GetChatsLoading<T> value)? getMessageLoading,
    TResult Function(GetChatsSuccess<T> value)? getMessageSuccess,
    TResult Function(GetChatsFailure<T> value)? getMessageFailure,
    TResult Function(GetChatsDetailsLoading<T> value)? getChatDetailsLoading,
    TResult Function(GetChatsDetailsSuccess<T> value)? getChatDetailsSuccess,
    TResult Function(GetChatsDetailsFailure<T> value)? getChatDetailsFailure,
    required TResult orElse(),
  }) {
    if (getChatDetailsFailure != null) {
      return getChatDetailsFailure(this);
    }
    return orElse();
  }
}

abstract class GetChatsDetailsFailure<T> implements ChatsState<T> {
  const factory GetChatsDetailsFailure(final String error) =
      _$GetChatsDetailsFailureImpl<T>;

  String get error;

  /// Create a copy of ChatsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GetChatsDetailsFailureImplCopyWith<T, _$GetChatsDetailsFailureImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
