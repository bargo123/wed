// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserInfoModel _$UserInfoModelFromJson(Map<String, dynamic> json) =>
    _UserInfoModel(
      name: json['name'] as String,
      mainImage: json['mainImage'] as String,
      age: json['age'] as String,
      id: json['id'] as String,
      avatar: json['avatar'] as String,
    );

Map<String, dynamic> _$UserInfoModelToJson(_UserInfoModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'mainImage': instance.mainImage,
      'age': instance.age,
      'id': instance.id,
      'avatar': instance.avatar,
    };
