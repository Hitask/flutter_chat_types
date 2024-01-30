// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partial_file.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PartialFile _$PartialFileFromJson(Map<String, dynamic> json) => PartialFile(
      metadata: json['metadata'] as Map<String, dynamic>?,
      mimeType: json['mime_type'] as String?,
      name: json['name'] as String,
      repliedMessage: json['replied_message'] == null
          ? null
          : Message.fromJson(json['replied_message'] as Map<String, dynamic>),
      size: json['size'] as num,
      uri: json['uri'] as String,
    );

Map<String, dynamic> _$PartialFileToJson(PartialFile instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('metadata', instance.metadata);
  writeNotNull('mime_type', instance.mimeType);
  val['name'] = instance.name;
  writeNotNull('replied_message', instance.repliedMessage?.toJson());
  val['size'] = instance.size;
  val['uri'] = instance.uri;
  return val;
}
