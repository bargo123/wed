// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'likes_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LikesEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LikesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LikesEvent()';
}


}

/// @nodoc
class $LikesEventCopyWith<$Res>  {
$LikesEventCopyWith(LikesEvent _, $Res Function(LikesEvent) __);
}


/// Adds pattern-matching-related methods to [LikesEvent].
extension LikesEventPatterns on LikesEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Subscribe value)?  subscribe,TResult Function( _LikeBack value)?  likeBack,TResult Function( _Remove value)?  remove,TResult Function( _EmitUsers value)?  emitUsers,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Subscribe() when subscribe != null:
return subscribe(_that);case _LikeBack() when likeBack != null:
return likeBack(_that);case _Remove() when remove != null:
return remove(_that);case _EmitUsers() when emitUsers != null:
return emitUsers(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Subscribe value)  subscribe,required TResult Function( _LikeBack value)  likeBack,required TResult Function( _Remove value)  remove,required TResult Function( _EmitUsers value)  emitUsers,}){
final _that = this;
switch (_that) {
case _Subscribe():
return subscribe(_that);case _LikeBack():
return likeBack(_that);case _Remove():
return remove(_that);case _EmitUsers():
return emitUsers(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Subscribe value)?  subscribe,TResult? Function( _LikeBack value)?  likeBack,TResult? Function( _Remove value)?  remove,TResult? Function( _EmitUsers value)?  emitUsers,}){
final _that = this;
switch (_that) {
case _Subscribe() when subscribe != null:
return subscribe(_that);case _LikeBack() when likeBack != null:
return likeBack(_that);case _Remove() when remove != null:
return remove(_that);case _EmitUsers() when emitUsers != null:
return emitUsers(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  subscribe,TResult Function( String userId)?  likeBack,TResult Function( String userId)?  remove,TResult Function( Map<bool, UserInfoModel> users)?  emitUsers,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Subscribe() when subscribe != null:
return subscribe();case _LikeBack() when likeBack != null:
return likeBack(_that.userId);case _Remove() when remove != null:
return remove(_that.userId);case _EmitUsers() when emitUsers != null:
return emitUsers(_that.users);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  subscribe,required TResult Function( String userId)  likeBack,required TResult Function( String userId)  remove,required TResult Function( Map<bool, UserInfoModel> users)  emitUsers,}) {final _that = this;
switch (_that) {
case _Subscribe():
return subscribe();case _LikeBack():
return likeBack(_that.userId);case _Remove():
return remove(_that.userId);case _EmitUsers():
return emitUsers(_that.users);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  subscribe,TResult? Function( String userId)?  likeBack,TResult? Function( String userId)?  remove,TResult? Function( Map<bool, UserInfoModel> users)?  emitUsers,}) {final _that = this;
switch (_that) {
case _Subscribe() when subscribe != null:
return subscribe();case _LikeBack() when likeBack != null:
return likeBack(_that.userId);case _Remove() when remove != null:
return remove(_that.userId);case _EmitUsers() when emitUsers != null:
return emitUsers(_that.users);case _:
  return null;

}
}

}

/// @nodoc


class _Subscribe implements LikesEvent {
  const _Subscribe();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Subscribe);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LikesEvent.subscribe()';
}


}




/// @nodoc


class _LikeBack implements LikesEvent {
  const _LikeBack(this.userId);
  

