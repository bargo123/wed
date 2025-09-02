// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SettingsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SettingsEvent()';
}


}

/// @nodoc
class $SettingsEventCopyWith<$Res>  {
$SettingsEventCopyWith(SettingsEvent _, $Res Function(SettingsEvent) __);
}


/// Adds pattern-matching-related methods to [SettingsEvent].
extension SettingsEventPatterns on SettingsEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetCurrentUserInfo value)?  getCurrentUserInfo,TResult Function( _SignOut value)?  signOut,TResult Function( _EmitUserInfo value)?  emitUserInfo,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetCurrentUserInfo() when getCurrentUserInfo != null:
return getCurrentUserInfo(_that);case _SignOut() when signOut != null:
return signOut(_that);case _EmitUserInfo() when emitUserInfo != null:
return emitUserInfo(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetCurrentUserInfo value)  getCurrentUserInfo,required TResult Function( _SignOut value)  signOut,required TResult Function( _EmitUserInfo value)  emitUserInfo,}){
final _that = this;
switch (_that) {
case _GetCurrentUserInfo():
return getCurrentUserInfo(_that);case _SignOut():
return signOut(_that);case _EmitUserInfo():
return emitUserInfo(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetCurrentUserInfo value)?  getCurrentUserInfo,TResult? Function( _SignOut value)?  signOut,TResult? Function( _EmitUserInfo value)?  emitUserInfo,}){
final _that = this;
switch (_that) {
case _GetCurrentUserInfo() when getCurrentUserInfo != null:
return getCurrentUserInfo(_that);case _SignOut() when signOut != null:
return signOut(_that);case _EmitUserInfo() when emitUserInfo != null:
return emitUserInfo(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getCurrentUserInfo,TResult Function( void Function() onSignoutSuccess)?  signOut,TResult Function( UserInfoModel user)?  emitUserInfo,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetCurrentUserInfo() when getCurrentUserInfo != null:
return getCurrentUserInfo();case _SignOut() when signOut != null:
return signOut(_that.onSignoutSuccess);case _EmitUserInfo() when emitUserInfo != null:
return emitUserInfo(_that.user);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getCurrentUserInfo,required TResult Function( void Function() onSignoutSuccess)  signOut,required TResult Function( UserInfoModel user)  emitUserInfo,}) {final _that = this;
switch (_that) {
case _GetCurrentUserInfo():
return getCurrentUserInfo();case _SignOut():
return signOut(_that.onSignoutSuccess);case _EmitUserInfo():
return emitUserInfo(_that.user);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getCurrentUserInfo,TResult? Function( void Function() onSignoutSuccess)?  signOut,TResult? Function( UserInfoModel user)?  emitUserInfo,}) {final _that = this;
switch (_that) {
case _GetCurrentUserInfo() when getCurrentUserInfo != null:
return getCurrentUserInfo();case _SignOut() when signOut != null:
return signOut(_that.onSignoutSuccess);case _EmitUserInfo() when emitUserInfo != null:
return emitUserInfo(_that.user);case _:
  return null;

}
}

}

/// @nodoc


class _GetCurrentUserInfo implements SettingsEvent {
  const _GetCurrentUserInfo();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetCurrentUserInfo);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SettingsEvent.getCurrentUserInfo()';
}


}




/// @nodoc


class _SignOut implements SettingsEvent {
  const _SignOut({required this.onSignoutSuccess});
  

 final  void Function() onSignoutSuccess;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignOutCopyWith<_SignOut> get copyWith => __$SignOutCopyWithImpl<_SignOut>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignOut&&(identical(other.onSignoutSuccess, onSignoutSuccess) || other.onSignoutSuccess == onSignoutSuccess));
}


@override
int get hashCode => Object.hash(runtimeType,onSignoutSuccess);

@override
String toString() {
  return 'SettingsEvent.signOut(onSignoutSuccess: $onSignoutSuccess)';
}


}

/// @nodoc
abstract mixin class _$SignOutCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$SignOutCopyWith(_SignOut value, $Res Function(_SignOut) _then) = __$SignOutCopyWithImpl;
@useResult
$Res call({
 void Function() onSignoutSuccess
});




}
/// @nodoc
class __$SignOutCopyWithImpl<$Res>
    implements _$SignOutCopyWith<$Res> {
  __$SignOutCopyWithImpl(this._self, this._then);

  final _SignOut _self;
  final $Res Function(_SignOut) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? onSignoutSuccess = null,}) {
  return _then(_SignOut(
onSignoutSuccess: null == onSignoutSuccess ? _self.onSignoutSuccess : onSignoutSuccess // ignore: cast_nullable_to_non_nullable
as void Function(),
  ));
}


}

