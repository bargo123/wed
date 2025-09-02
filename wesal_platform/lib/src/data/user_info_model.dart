import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_info_model.freezed.dart';
part 'user_info_model.g.dart';

@freezed
sealed class UserInfoModel with _$UserInfoModel {
  factory UserInfoModel({
    required String name,
    required String mainImage,
    required String age,
    required String id,
    required String avatar,
  }) = _UserInfoModel;

  factory UserInfoModel.fromJson(Map<String, dynamic> json) =>
      _$UserInfoModelFromJson(json);
}