 final  String userId;

/// Create a copy of LikesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LikeBackCopyWith<_LikeBack> get copyWith => __$LikeBackCopyWithImpl<_LikeBack>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LikeBack&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'LikesEvent.likeBack(userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$LikeBackCopyWith<$Res> implements $LikesEventCopyWith<$Res> {
  factory _$LikeBackCopyWith(_LikeBack value, $Res Function(_LikeBack) _then) = __$LikeBackCopyWithImpl;
@useResult
$Res call({
 String userId
});




}
/// @nodoc
class __$LikeBackCopyWithImpl<$Res>
    implements _$LikeBackCopyWith<$Res> {
  __$LikeBackCopyWithImpl(this._self, this._then);

  final _LikeBack _self;
  final $Res Function(_LikeBack) _then;

/// Create a copy of LikesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(_LikeBack(
null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Remove implements LikesEvent {
  const _Remove(this.userId);
  

 final  String userId;

/// Create a copy of LikesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RemoveCopyWith<_Remove> get copyWith => __$RemoveCopyWithImpl<_Remove>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Remove&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'LikesEvent.remove(userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$RemoveCopyWith<$Res> implements $LikesEventCopyWith<$Res> {
  factory _$RemoveCopyWith(_Remove value, $Res Function(_Remove) _then) = __$RemoveCopyWithImpl;
@useResult
$Res call({
 String userId
});




}
/// @nodoc
class __$RemoveCopyWithImpl<$Res>
    implements _$RemoveCopyWith<$Res> {
  __$RemoveCopyWithImpl(this._self, this._then);

  final _Remove _self;
  final $Res Function(_Remove) _then;

/// Create a copy of LikesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(_Remove(
null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _EmitUsers implements LikesEvent {
  const _EmitUsers(final  Map<bool, UserInfoModel> users): _users = users;
  

 final  Map<bool, UserInfoModel> _users;
 Map<bool, UserInfoModel> get users {
  if (_users is EqualUnmodifiableMapView) return _users;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_users);
}


/// Create a copy of LikesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmitUsersCopyWith<_EmitUsers> get copyWith => __$EmitUsersCopyWithImpl<_EmitUsers>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmitUsers&&const DeepCollectionEquality().equals(other._users, _users));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_users));

@override
String toString() {
  return 'LikesEvent.emitUsers(users: $users)';
}


}

/// @nodoc
abstract mixin class _$EmitUsersCopyWith<$Res> implements $LikesEventCopyWith<$Res> {
  factory _$EmitUsersCopyWith(_EmitUsers value, $Res Function(_EmitUsers) _then) = __$EmitUsersCopyWithImpl;
@useResult
$Res call({
 Map<bool, UserInfoModel> users
});




}
/// @nodoc
class __$EmitUsersCopyWithImpl<$Res>
    implements _$EmitUsersCopyWith<$Res> {
  __$EmitUsersCopyWithImpl(this._self, this._then);

  final _EmitUsers _self;
  final $Res Function(_EmitUsers) _then;

/// Create a copy of LikesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? users = null,}) {
  return _then(_EmitUsers(
null == users ? _self._users : users // ignore: cast_nullable_to_non_nullable
as Map<bool, UserInfoModel>,
  ));
}


}

/// @nodoc
mixin _$LikesState {

 Map<bool, UserInfoModel> get users; LikesProcessState get processState;
/// Create a copy of LikesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LikesStateCopyWith<LikesState> get copyWith => _$LikesStateCopyWithImpl<LikesState>(this as LikesState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LikesState&&const DeepCollectionEquality().equals(other.users, users)&&(identical(other.processState, processState) || other.processState == processState));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(users),processState);

@override
String toString() {
  return 'LikesState(users: $users, processState: $processState)';
}


}

/// @nodoc
abstract mixin class $LikesStateCopyWith<$Res>  {
  factory $LikesStateCopyWith(LikesState value, $Res Function(LikesState) _then) = _$LikesStateCopyWithImpl;
@useResult
$Res call({
 Map<bool, UserInfoModel> users, LikesProcessState processState
});


$LikesProcessStateCopyWith<$Res> get processState;

}
/// @nodoc
class _$LikesStateCopyWithImpl<$Res>
    implements $LikesStateCopyWith<$Res> {
  _$LikesStateCopyWithImpl(this._self, this._then);

  final LikesState _self;
  final $Res Function(LikesState) _then;

/// Create a copy of LikesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? users = null,Object? processState = null,}) {
  return _then(_self.copyWith(
users: null == users ? _self.users : users // ignore: cast_nullable_to_non_nullable
as Map<bool, UserInfoModel>,processState: null == processState ? _self.processState : processState // ignore: cast_nullable_to_non_nullable
as LikesProcessState,
  ));
}
/// Create a copy of LikesState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LikesProcessStateCopyWith<$Res> get processState {
  
  return $LikesProcessStateCopyWith<$Res>(_self.processState, (value) {
    return _then(_self.copyWith(processState: value));
  });
}
}


