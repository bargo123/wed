// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileDetailsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileDetailsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileDetailsEvent()';
}


}

/// @nodoc
class $ProfileDetailsEventCopyWith<$Res>  {
$ProfileDetailsEventCopyWith(ProfileDetailsEvent _, $Res Function(ProfileDetailsEvent) __);
}


/// Adds pattern-matching-related methods to [ProfileDetailsEvent].
extension ProfileDetailsEventPatterns on ProfileDetailsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FetchUser value)?  fetchUser,TResult Function( _LikeUser value)?  likeUser,TResult Function( _FetchUserLikeStatus value)?  fetchUserLikeStatus,TResult Function( _EmitUserData value)?  emitUserData,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FetchUser() when fetchUser != null:
return fetchUser(_that);case _LikeUser() when likeUser != null:
return likeUser(_that);case _FetchUserLikeStatus() when fetchUserLikeStatus != null:
return fetchUserLikeStatus(_that);case _EmitUserData() when emitUserData != null:
return emitUserData(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FetchUser value)  fetchUser,required TResult Function( _LikeUser value)  likeUser,required TResult Function( _FetchUserLikeStatus value)  fetchUserLikeStatus,required TResult Function( _EmitUserData value)  emitUserData,}){
final _that = this;
switch (_that) {
case _FetchUser():
return fetchUser(_that);case _LikeUser():
return likeUser(_that);case _FetchUserLikeStatus():
return fetchUserLikeStatus(_that);case _EmitUserData():
return emitUserData(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FetchUser value)?  fetchUser,TResult? Function( _LikeUser value)?  likeUser,TResult? Function( _FetchUserLikeStatus value)?  fetchUserLikeStatus,TResult? Function( _EmitUserData value)?  emitUserData,}){
final _that = this;
switch (_that) {
case _FetchUser() when fetchUser != null:
return fetchUser(_that);case _LikeUser() when likeUser != null:
return likeUser(_that);case _FetchUserLikeStatus() when fetchUserLikeStatus != null:
return fetchUserLikeStatus(_that);case _EmitUserData() when emitUserData != null:
return emitUserData(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String id)?  fetchUser,TResult Function( String id)?  likeUser,TResult Function( String id,  UserDetailsInfoModel userData)?  fetchUserLikeStatus,TResult Function( bool isLiked,  UserDetailsInfoModel userData)?  emitUserData,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FetchUser() when fetchUser != null:
return fetchUser(_that.id);case _LikeUser() when likeUser != null:
return likeUser(_that.id);case _FetchUserLikeStatus() when fetchUserLikeStatus != null:
return fetchUserLikeStatus(_that.id,_that.userData);case _EmitUserData() when emitUserData != null:
return emitUserData(_that.isLiked,_that.userData);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String id)  fetchUser,required TResult Function( String id)  likeUser,required TResult Function( String id,  UserDetailsInfoModel userData)  fetchUserLikeStatus,required TResult Function( bool isLiked,  UserDetailsInfoModel userData)  emitUserData,}) {final _that = this;
switch (_that) {
case _FetchUser():
return fetchUser(_that.id);case _LikeUser():
return likeUser(_that.id);case _FetchUserLikeStatus():
return fetchUserLikeStatus(_that.id,_that.userData);case _EmitUserData():
return emitUserData(_that.isLiked,_that.userData);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String id)?  fetchUser,TResult? Function( String id)?  likeUser,TResult? Function( String id,  UserDetailsInfoModel userData)?  fetchUserLikeStatus,TResult? Function( bool isLiked,  UserDetailsInfoModel userData)?  emitUserData,}) {final _that = this;
switch (_that) {
case _FetchUser() when fetchUser != null:
return fetchUser(_that.id);case _LikeUser() when likeUser != null:
return likeUser(_that.id);case _FetchUserLikeStatus() when fetchUserLikeStatus != null:
return fetchUserLikeStatus(_that.id,_that.userData);case _EmitUserData() when emitUserData != null:
return emitUserData(_that.isLiked,_that.userData);case _:
  return null;

}
}

}

/// @nodoc


class _FetchUser implements ProfileDetailsEvent {
  const _FetchUser(this.id);
  

 final  String id;

/// Create a copy of ProfileDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FetchUserCopyWith<_FetchUser> get copyWith => __$FetchUserCopyWithImpl<_FetchUser>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchUser&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ProfileDetailsEvent.fetchUser(id: $id)';
}


}

