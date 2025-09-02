// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent()';
}


}

/// @nodoc
class $HomeEventCopyWith<$Res>  {
$HomeEventCopyWith(HomeEvent _, $Res Function(HomeEvent) __);
}


/// Adds pattern-matching-related methods to [HomeEvent].
extension HomeEventPatterns on HomeEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _GetUsers value)?  getUsers,TResult Function( _SignOut value)?  signOut,TResult Function( _EmitUsers value)?  emitUsers,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetUsers() when getUsers != null:
return getUsers(_that);case _SignOut() when signOut != null:
return signOut(_that);case _EmitUsers() when emitUsers != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _GetUsers value)  getUsers,required TResult Function( _SignOut value)  signOut,required TResult Function( _EmitUsers value)  emitUsers,}){
final _that = this;
switch (_that) {
case _GetUsers():
return getUsers(_that);case _SignOut():
return signOut(_that);case _EmitUsers():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _GetUsers value)?  getUsers,TResult? Function( _SignOut value)?  signOut,TResult? Function( _EmitUsers value)?  emitUsers,}){
final _that = this;
switch (_that) {
case _GetUsers() when getUsers != null:
return getUsers(_that);case _SignOut() when signOut != null:
return signOut(_that);case _EmitUsers() when emitUsers != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  getUsers,TResult Function( void Function() onSignoutSuccess)?  signOut,TResult Function( List<UserInfoModel> userInfoModel)?  emitUsers,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetUsers() when getUsers != null:
return getUsers();case _SignOut() when signOut != null:
return signOut(_that.onSignoutSuccess);case _EmitUsers() when emitUsers != null:
return emitUsers(_that.userInfoModel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  getUsers,required TResult Function( void Function() onSignoutSuccess)  signOut,required TResult Function( List<UserInfoModel> userInfoModel)  emitUsers,}) {final _that = this;
switch (_that) {
case _GetUsers():
return getUsers();case _SignOut():
return signOut(_that.onSignoutSuccess);case _EmitUsers():
return emitUsers(_that.userInfoModel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  getUsers,TResult? Function( void Function() onSignoutSuccess)?  signOut,TResult? Function( List<UserInfoModel> userInfoModel)?  emitUsers,}) {final _that = this;
switch (_that) {
case _GetUsers() when getUsers != null:
return getUsers();case _SignOut() when signOut != null:
return signOut(_that.onSignoutSuccess);case _EmitUsers() when emitUsers != null:
return emitUsers(_that.userInfoModel);case _:
  return null;

}
}

}

/// @nodoc


class _GetUsers implements HomeEvent {
  const _GetUsers();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetUsers);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeEvent.getUsers()';
}


}




/// @nodoc


class _SignOut implements HomeEvent {
  const _SignOut({required this.onSignoutSuccess});
  

 final  void Function() onSignoutSuccess;

/// Create a copy of HomeEvent
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
  return 'HomeEvent.signOut(onSignoutSuccess: $onSignoutSuccess)';
}


}

/// @nodoc
abstract mixin class _$SignOutCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
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

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? onSignoutSuccess = null,}) {
  return _then(_SignOut(
onSignoutSuccess: null == onSignoutSuccess ? _self.onSignoutSuccess : onSignoutSuccess // ignore: cast_nullable_to_non_nullable
as void Function(),
  ));
}


}

/// @nodoc


class _EmitUsers implements HomeEvent {
  const _EmitUsers(final  List<UserInfoModel> userInfoModel): _userInfoModel = userInfoModel;
  

 final  List<UserInfoModel> _userInfoModel;
 List<UserInfoModel> get userInfoModel {
  if (_userInfoModel is EqualUnmodifiableListView) return _userInfoModel;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_userInfoModel);
}


/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmitUsersCopyWith<_EmitUsers> get copyWith => __$EmitUsersCopyWithImpl<_EmitUsers>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmitUsers&&const DeepCollectionEquality().equals(other._userInfoModel, _userInfoModel));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_userInfoModel));

@override
String toString() {
  return 'HomeEvent.emitUsers(userInfoModel: $userInfoModel)';
}


}

/// @nodoc
abstract mixin class _$EmitUsersCopyWith<$Res> implements $HomeEventCopyWith<$Res> {
  factory _$EmitUsersCopyWith(_EmitUsers value, $Res Function(_EmitUsers) _then) = __$EmitUsersCopyWithImpl;
@useResult
$Res call({
 List<UserInfoModel> userInfoModel
});




}
/// @nodoc
class __$EmitUsersCopyWithImpl<$Res>
    implements _$EmitUsersCopyWith<$Res> {
  __$EmitUsersCopyWithImpl(this._self, this._then);

  final _EmitUsers _self;
  final $Res Function(_EmitUsers) _then;

/// Create a copy of HomeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userInfoModel = null,}) {
  return _then(_EmitUsers(
null == userInfoModel ? _self._userInfoModel : userInfoModel // ignore: cast_nullable_to_non_nullable
as List<UserInfoModel>,
  ));
}


}