/// @nodoc


class _EmitUserInfo implements SettingsEvent {
  const _EmitUserInfo(this.user);
  

 final  UserInfoModel user;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmitUserInfoCopyWith<_EmitUserInfo> get copyWith => __$EmitUserInfoCopyWithImpl<_EmitUserInfo>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmitUserInfo&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'SettingsEvent.emitUserInfo(user: $user)';
}


}

/// @nodoc
abstract mixin class _$EmitUserInfoCopyWith<$Res> implements $SettingsEventCopyWith<$Res> {
  factory _$EmitUserInfoCopyWith(_EmitUserInfo value, $Res Function(_EmitUserInfo) _then) = __$EmitUserInfoCopyWithImpl;
@useResult
$Res call({
 UserInfoModel user
});


$UserInfoModelCopyWith<$Res> get user;

}
/// @nodoc
class __$EmitUserInfoCopyWithImpl<$Res>
    implements _$EmitUserInfoCopyWith<$Res> {
  __$EmitUserInfoCopyWithImpl(this._self, this._then);

  final _EmitUserInfo _self;
  final $Res Function(_EmitUserInfo) _then;

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(_EmitUserInfo(
null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserInfoModel,
  ));
}

/// Create a copy of SettingsEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserInfoModelCopyWith<$Res> get user {
  
  return $UserInfoModelCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

/// @nodoc
mixin _$SettingsState {

 SettingsProcessState get processState; UserInfoModel? get currentUserInfo;
/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SettingsStateCopyWith<SettingsState> get copyWith => _$SettingsStateCopyWithImpl<SettingsState>(this as SettingsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsState&&(identical(other.processState, processState) || other.processState == processState)&&(identical(other.currentUserInfo, currentUserInfo) || other.currentUserInfo == currentUserInfo));
}


@override
int get hashCode => Object.hash(runtimeType,processState,currentUserInfo);

@override
String toString() {
  return 'SettingsState(processState: $processState, currentUserInfo: $currentUserInfo)';
}


}

/// @nodoc
abstract mixin class $SettingsStateCopyWith<$Res>  {
  factory $SettingsStateCopyWith(SettingsState value, $Res Function(SettingsState) _then) = _$SettingsStateCopyWithImpl;
@useResult
$Res call({
 SettingsProcessState processState, UserInfoModel? currentUserInfo
});


$SettingsProcessStateCopyWith<$Res> get processState;$UserInfoModelCopyWith<$Res>? get currentUserInfo;

}
/// @nodoc
class _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._self, this._then);

  final SettingsState _self;
  final $Res Function(SettingsState) _then;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? processState = null,Object? currentUserInfo = freezed,}) {
  return _then(_self.copyWith(
processState: null == processState ? _self.processState : processState // ignore: cast_nullable_to_non_nullable
as SettingsProcessState,currentUserInfo: freezed == currentUserInfo ? _self.currentUserInfo : currentUserInfo // ignore: cast_nullable_to_non_nullable
as UserInfoModel?,
  ));
}
/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SettingsProcessStateCopyWith<$Res> get processState {
  
  return $SettingsProcessStateCopyWith<$Res>(_self.processState, (value) {
    return _then(_self.copyWith(processState: value));
  });
}/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserInfoModelCopyWith<$Res>? get currentUserInfo {
    if (_self.currentUserInfo == null) {
    return null;
  }

  return $UserInfoModelCopyWith<$Res>(_self.currentUserInfo!, (value) {
    return _then(_self.copyWith(currentUserInfo: value));
  });
}
}


/// Adds pattern-matching-related methods to [SettingsState].
extension SettingsStatePatterns on SettingsState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SettingsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SettingsState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SettingsState value)  $default,){
final _that = this;
switch (_that) {
case _SettingsState():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SettingsState value)?  $default,){
final _that = this;
switch (_that) {
case _SettingsState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SettingsProcessState processState,  UserInfoModel? currentUserInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SettingsState() when $default != null:
return $default(_that.processState,_that.currentUserInfo);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SettingsProcessState processState,  UserInfoModel? currentUserInfo)  $default,) {final _that = this;
switch (_that) {
case _SettingsState():
return $default(_that.processState,_that.currentUserInfo);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SettingsProcessState processState,  UserInfoModel? currentUserInfo)?  $default,) {final _that = this;
switch (_that) {
case _SettingsState() when $default != null:
return $default(_that.processState,_that.currentUserInfo);case _:
  return null;

}
}

}