/// @nodoc
abstract mixin class _$FetchUserCopyWith<$Res> implements $ProfileDetailsEventCopyWith<$Res> {
  factory _$FetchUserCopyWith(_FetchUser value, $Res Function(_FetchUser) _then) = __$FetchUserCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$FetchUserCopyWithImpl<$Res>
    implements _$FetchUserCopyWith<$Res> {
  __$FetchUserCopyWithImpl(this._self, this._then);

  final _FetchUser _self;
  final $Res Function(_FetchUser) _then;

/// Create a copy of ProfileDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_FetchUser(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _LikeUser implements ProfileDetailsEvent {
  const _LikeUser(this.id);
  

 final  String id;

/// Create a copy of ProfileDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LikeUserCopyWith<_LikeUser> get copyWith => __$LikeUserCopyWithImpl<_LikeUser>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LikeUser&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'ProfileDetailsEvent.likeUser(id: $id)';
}


}

/// @nodoc
abstract mixin class _$LikeUserCopyWith<$Res> implements $ProfileDetailsEventCopyWith<$Res> {
  factory _$LikeUserCopyWith(_LikeUser value, $Res Function(_LikeUser) _then) = __$LikeUserCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class __$LikeUserCopyWithImpl<$Res>
    implements _$LikeUserCopyWith<$Res> {
  __$LikeUserCopyWithImpl(this._self, this._then);

  final _LikeUser _self;
  final $Res Function(_LikeUser) _then;

/// Create a copy of ProfileDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(_LikeUser(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _FetchUserLikeStatus implements ProfileDetailsEvent {
  const _FetchUserLikeStatus(this.id, this.userData);
  

 final  String id;
 final  UserDetailsInfoModel userData;

/// Create a copy of ProfileDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FetchUserLikeStatusCopyWith<_FetchUserLikeStatus> get copyWith => __$FetchUserLikeStatusCopyWithImpl<_FetchUserLikeStatus>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchUserLikeStatus&&(identical(other.id, id) || other.id == id)&&(identical(other.userData, userData) || other.userData == userData));
}


@override
int get hashCode => Object.hash(runtimeType,id,userData);

@override
String toString() {
  return 'ProfileDetailsEvent.fetchUserLikeStatus(id: $id, userData: $userData)';
}


}

/// @nodoc
abstract mixin class _$FetchUserLikeStatusCopyWith<$Res> implements $ProfileDetailsEventCopyWith<$Res> {
  factory _$FetchUserLikeStatusCopyWith(_FetchUserLikeStatus value, $Res Function(_FetchUserLikeStatus) _then) = __$FetchUserLikeStatusCopyWithImpl;
@useResult
$Res call({
 String id, UserDetailsInfoModel userData
});


$UserDetailsInfoModelCopyWith<$Res> get userData;

}
/// @nodoc
class __$FetchUserLikeStatusCopyWithImpl<$Res>
    implements _$FetchUserLikeStatusCopyWith<$Res> {
  __$FetchUserLikeStatusCopyWithImpl(this._self, this._then);

  final _FetchUserLikeStatus _self;
  final $Res Function(_FetchUserLikeStatus) _then;

/// Create a copy of ProfileDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userData = null,}) {
  return _then(_FetchUserLikeStatus(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,null == userData ? _self.userData : userData // ignore: cast_nullable_to_non_nullable
as UserDetailsInfoModel,
  ));
}

/// Create a copy of ProfileDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDetailsInfoModelCopyWith<$Res> get userData {
  
  return $UserDetailsInfoModelCopyWith<$Res>(_self.userData, (value) {
    return _then(_self.copyWith(userData: value));
  });
}
}

/// @nodoc


class _EmitUserData implements ProfileDetailsEvent {
  const _EmitUserData(this.isLiked, this.userData);
  

 final  bool isLiked;
 final  UserDetailsInfoModel userData;

/// Create a copy of ProfileDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EmitUserDataCopyWith<_EmitUserData> get copyWith => __$EmitUserDataCopyWithImpl<_EmitUserData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EmitUserData&&(identical(other.isLiked, isLiked) || other.isLiked == isLiked)&&(identical(other.userData, userData) || other.userData == userData));
}


@override
int get hashCode => Object.hash(runtimeType,isLiked,userData);

@override
String toString() {
  return 'ProfileDetailsEvent.emitUserData(isLiked: $isLiked, userData: $userData)';
}


}