/// @nodoc
mixin _$HomeState {

 List<UserInfoModel> get users; HomeProcessState get processState;
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeStateCopyWith<HomeState> get copyWith => _$HomeStateCopyWithImpl<HomeState>(this as HomeState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState&&const DeepCollectionEquality().equals(other.users, users)&&(identical(other.processState, processState) || other.processState == processState));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(users),processState);

@override
String toString() {
  return 'HomeState(users: $users, processState: $processState)';
}


}

/// @nodoc
abstract mixin class $HomeStateCopyWith<$Res>  {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) _then) = _$HomeStateCopyWithImpl;
@useResult
$Res call({
 List<UserInfoModel> users, HomeProcessState processState
});


$HomeProcessStateCopyWith<$Res> get processState;

}
/// @nodoc
class _$HomeStateCopyWithImpl<$Res>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._self, this._then);

  final HomeState _self;
  final $Res Function(HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? users = null,Object? processState = null,}) {
  return _then(_self.copyWith(
users: null == users ? _self.users : users // ignore: cast_nullable_to_non_nullable
as List<UserInfoModel>,processState: null == processState ? _self.processState : processState // ignore: cast_nullable_to_non_nullable
as HomeProcessState,
  ));
}
/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeProcessStateCopyWith<$Res> get processState {
  
  return $HomeProcessStateCopyWith<$Res>(_self.processState, (value) {
    return _then(_self.copyWith(processState: value));
  });
}
}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeState value)  $default,){
final _that = this;
switch (_that) {
case _HomeState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeState value)?  $default,){
final _that = this;
switch (_that) {
case _HomeState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<UserInfoModel> users,  HomeProcessState processState)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<UserInfoModel> users,  HomeProcessState processState)  $default,) {final _that = this;
switch (_that) {
case _HomeState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<UserInfoModel> users,  HomeProcessState processState)?  $default,) {final _that = this;
switch (_that) {
case _HomeState() when $default != null:
return $default(_that.users,_that.processState);case _:
  return null;

}
}

}

/// @nodoc


class _HomeState implements HomeState {
  const _HomeState({final  List<UserInfoModel> users = const [], this.processState = const HomeProcessState.loading()}): _users = users;
  

 final  List<UserInfoModel> _users;
@override@JsonKey() List<UserInfoModel> get users {
  if (_users is EqualUnmodifiableListView) return _users;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_users);
}

@override@JsonKey() final  HomeProcessState processState;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeStateCopyWith<_HomeState> get copyWith => __$HomeStateCopyWithImpl<_HomeState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeState&&const DeepCollectionEquality().equals(other._users, _users)&&(identical(other.processState, processState) || other.processState == processState));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_users),processState);

@override
String toString() {
  return 'HomeState(users: $users, processState: $processState)';
}


}

/// @nodoc
abstract mixin class _$HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$HomeStateCopyWith(_HomeState value, $Res Function(_HomeState) _then) = __$HomeStateCopyWithImpl;
@override @useResult
$Res call({
 List<UserInfoModel> users, HomeProcessState processState
});


@override $HomeProcessStateCopyWith<$Res> get processState;

}
/// @nodoc
class __$HomeStateCopyWithImpl<$Res>
    implements _$HomeStateCopyWith<$Res> {
  __$HomeStateCopyWithImpl(this._self, this._then);

  final _HomeState _self;
  final $Res Function(_HomeState) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? users = null,Object? processState = null,}) {
  return _then(_HomeState(
users: null == users ? _self._users : users // ignore: cast_nullable_to_non_nullable
as List<UserInfoModel>,processState: null == processState ? _self.processState : processState // ignore: cast_nullable_to_non_nullable
as HomeProcessState,
  ));
}

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$HomeProcessStateCopyWith<$Res> get processState {
  
  return $HomeProcessStateCopyWith<$Res>(_self.processState, (value) {
    return _then(_self.copyWith(processState: value));
  });
}
}

/// @nodoc
mixin _$HomeProcessState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeProcessState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeProcessState()';
}


}

/// @nodoc
class $HomeProcessStateCopyWith<$Res>  {
$HomeProcessStateCopyWith(HomeProcessState _, $Res Function(HomeProcessState) __);
}


/// Adds pattern-matching-related methods to [HomeProcessState].
extension HomeProcessStatePatterns on HomeProcessState {
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


class _Loading implements HomeProcessState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeProcessState.loading()';
}


}




/// @nodoc


class _Success implements HomeProcessState {
  const _Success();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeProcessState.success()';
}


}




/// @nodoc


class _Empty implements HomeProcessState {
  const _Empty();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Empty);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeProcessState.empty()';
}


}




/// @nodoc


class _Error implements HomeProcessState {
  const _Error(this.message);
  

 final  String message;

/// Create a copy of HomeProcessState
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
  return 'HomeProcessState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $HomeProcessStateCopyWith<$Res> {
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

/// Create a copy of HomeProcessState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
