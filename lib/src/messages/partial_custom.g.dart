// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partial_custom.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PartialCustom _$PartialCustomFromJson(Map<String, dynamic> json) =>
    PartialCustom(
      metadata: json['metadata'] as Map<String, dynamic>?,
      repliedMessage: json['replied_message'] == null
          ? null
          : Message.fromJson(json['replied_message'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PartialCustomToJson(PartialCustom instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('metadata', instance.metadata);
  writeNotNull('replied_message', instance.repliedMessage?.toJson());
  return val;
}