/// Adds pattern-matching-related methods to [LikesState].
extension LikesStatePatterns on LikesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LikesState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LikesState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LikesState value)  $default,){
final _that = this;
switch (_that) {
case _LikesState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LikesState value)?  $default,){
final _that = this;
switch (_that) {
case _LikesState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( Map<bool, UserInfoModel> users,  LikesProcessState processState)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LikesState() when $default != null:
return $default(_that.users,_that.processState);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( Map<bool, UserInfoModel> users,  LikesProcessState processState)  $default,) {final _that = this;
switch (_that) {
case _LikesState():
return $default(_that.users,_that.processState);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( Map<bool, UserInfoModel> users,  LikesProcessState processState)?  $default,) {final _that = this;
switch (_that) {
case _LikesState() when $default != null:
return $default(_that.users,_that.processState);case _:
  return null;

}
}

}

/// @nodoc


class _LikesState implements LikesState {
  const _LikesState({final  Map<bool, UserInfoModel> users = const {}, this.processState = const LikesProcessState.loading()}): _users = users;
  

 final  Map<bool, UserInfoModel> _users;
@override@JsonKey() Map<bool, UserInfoModel> get users {
  if (_users is EqualUnmodifiableMapView) return _users;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_users);
}

@override@JsonKey() final  LikesProcessState processState;

/// Create a copy of LikesState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LikesStateCopyWith<_LikesState> get copyWith => __$LikesStateCopyWithImpl<_LikesState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LikesState&&const DeepCollectionEquality().equals(other._users, _users)&&(identical(other.processState, processState) || other.processState == processState));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_users),processState);

@override
String toString() {
  return 'LikesState(users: $users, processState: $processState)';
}


}

/// @nodoc
abstract mixin class _$LikesStateCopyWith<$Res> implements $LikesStateCopyWith<$Res> {
  factory _$LikesStateCopyWith(_LikesState value, $Res Function(_LikesState) _then) = __$LikesStateCopyWithImpl;
@override @useResult
$Res call({
 Map<bool, UserInfoModel> users, LikesProcessState processState
});


@override $LikesProcessStateCopyWith<$Res> get processState;

}
/// @nodoc
class __$LikesStateCopyWithImpl<$Res>
    implements _$LikesStateCopyWith<$Res> {
  __$LikesStateCopyWithImpl(this._self, this._then);

  final _LikesState _self;
  final $Res Function(_LikesState) _then;

/// Create a copy of LikesState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? users = null,Object? processState = null,}) {
  return _then(_LikesState(
users: null == users ? _self._users : users // ignore: cast_nullable_to_non_nullable
as Map<bool, UserInfoModel>,processState: null == processState ? _self.processState : processState // ignore: cast_nullable_to_non_nullable
as LikesProcessState,
  ));
}

/// Create a copy of LikesState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$LikesProcessStateCopyWith<$Res> get processState {
  
  return $LikesProcessStateCopyWith<$Res>(_self.processState, (value) {
    return _then(_self.copyWith(processState: value));
  });
}
}

/// @nodoc
mixin _$LikesProcessState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LikesProcessState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LikesProcessState()';
}


}

/// @nodoc
class $LikesProcessStateCopyWith<$Res>  {
$LikesProcessStateCopyWith(LikesProcessState _, $Res Function(LikesProcessState) __);
}


/// Adds pattern-matching-related methods to [LikesProcessState].
extension LikesProcessStatePatterns on LikesProcessState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Loading value)?  loading,TResult Function( _Success value)?  success,TResult Function( _Empty value)?  empty,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
return success(_that);case _Empty() when empty != null:
return empty(_that);case _Error() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Loading value)  loading,required TResult Function( _Success value)  success,required TResult Function( _Empty value)  empty,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Loading():
return loading(_that);case _Success():
return success(_that);case _Empty():
return empty(_that);case _Error():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Loading value)?  loading,TResult? Function( _Success value)?  success,TResult? Function( _Empty value)?  empty,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading(_that);case _Success() when success != null:
return success(_that);case _Empty() when empty != null:
return empty(_that);case _Error() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function()?  success,TResult Function()?  empty,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading();case _Success() when success != null:
return success();case _Empty() when empty != null:
return empty();case _Error() when error != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function()  success,required TResult Function()  empty,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Loading():
return loading();case _Success():
return success();case _Empty():
return empty();case _Error():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function()?  success,TResult? Function()?  empty,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading();case _Success() when success != null:
return success();case _Empty() when empty != null:
return empty();case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Loading implements LikesProcessState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LikesProcessState.loading()';
}


}




/// @nodoc


class _Success implements LikesProcessState {
  const _Success();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LikesProcessState.success()';
}


}




/// @nodoc


class _Empty implements LikesProcessState {
  const _Empty();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Empty);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LikesProcessState.empty()';
}


}




/// @nodoc


class _Error implements LikesProcessState {
  const _Error(this.message);
  

 final  String message;

/// Create a copy of LikesProcessState
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
  return 'LikesProcessState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $LikesProcessStateCopyWith<$Res> {
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

/// Create a copy of LikesProcessState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
