// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserInfoModel {

 String get name; String get mainImage; String get age; String get id; String get avatar;
/// Create a copy of UserInfoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserInfoModelCopyWith<UserInfoModel> get copyWith => _$UserInfoModelCopyWithImpl<UserInfoModel>(this as UserInfoModel, _$identity);

  /// Serializes this UserInfoModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserInfoModel&&(identical(other.name, name) || other.name == name)&&(identical(other.mainImage, mainImage) || other.mainImage == mainImage)&&(identical(other.age, age) || other.age == age)&&(identical(other.id, id) || other.id == id)&&(identical(other.avatar, avatar) || other.avatar == avatar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,mainImage,age,id,avatar);

@override
String toString() {
  return 'UserInfoModel(name: $name, mainImage: $mainImage, age: $age, id: $id, avatar: $avatar)';
}


}

/// @nodoc
abstract mixin class $UserInfoModelCopyWith<$Res>  {
  factory $UserInfoModelCopyWith(UserInfoModel value, $Res Function(UserInfoModel) _then) = _$UserInfoModelCopyWithImpl;
@useResult
$Res call({
 String name, String mainImage, String age, String id, String avatar
});




}
/// @nodoc
class _$UserInfoModelCopyWithImpl<$Res>
    implements $UserInfoModelCopyWith<$Res> {
  _$UserInfoModelCopyWithImpl(this._self, this._then);

  final UserInfoModel _self;
  final $Res Function(UserInfoModel) _then;

/// Create a copy of UserInfoModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? mainImage = null,Object? age = null,Object? id = null,Object? avatar = null,}) {
  return _then(_self.copyWith(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,mainImage: null == mainImage ? _self.mainImage : mainImage // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,avatar: null == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UserInfoModel].
extension UserInfoModelPatterns on UserInfoModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UserInfoModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UserInfoModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UserInfoModel value)  $default,){
final _that = this;
switch (_that) {
case _UserInfoModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UserInfoModel value)?  $default,){
final _that = this;
switch (_that) {
case _UserInfoModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String mainImage,  String age,  String id,  String avatar)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UserInfoModel() when $default != null:
return $default(_that.name,_that.mainImage,_that.age,_that.id,_that.avatar);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String mainImage,  String age,  String id,  String avatar)  $default,) {final _that = this;
switch (_that) {
case _UserInfoModel():
return $default(_that.name,_that.mainImage,_that.age,_that.id,_that.avatar);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String mainImage,  String age,  String id,  String avatar)?  $default,) {final _that = this;
switch (_that) {
case _UserInfoModel() when $default != null:
return $default(_that.name,_that.mainImage,_that.age,_that.id,_that.avatar);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UserInfoModel implements UserInfoModel {
   _UserInfoModel({required this.name, required this.mainImage, required this.age, required this.id, required this.avatar});
  factory _UserInfoModel.fromJson(Map<String, dynamic> json) => _$UserInfoModelFromJson(json);

@override final  String name;
@override final  String mainImage;
@override final  String age;
@override final  String id;
@override final  String avatar;

/// Create a copy of UserInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserInfoModelCopyWith<_UserInfoModel> get copyWith => __$UserInfoModelCopyWithImpl<_UserInfoModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserInfoModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserInfoModel&&(identical(other.name, name) || other.name == name)&&(identical(other.mainImage, mainImage) || other.mainImage == mainImage)&&(identical(other.age, age) || other.age == age)&&(identical(other.id, id) || other.id == id)&&(identical(other.avatar, avatar) || other.avatar == avatar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,mainImage,age,id,avatar);

@override
String toString() {
  return 'UserInfoModel(name: $name, mainImage: $mainImage, age: $age, id: $id, avatar: $avatar)';
}


}

/// @nodoc
abstract mixin class _$UserInfoModelCopyWith<$Res> implements $UserInfoModelCopyWith<$Res> {
  factory _$UserInfoModelCopyWith(_UserInfoModel value, $Res Function(_UserInfoModel) _then) = __$UserInfoModelCopyWithImpl;
@override @useResult
$Res call({
 String name, String mainImage, String age, String id, String avatar
});




}
/// @nodoc
class __$UserInfoModelCopyWithImpl<$Res>
    implements _$UserInfoModelCopyWith<$Res> {
  __$UserInfoModelCopyWithImpl(this._self, this._then);

  final _UserInfoModel _self;
  final $Res Function(_UserInfoModel) _then;

/// Create a copy of UserInfoModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? mainImage = null,Object? age = null,Object? id = null,Object? avatar = null,}) {
  return _then(_UserInfoModel(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,mainImage: null == mainImage ? _self.mainImage : mainImage // ignore: cast_nullable_to_non_nullable
as String,age: null == age ? _self.age : age // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,avatar: null == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