/// @nodoc


class _SettingsState implements SettingsState {
  const _SettingsState({this.processState = const SettingsProcessState.loading(), this.currentUserInfo});
  

@override@JsonKey() final  SettingsProcessState processState;
@override final  UserInfoModel? currentUserInfo;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SettingsStateCopyWith<_SettingsState> get copyWith => __$SettingsStateCopyWithImpl<_SettingsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SettingsState&&(identical(other.processState, processState) || other.processState == processState)&&(identical(other.currentUserInfo, currentUserInfo) || other.currentUserInfo == currentUserInfo));
}


@override
int get hashCode => Object.hash(runtimeType,processState,currentUserInfo);

@override
String toString() {
  return 'SettingsState(processState: $processState, currentUserInfo: $currentUserInfo)';
}


}

/// @nodoc
abstract mixin class _$SettingsStateCopyWith<$Res> implements $SettingsStateCopyWith<$Res> {
  factory _$SettingsStateCopyWith(_SettingsState value, $Res Function(_SettingsState) _then) = __$SettingsStateCopyWithImpl;
@override @useResult
$Res call({
 SettingsProcessState processState, UserInfoModel? currentUserInfo
});


@override $SettingsProcessStateCopyWith<$Res> get processState;@override $UserInfoModelCopyWith<$Res>? get currentUserInfo;

}
/// @nodoc
class __$SettingsStateCopyWithImpl<$Res>
    implements _$SettingsStateCopyWith<$Res> {
  __$SettingsStateCopyWithImpl(this._self, this._then);

  final _SettingsState _self;
  final $Res Function(_SettingsState) _then;

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? processState = null,Object? currentUserInfo = freezed,}) {
  return _then(_SettingsState(
processState: null == processState ? _self.processState : processState // ignore: cast_nullable_to_non_nullable
as SettingsProcessState,currentUserInfo: freezed == currentUserInfo ? _self.currentUserInfo : currentUserInfo // ignore: cast_nullable_to_non_nullable
as UserInfoModel?,
  ));
}

/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SettingsProcessStateCopyWith<$Res> get processState {
  
  return $SettingsProcessStateCopyWith<$Res>(_self.processState, (value) {
    return _then(_self.copyWith(processState: value));
  });
}/// Create a copy of SettingsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserInfoModelCopyWith<$Res>? get currentUserInfo {
    if (_self.currentUserInfo == null) {
    return null;
  }

  return $UserInfoModelCopyWith<$Res>(_self.currentUserInfo!, (value) {
    return _then(_self.copyWith(currentUserInfo: value));
  });
}
}

/// @nodoc
mixin _$SettingsProcessState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SettingsProcessState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SettingsProcessState()';
}


}

/// @nodoc
class $SettingsProcessStateCopyWith<$Res>  {
$SettingsProcessStateCopyWith(SettingsProcessState _, $Res Function(SettingsProcessState) __);
}


/// Adds pattern-matching-related methods to [SettingsProcessState].
extension SettingsProcessStatePatterns on SettingsProcessState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Loading value)?  loading,TResult Function( _Success value)?  success,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
return success(_that);case _Error() when error != null:
return error(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Loading value)  loading,required TResult Function( _Success value)  success,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Loading():
return loading(_that);case _Success():
return success(_that);case _Error():
return error(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Loading value)?  loading,TResult? Function( _Success value)?  success,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
return success(_that);case _Error() when error != null:
return error(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function()?  success,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading();case _Success() when success != null:
return success();case _Error() when error != null:
return error(_that.message);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function()  success,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Loading():
return loading();case _Success():
return success();case _Error():
return error(_that.message);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function()?  success,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading();case _Success() when success != null:
return success();case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Loading implements SettingsProcessState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SettingsProcessState.loading()';
}


}




/// @nodoc


class _Success implements SettingsProcessState {
  const _Success();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SettingsProcessState.success()';
}


}




/// @nodoc


class _Error implements SettingsProcessState {
  const _Error(this.message);
  

 final  String message;

/// Create a copy of SettingsProcessState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'SettingsProcessState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $SettingsProcessStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of SettingsProcessState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