/// @nodoc
abstract mixin class _$EmitUserDataCopyWith<$Res> implements $ProfileDetailsEventCopyWith<$Res> {
  factory _$EmitUserDataCopyWith(_EmitUserData value, $Res Function(_EmitUserData) _then) = __$EmitUserDataCopyWithImpl;
@useResult
$Res call({
 bool isLiked, UserDetailsInfoModel userData
});


$UserDetailsInfoModelCopyWith<$Res> get userData;

}
/// @nodoc
class __$EmitUserDataCopyWithImpl<$Res>
    implements _$EmitUserDataCopyWith<$Res> {
  __$EmitUserDataCopyWithImpl(this._self, this._then);

  final _EmitUserData _self;
  final $Res Function(_EmitUserData) _then;

/// Create a copy of ProfileDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isLiked = null,Object? userData = null,}) {
  return _then(_EmitUserData(
null == isLiked ? _self.isLiked : isLiked // ignore: cast_nullable_to_non_nullable
as bool,null == userData ? _self.userData : userData // ignore: cast_nullable_to_non_nullable
as UserDetailsInfoModel,
  ));
}

/// Create a copy of ProfileDetailsEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDetailsInfoModelCopyWith<$Res> get userData {
  
  return $UserDetailsInfoModelCopyWith<$Res>(_self.userData, (value) {
    return _then(_self.copyWith(userData: value));
  });
}
}

/// @nodoc
mixin _$ProfileDetailsState {

 UserDetailsInfoModel? get user; ProfileDetailsProcessState get processState; bool? get isUserLiked;
/// Create a copy of ProfileDetailsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileDetailsStateCopyWith<ProfileDetailsState> get copyWith => _$ProfileDetailsStateCopyWithImpl<ProfileDetailsState>(this as ProfileDetailsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileDetailsState&&(identical(other.user, user) || other.user == user)&&(identical(other.processState, processState) || other.processState == processState)&&(identical(other.isUserLiked, isUserLiked) || other.isUserLiked == isUserLiked));
}


@override
int get hashCode => Object.hash(runtimeType,user,processState,isUserLiked);

@override
String toString() {
  return 'ProfileDetailsState(user: $user, processState: $processState, isUserLiked: $isUserLiked)';
}


}

/// @nodoc
abstract mixin class $ProfileDetailsStateCopyWith<$Res>  {
  factory $ProfileDetailsStateCopyWith(ProfileDetailsState value, $Res Function(ProfileDetailsState) _then) = _$ProfileDetailsStateCopyWithImpl;
@useResult
$Res call({
 UserDetailsInfoModel? user, ProfileDetailsProcessState processState, bool? isUserLiked
});


$UserDetailsInfoModelCopyWith<$Res>? get user;$ProfileDetailsProcessStateCopyWith<$Res> get processState;

}
/// @nodoc
class _$ProfileDetailsStateCopyWithImpl<$Res>
    implements $ProfileDetailsStateCopyWith<$Res> {
  _$ProfileDetailsStateCopyWithImpl(this._self, this._then);

  final ProfileDetailsState _self;
  final $Res Function(ProfileDetailsState) _then;

/// Create a copy of ProfileDetailsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = freezed,Object? processState = null,Object? isUserLiked = freezed,}) {
  return _then(_self.copyWith(
user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserDetailsInfoModel?,processState: null == processState ? _self.processState : processState // ignore: cast_nullable_to_non_nullable
as ProfileDetailsProcessState,isUserLiked: freezed == isUserLiked ? _self.isUserLiked : isUserLiked // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of ProfileDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDetailsInfoModelCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserDetailsInfoModelCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of ProfileDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileDetailsProcessStateCopyWith<$Res> get processState {
  
  return $ProfileDetailsProcessStateCopyWith<$Res>(_self.processState, (value) {
    return _then(_self.copyWith(processState: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProfileDetailsState].
extension ProfileDetailsStatePatterns on ProfileDetailsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileDetailsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileDetailsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileDetailsState value)  $default,){
final _that = this;
switch (_that) {
case _ProfileDetailsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileDetailsState value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileDetailsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( UserDetailsInfoModel? user,  ProfileDetailsProcessState processState,  bool? isUserLiked)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileDetailsState() when $default != null:
return $default(_that.user,_that.processState,_that.isUserLiked);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( UserDetailsInfoModel? user,  ProfileDetailsProcessState processState,  bool? isUserLiked)  $default,) {final _that = this;
switch (_that) {
case _ProfileDetailsState():
return $default(_that.user,_that.processState,_that.isUserLiked);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( UserDetailsInfoModel? user,  ProfileDetailsProcessState processState,  bool? isUserLiked)?  $default,) {final _that = this;
switch (_that) {
case _ProfileDetailsState() when $default != null:
return $default(_that.user,_that.processState,_that.isUserLiked);case _:
  return null;

}
}

}

/// @nodoc


class _ProfileDetailsState implements ProfileDetailsState {
  const _ProfileDetailsState({this.user, this.processState = const ProfileDetailsProcessState.loading(), this.isUserLiked});
  

@override final  UserDetailsInfoModel? user;
@override@JsonKey() final  ProfileDetailsProcessState processState;
@override final  bool? isUserLiked;

/// Create a copy of ProfileDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileDetailsStateCopyWith<_ProfileDetailsState> get copyWith => __$ProfileDetailsStateCopyWithImpl<_ProfileDetailsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileDetailsState&&(identical(other.user, user) || other.user == user)&&(identical(other.processState, processState) || other.processState == processState)&&(identical(other.isUserLiked, isUserLiked) || other.isUserLiked == isUserLiked));
}


@override
int get hashCode => Object.hash(runtimeType,user,processState,isUserLiked);

@override
String toString() {
  return 'ProfileDetailsState(user: $user, processState: $processState, isUserLiked: $isUserLiked)';
}


}

/// @nodoc
abstract mixin class _$ProfileDetailsStateCopyWith<$Res> implements $ProfileDetailsStateCopyWith<$Res> {
  factory _$ProfileDetailsStateCopyWith(_ProfileDetailsState value, $Res Function(_ProfileDetailsState) _then) = __$ProfileDetailsStateCopyWithImpl;
@override @useResult
$Res call({
 UserDetailsInfoModel? user, ProfileDetailsProcessState processState, bool? isUserLiked
});


@override $UserDetailsInfoModelCopyWith<$Res>? get user;@override $ProfileDetailsProcessStateCopyWith<$Res> get processState;

}
/// @nodoc
class __$ProfileDetailsStateCopyWithImpl<$Res>
    implements _$ProfileDetailsStateCopyWith<$Res> {
  __$ProfileDetailsStateCopyWithImpl(this._self, this._then);

  final _ProfileDetailsState _self;
  final $Res Function(_ProfileDetailsState) _then;

/// Create a copy of ProfileDetailsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = freezed,Object? processState = null,Object? isUserLiked = freezed,}) {
  return _then(_ProfileDetailsState(
user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserDetailsInfoModel?,processState: null == processState ? _self.processState : processState // ignore: cast_nullable_to_non_nullable
as ProfileDetailsProcessState,isUserLiked: freezed == isUserLiked ? _self.isUserLiked : isUserLiked // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of ProfileDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserDetailsInfoModelCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserDetailsInfoModelCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}/// Create a copy of ProfileDetailsState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileDetailsProcessStateCopyWith<$Res> get processState {
  
  return $ProfileDetailsProcessStateCopyWith<$Res>(_self.processState, (value) {
    return _then(_self.copyWith(processState: value));
  });
}
}

/// @nodoc
mixin _$ProfileDetailsProcessState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileDetailsProcessState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileDetailsProcessState()';
}


}

/// @nodoc
class $ProfileDetailsProcessStateCopyWith<$Res>  {
$ProfileDetailsProcessStateCopyWith(ProfileDetailsProcessState _, $Res Function(ProfileDetailsProcessState) __);
}


/// Adds pattern-matching-related methods to [ProfileDetailsProcessState].
extension ProfileDetailsProcessStatePatterns on ProfileDetailsProcessState {
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


class _Loading implements ProfileDetailsProcessState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileDetailsProcessState.loading()';
}


}




/// @nodoc


class _Success implements ProfileDetailsProcessState {
  const _Success();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Success);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileDetailsProcessState.success()';
}


}




/// @nodoc


class _Error implements ProfileDetailsProcessState {
  const _Error(this.message);
  

 final  String message;

/// Create a copy of ProfileDetailsProcessState
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
  return 'ProfileDetailsProcessState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $ProfileDetailsProcessStateCopyWith<$Res> {
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

/// Create a copy of ProfileDetailsProcessState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
